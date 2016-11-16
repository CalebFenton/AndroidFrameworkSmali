.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$1;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field static final FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field static final sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundFadeDurationMillis:J

.field mBackgroundFallbackResource:I

.field mBackgroundResource:I

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClipToOutline:Z

.field private mClosingActionMenu:Z

.field mContentParent:Landroid/view/ViewGroup;

.field private mContentParentExplicitlySet:Z

.field private mContentScene:Landroid/transition/Scene;

.field mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

.field mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

.field private mDecor:Lcom/android/internal/policy/DecorView;

.field private mDecorCaptionShade:I

.field mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field private mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mForceDecorInstall:Z

.field private mForcedNavigationBarColor:Z

.field private mForcedStatusBarColor:Z

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field mIconRes:I

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field mIsFloating:Z

.field private mIsStartingWindow:Z

.field private mIsTranslucent:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field private mLoadElevation:Z

.field mLogoRes:I

.field private mMediaController:Landroid/media/session/MediaController;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field mNavigationBarColor:I

.field mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private mReenterTransition:Landroid/transition/Transition;

.field mResourcesSetFlags:I

.field private mReturnTransition:Landroid/transition/Transition;

.field private mRightIconView:Landroid/widget/ImageView;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementExitTransition:Landroid/transition/Transition;

.field private mSharedElementReenterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field private mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field mStatusBarColor:I

.field private mSupportsPictureInPicture:Z

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTextColor:I

.field private mTheme:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTransitionManager:Landroid/transition/TransitionManager;

.field private mUiOptions:I

.field private mUseDecorContext:Z

.field private mVolumeControlStreamType:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/policy/PhoneWindow;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/policy/PhoneWindow;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 127
    new-instance v0, Landroid/transition/TransitionSet;

    #@2
    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@7
    .line 295
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    #@9
    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    #@c
    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    #@e
    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 298
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    #@5
    .line 133
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    #@7
    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    #@a
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    #@c
    .line 135
    new-instance v0, Landroid/util/TypedValue;

    #@e
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    #@13
    .line 136
    new-instance v0, Landroid/util/TypedValue;

    #@15
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    #@1a
    .line 147
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    #@1c
    .line 154
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    #@1e
    .line 219
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@20
    .line 220
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@22
    .line 224
    const/4 v0, 0x1

    #@23
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    #@25
    .line 230
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    #@27
    .line 232
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    #@29
    .line 233
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    #@2b
    .line 234
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    #@2d
    .line 235
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    #@2f
    .line 236
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    #@31
    .line 238
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@33
    .line 240
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    #@35
    .line 242
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    #@37
    .line 248
    const/high16 v0, -0x80000000

    #@39
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    #@3b
    .line 254
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    #@3d
    .line 258
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$1;

    #@3f
    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    #@42
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@44
    .line 270
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    #@46
    .line 271
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@48
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    #@4a
    .line 272
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    #@4c
    .line 273
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4e
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    #@50
    .line 274
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@52
    .line 275
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@54
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@56
    .line 276
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    #@58
    .line 277
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@5a
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@5c
    .line 280
    const-wide/16 v0, -0x1

    #@5e
    iput-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    #@60
    .line 284
    const/4 v0, -0x1

    #@61
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    #@63
    .line 286
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    #@65
    .line 288
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    #@67
    .line 299
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@6a
    move-result-object v0

    #@6b
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@6d
    .line 297
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preservedWindow"    # Landroid/view/Window;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 306
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    #@5
    .line 309
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    #@7
    .line 310
    if-eqz p2, :cond_0

    #@9
    .line 311
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/internal/policy/DecorView;

    #@f
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@11
    .line 312
    invoke-virtual {p2}, Landroid/view/Window;->getElevation()F

    #@14
    move-result v1

    #@15
    iput v1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    #@17
    .line 313
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    #@19
    .line 314
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    #@1b
    .line 318
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@22
    move-result-object v3

    #@23
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@25
    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@27
    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2a
    move-result-object v1

    #@2b
    .line 323
    const-string/jumbo v3, "force_resizable_activities"

    #@2e
    .line 322
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_1

    #@34
    move v0, v2

    #@35
    .line 324
    .local v0, "forceResizable":Z
    :cond_1
    if-nez v0, :cond_2

    #@37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3a
    move-result-object v1

    #@3b
    .line 325
    const-string/jumbo v2, "android.software.picture_in_picture"

    #@3e
    .line 324
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@41
    move-result v1

    #@42
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    #@44
    .line 305
    return-void

    #@45
    :cond_2
    move v1, v2

    #@46
    .line 324
    goto :goto_0
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 3036
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@3
    move-result-object v0

    #@4
    .line 3037
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_0

    #@6
    .line 3038
    return-void

    #@7
    .line 3041
    :cond_0
    if-nez p3, :cond_2

    #@9
    .line 3043
    if-nez p2, :cond_1

    #@b
    .line 3044
    if-ltz p1, :cond_1

    #@d
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@f
    array-length v1, v1

    #@10
    if-ge p1, v1, :cond_1

    #@12
    .line 3045
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@14
    aget-object p2, v1, p1

    #@16
    .line 3049
    :cond_1
    if-eqz p2, :cond_2

    #@18
    .line 3051
    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1a
    .line 3056
    :cond_2
    if-eqz p2, :cond_3

    #@1c
    iget-boolean v1, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@1e
    if-eqz v1, :cond_5

    #@20
    .line 3059
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_4

    #@26
    .line 3060
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@29
    .line 3035
    :cond_4
    return-void

    #@2a
    .line 3057
    :cond_5
    return-void
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .locals 1
    .param p0, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@0
    .prologue
    .line 730
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@3
    .line 733
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@6
    .line 735
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    #@9
    .line 725
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1125
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1126
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    #@a
    .line 1127
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 1124
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1136
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@4
    .line 1138
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1139
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    #@a
    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    #@d
    .line 1140
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit p0

    #@11
    .line 1135
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    #@0
    .prologue
    .line 2946
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2947
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    #@6
    return-object v0

    #@7
    .line 2949
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@9
    if-nez v0, :cond_1

    #@b
    if-eqz p1, :cond_1

    #@d
    .line 2950
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@10
    .line 2952
    :cond_1
    const v0, 0x10203f2

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/widget/ProgressBar;

    #@19
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    #@1b
    .line 2953
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 2954
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    #@21
    const/4 v1, 0x4

    #@22
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@25
    .line 2956
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    #@27
    return-object v0
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 2778
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    #@5
    move-result v3

    #@6
    const/4 v4, 0x1

    #@7
    shl-int/2addr v4, p1

    #@8
    and-int/2addr v3, v4

    #@9
    if-nez v3, :cond_1

    #@b
    .line 2779
    if-nez p2, :cond_0

    #@d
    .line 2780
    return-object v5

    #@e
    .line 2782
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v4, "The feature has not been requested"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 2786
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@19
    .local v0, "ar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_2

    #@1b
    array-length v3, v0

    #@1c
    if-gt v3, p1, :cond_4

    #@1e
    .line 2787
    :cond_2
    add-int/lit8 v3, p1, 0x1

    #@20
    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@22
    .line 2788
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_3

    #@24
    .line 2789
    array-length v3, v0

    #@25
    invoke-static {v0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 2791
    :cond_3
    move-object v0, v1

    #@29
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@2b
    .line 2794
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_4
    aget-object v2, v0, p1

    #@2d
    .line 2795
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_5

    #@2f
    .line 2796
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@31
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    #@34
    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    aput-object v2, v0, p1

    #@36
    .line 2798
    :cond_5
    return-object v2
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    #@0
    .prologue
    .line 2960
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2961
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@6
    return-object v0

    #@7
    .line 2963
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@9
    if-nez v0, :cond_1

    #@b
    if-eqz p1, :cond_1

    #@d
    .line 2964
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@10
    .line 2966
    :cond_1
    const v0, 0x10203f3

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/widget/ProgressBar;

    #@19
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@1b
    .line 2967
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 2968
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@21
    const/4 v1, 0x4

    #@22
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@25
    .line 2970
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@27
    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    #@0
    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1919
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    .line 1920
    const-string/jumbo v1, "keyguard"

    #@b
    .line 1919
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/app/KeyguardManager;

    #@11
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@13
    .line 1922
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@15
    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    #@0
    .prologue
    .line 2928
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2929
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    #@6
    return-object v0

    #@7
    .line 2931
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 2932
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@e
    .line 2934
    :cond_1
    const v0, 0x1020042

    #@11
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/widget/ImageView;

    #@17
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    #@19
    return-object v0
.end method

.method private getOptionsPanelGravity()I
    .locals 3

    #@0
    .prologue
    .line 1359
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    #@2
    invoke-interface {v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1360
    :catch_0
    move-exception v0

    #@8
    .line 1361
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneWindow"

    #@b
    const-string/jumbo v2, "Couldn\'t getOptionsPanelGravity; using default"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 1362
    const/16 v1, 0x51

    #@13
    return v1
.end method

.method private getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 2825
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    #@5
    move-result v3

    #@6
    const/4 v4, 0x1

    #@7
    shl-int/2addr v4, p1

    #@8
    and-int/2addr v3, v4

    #@9
    if-nez v3, :cond_1

    #@b
    .line 2826
    if-nez p2, :cond_0

    #@d
    .line 2827
    return-object v5

    #@e
    .line 2829
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v4, "The feature has not been requested"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 2833
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@19
    .local v0, "ar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_2

    #@1b
    array-length v3, v0

    #@1c
    if-gt v3, p1, :cond_4

    #@1e
    .line 2834
    :cond_2
    add-int/lit8 v3, p1, 0x1

    #@20
    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@22
    .line 2835
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    #@24
    .line 2836
    array-length v3, v0

    #@25
    invoke-static {v0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 2838
    :cond_3
    move-object v0, v1

    #@29
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@2b
    .line 2841
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    aget-object v2, v0, p1

    #@2d
    .line 2842
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_5

    #@2f
    .line 2843
    if-eqz p3, :cond_6

    #@31
    move-object v2, p3

    #@32
    :goto_0
    aput-object v2, v0, p1

    #@34
    .line 2847
    :cond_5
    return-object v2

    #@35
    .line 2845
    :cond_6
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@37
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;-><init>(I)V

    #@3a
    goto :goto_0
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .locals 1

    #@0
    .prologue
    .line 2974
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2975
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    #@6
    return-object v0

    #@7
    .line 2977
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 2978
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@e
    .line 2980
    :cond_1
    const v0, 0x1020044

    #@11
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/widget/ImageView;

    #@17
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    #@19
    return-object v0
.end method

.method private getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 5
    .param p1, "currentValue"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;
    .param p3, "id"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2751
    if-eq p1, p2, :cond_0

    #@3
    .line 2752
    return-object p1

    #@4
    .line 2754
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@b
    move-result v2

    #@c
    .line 2755
    .local v2, "transitionId":I
    move-object v1, p2

    #@d
    .line 2756
    .local v1, "transition":Landroid/transition/Transition;
    if-eq v2, v4, :cond_1

    #@f
    const/high16 v3, 0x10f0000

    #@11
    if-eq v2, v3, :cond_1

    #@13
    .line 2757
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@16
    move-result-object v3

    #@17
    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    #@1a
    move-result-object v0

    #@1b
    .line 2758
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    #@1e
    move-result-object v1

    #@1f
    .line 2759
    instance-of v3, v1, Landroid/transition/TransitionSet;

    #@21
    if-eqz v3, :cond_1

    #@23
    move-object v3, v1

    #@24
    .line 2760
    check-cast v3, Landroid/transition/TransitionSet;

    #@26
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_1

    #@2c
    .line 2761
    const/4 v1, 0x0

    #@2d
    .line 2764
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "transition":Landroid/transition/Transition;
    :cond_1
    return-object v1
.end method

.method private getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 3

    #@0
    .prologue
    .line 1777
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1778
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@9
    move-result-object v0

    #@a
    .line 1779
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@c
    .line 1780
    return-object v0

    #@d
    .line 1783
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #@f
    const-string/jumbo v2, "view not added"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 5
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    .line 1700
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@4
    move-result v1

    #@5
    .line 1701
    .local v1, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@8
    move-result-object v2

    #@9
    const v3, 0x10a0001

    #@c
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@f
    move-result-object v0

    #@10
    .line 1702
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    #@12
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@15
    .line 1703
    and-int/lit8 v2, v1, 0x20

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 1704
    if-eqz p2, :cond_0

    #@1b
    .line 1705
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_0

    #@21
    .line 1706
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    #@24
    .line 1707
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@27
    .line 1709
    :cond_0
    and-int/lit8 v2, v1, 0x4

    #@29
    if-eqz v2, :cond_1

    #@2b
    if-eqz p1, :cond_1

    #@2d
    .line 1710
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_1

    #@33
    .line 1711
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    #@36
    .line 1712
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@39
    .line 1699
    :cond_1
    return-void
.end method

.method private installDecor()V
    .locals 14

    #@0
    .prologue
    const/16 v13, 0xd

    #@2
    const/16 v11, 0x8

    #@4
    const/4 v12, 0x1

    #@5
    const/4 v9, 0x0

    #@6
    const/4 v10, 0x0

    #@7
    .line 2615
    iput-boolean v9, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    #@9
    .line 2616
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@b
    if-nez v7, :cond_3

    #@d
    .line 2617
    const/4 v7, -0x1

    #@e
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    #@11
    move-result-object v7

    #@12
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@14
    .line 2618
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@16
    const/high16 v8, 0x40000

    #@18
    invoke-virtual {v7, v8}, Lcom/android/internal/policy/DecorView;->setDescendantFocusability(I)V

    #@1b
    .line 2619
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@1d
    invoke-virtual {v7, v12}, Lcom/android/internal/policy/DecorView;->setIsRootNamespace(Z)V

    #@20
    .line 2620
    iget-boolean v7, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@22
    if-nez v7, :cond_0

    #@24
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@26
    if-eqz v7, :cond_0

    #@28
    .line 2621
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2a
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@2c
    invoke-virtual {v7, v8}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@2f
    .line 2626
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@31
    if-nez v7, :cond_f

    #@33
    .line 2627
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@35
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;

    #@38
    move-result-object v7

    #@39
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@3b
    .line 2630
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@3d
    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->makeOptionalFitsSystemWindows()V

    #@40
    .line 2632
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@42
    .line 2633
    const v8, 0x10203f4

    #@45
    .line 2632
    invoke-virtual {v7, v8}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Lcom/android/internal/widget/DecorContentParent;

    #@4b
    .line 2635
    .local v0, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    if-eqz v0, :cond_14

    #@4d
    .line 2636
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@4f
    .line 2637
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@51
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@54
    move-result-object v8

    #@55
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    #@58
    .line 2638
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@5a
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    #@5d
    move-result-object v7

    #@5e
    if-nez v7, :cond_1

    #@60
    .line 2639
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@62
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@64
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@67
    .line 2642
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@6a
    move-result v3

    #@6b
    .line 2643
    .local v3, "localFeatures":I
    const/4 v1, 0x0

    #@6c
    .local v1, "i":I
    :goto_1
    if-ge v1, v13, :cond_4

    #@6e
    .line 2644
    shl-int v7, v12, v1

    #@70
    and-int/2addr v7, v3

    #@71
    if-eqz v7, :cond_2

    #@73
    .line 2645
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@75
    invoke-interface {v7, v1}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    #@78
    .line 2643
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@7a
    goto :goto_1

    #@7b
    .line 2624
    .end local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .end local v1    # "i":I
    .end local v3    # "localFeatures":I
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@7d
    invoke-virtual {v7, p0}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    #@80
    goto :goto_0

    #@81
    .line 2649
    .restart local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .restart local v1    # "i":I
    .restart local v3    # "localFeatures":I
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@83
    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    #@85
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    #@88
    .line 2651
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@8a
    and-int/lit8 v7, v7, 0x1

    #@8c
    if-nez v7, :cond_10

    #@8e
    .line 2652
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    #@90
    if-eqz v7, :cond_5

    #@92
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@94
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    #@97
    move-result v7

    #@98
    if-eqz v7, :cond_10

    #@9a
    .line 2654
    :cond_5
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@9c
    and-int/lit8 v7, v7, 0x1

    #@9e
    if-nez v7, :cond_6

    #@a0
    .line 2655
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    #@a2
    if-nez v7, :cond_6

    #@a4
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@a6
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    #@a9
    move-result v7

    #@aa
    if-eqz v7, :cond_11

    #@ac
    .line 2660
    :cond_6
    :goto_2
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@ae
    and-int/lit8 v7, v7, 0x2

    #@b0
    if-nez v7, :cond_12

    #@b2
    .line 2661
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    #@b4
    if-eqz v7, :cond_7

    #@b6
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@b8
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    #@bb
    move-result v7

    #@bc
    if-eqz v7, :cond_12

    #@be
    .line 2670
    :cond_7
    :goto_3
    invoke-virtual {p0, v9, v9}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@c1
    move-result-object v4

    #@c2
    .line 2671
    .local v4, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@c5
    move-result v7

    #@c6
    if-nez v7, :cond_9

    #@c8
    if-eqz v4, :cond_8

    #@ca
    iget-object v7, v4, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@cc
    if-nez v7, :cond_9

    #@ce
    :cond_8
    iget-boolean v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    #@d0
    if-eqz v7, :cond_13

    #@d2
    .line 2691
    .end local v1    # "i":I
    .end local v3    # "localFeatures":I
    .end local v4    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_9
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@d4
    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@d7
    move-result-object v7

    #@d8
    if-nez v7, :cond_a

    #@da
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@dc
    if-eqz v7, :cond_a

    #@de
    .line 2692
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@e0
    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@e2
    invoke-virtual {v7, v8}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(I)V

    #@e5
    .line 2697
    :cond_a
    invoke-virtual {p0, v13}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@e8
    move-result v7

    #@e9
    if-eqz v7, :cond_f

    #@eb
    .line 2698
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    #@ed
    if-nez v7, :cond_b

    #@ef
    .line 2699
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@f2
    move-result-object v7

    #@f3
    .line 2700
    const/16 v8, 0x1b

    #@f5
    .line 2699
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@f8
    move-result v6

    #@f9
    .line 2702
    .local v6, "transitionRes":I
    if-eqz v6, :cond_17

    #@fb
    .line 2703
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@fe
    move-result-object v7

    #@ff
    invoke-static {v7}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    #@102
    move-result-object v2

    #@103
    .line 2705
    .local v2, "inflater":Landroid/transition/TransitionInflater;
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@105
    .line 2704
    invoke-virtual {v2, v6, v7}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    #@108
    move-result-object v7

    #@109
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    #@10b
    .line 2711
    .end local v2    # "inflater":Landroid/transition/TransitionInflater;
    .end local v6    # "transitionRes":I
    :cond_b
    :goto_5
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    #@10d
    .line 2712
    const/16 v8, 0x1c

    #@10f
    .line 2711
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@112
    move-result-object v7

    #@113
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    #@115
    .line 2713
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    #@117
    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@119
    .line 2714
    const/16 v9, 0x28

    #@11b
    .line 2713
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@11e
    move-result-object v7

    #@11f
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    #@121
    .line 2715
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    #@123
    .line 2716
    const/16 v8, 0x1d

    #@125
    .line 2715
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@128
    move-result-object v7

    #@129
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    #@12b
    .line 2717
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    #@12d
    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@12f
    .line 2718
    const/16 v9, 0x29

    #@131
    .line 2717
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@134
    move-result-object v7

    #@135
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    #@137
    .line 2719
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@139
    .line 2720
    const/16 v8, 0x1e

    #@13b
    .line 2719
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@13e
    move-result-object v7

    #@13f
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@141
    .line 2721
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@143
    .line 2722
    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@145
    .line 2723
    const/16 v9, 0x2a

    #@147
    .line 2721
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@14a
    move-result-object v7

    #@14b
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@14d
    .line 2724
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    #@14f
    .line 2725
    const/16 v8, 0x1f

    #@151
    .line 2724
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@154
    move-result-object v7

    #@155
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    #@157
    .line 2726
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@159
    .line 2727
    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@15b
    .line 2728
    const/16 v9, 0x2b

    #@15d
    .line 2726
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@160
    move-result-object v7

    #@161
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@163
    .line 2729
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@165
    if-nez v7, :cond_c

    #@167
    .line 2730
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@16a
    move-result-object v7

    #@16b
    .line 2731
    const/16 v8, 0x21

    #@16d
    .line 2730
    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@170
    move-result v7

    #@171
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@174
    move-result-object v7

    #@175
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@177
    .line 2733
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@179
    if-nez v7, :cond_d

    #@17b
    .line 2734
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@17e
    move-result-object v7

    #@17f
    .line 2735
    const/16 v8, 0x20

    #@181
    .line 2734
    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@184
    move-result v7

    #@185
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@188
    move-result-object v7

    #@189
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@18b
    .line 2737
    :cond_d
    iget-wide v8, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    #@18d
    const-wide/16 v10, 0x0

    #@18f
    cmp-long v7, v8, v10

    #@191
    if-gez v7, :cond_e

    #@193
    .line 2738
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@196
    move-result-object v7

    #@197
    .line 2739
    const/16 v8, 0x25

    #@199
    .line 2740
    const/16 v9, 0x12c

    #@19b
    .line 2738
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@19e
    move-result v7

    #@19f
    int-to-long v8, v7

    #@1a0
    iput-wide v8, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    #@1a2
    .line 2742
    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    #@1a4
    if-nez v7, :cond_f

    #@1a6
    .line 2743
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@1a9
    move-result-object v7

    #@1aa
    .line 2744
    const/16 v8, 0x2c

    #@1ac
    .line 2743
    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1af
    move-result v7

    #@1b0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1b3
    move-result-object v7

    #@1b4
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    #@1b6
    .line 2614
    .end local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_f
    return-void

    #@1b7
    .line 2653
    .restart local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .restart local v1    # "i":I
    .restart local v3    # "localFeatures":I
    :cond_10
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@1b9
    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    #@1bb
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    #@1be
    goto/16 :goto_2

    #@1c0
    .line 2656
    :cond_11
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@1c2
    .line 2657
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@1c5
    move-result-object v8

    #@1c6
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1c9
    move-result-object v8

    #@1ca
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    #@1cd
    move-result-object v8

    #@1ce
    .line 2656
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@1d1
    .line 2658
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@1d3
    or-int/lit8 v7, v7, 0x4

    #@1d5
    iput v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@1d7
    goto/16 :goto_2

    #@1d9
    .line 2662
    :cond_12
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@1db
    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    #@1dd
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    #@1e0
    goto/16 :goto_3

    #@1e2
    .line 2672
    .restart local v4    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_13
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    #@1e5
    goto/16 :goto_4

    #@1e7
    .line 2675
    .end local v1    # "i":I
    .end local v3    # "localFeatures":I
    .end local v4    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_14
    const v7, 0x1020016

    #@1ea
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@1ed
    move-result-object v7

    #@1ee
    check-cast v7, Landroid/widget/TextView;

    #@1f0
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@1f2
    .line 2676
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@1f4
    if-eqz v7, :cond_9

    #@1f6
    .line 2677
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@1f9
    move-result v7

    #@1fa
    and-int/lit8 v7, v7, 0x2

    #@1fc
    if-eqz v7, :cond_16

    #@1fe
    .line 2678
    const v7, 0x1020045

    #@201
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@204
    move-result-object v5

    #@205
    .line 2679
    .local v5, "titleContainer":Landroid/view/View;
    if-eqz v5, :cond_15

    #@207
    .line 2680
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    #@20a
    .line 2684
    :goto_6
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@20c
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@20f
    goto/16 :goto_4

    #@211
    .line 2682
    :cond_15
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@213
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    #@216
    goto :goto_6

    #@217
    .line 2686
    .end local v5    # "titleContainer":Landroid/view/View;
    :cond_16
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@219
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@21b
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@21e
    goto/16 :goto_4

    #@220
    .line 2707
    .restart local v6    # "transitionRes":I
    :cond_17
    new-instance v7, Landroid/transition/TransitionManager;

    #@222
    invoke-direct {v7}, Landroid/transition/TransitionManager;-><init>()V

    #@225
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    #@227
    goto/16 :goto_5
.end method

.method private launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 3072
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@4
    move-result-object v1

    #@5
    .line 3073
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_1

    #@d
    .line 3074
    :cond_0
    const/4 v4, 0x0

    #@e
    .line 3090
    :goto_0
    if-nez v4, :cond_3

    #@10
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@1b
    move-result-object v6

    #@1c
    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    #@1e
    and-int/lit8 v6, v6, 0xf

    #@20
    .line 3091
    const/4 v7, 0x4

    #@21
    .line 3090
    if-ne v6, v7, :cond_3

    #@23
    .line 3093
    new-instance v0, Landroid/os/Bundle;

    #@25
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@28
    .line 3094
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    #@2b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    #@2e
    move-result v7

    #@2f
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@32
    .line 3095
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@35
    move-result-object v6

    #@36
    const-string/jumbo v7, "search"

    #@39
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3c
    move-result-object v6

    #@3d
    check-cast v6, Landroid/app/SearchManager;

    #@3f
    .line 3096
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@42
    move-result v7

    #@43
    .line 3095
    invoke-virtual {v6, v9, v7, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@46
    move-result v6

    #@47
    return v6

    #@48
    .line 3076
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v6, "search"

    #@4b
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@4e
    .line 3077
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    #@51
    move-result v2

    #@52
    .line 3078
    .local v2, "deviceId":I
    const/4 v5, 0x0

    #@53
    .line 3079
    .local v5, "searchEvent":Landroid/view/SearchEvent;
    if-eqz v2, :cond_2

    #@55
    .line 3080
    new-instance v5, Landroid/view/SearchEvent;

    #@57
    .end local v5    # "searchEvent":Landroid/view/SearchEvent;
    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    #@5a
    move-result-object v6

    #@5b
    invoke-direct {v5, v6}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    #@5e
    .line 3083
    :cond_2
    :try_start_0
    invoke-interface {v1, v5}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    move-result v4

    #@62
    .local v4, "result":Z
    goto :goto_0

    #@63
    .line 3084
    .end local v4    # "result":Z
    :catch_0
    move-exception v3

    #@64
    .line 3085
    .local v3, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v6, "PhoneWindow"

    #@67
    new-instance v7, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v8, "WindowCallback "

    #@6f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@76
    move-result-object v8

    #@77
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7a
    move-result-object v8

    #@7b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v7

    #@7f
    const-string/jumbo v8, " does not implement"

    #@82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    .line 3086
    const-string/jumbo v8, " method onSearchRequested(SearchEvent); fa"

    #@89
    .line 3085
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v7

    #@91
    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@94
    .line 3087
    invoke-interface {v1}, Landroid/view/Window$Callback;->onSearchRequested()Z

    #@97
    move-result v4

    #@98
    .restart local v4    # "result":Z
    goto/16 :goto_0

    #@9a
    .line 3098
    .end local v2    # "deviceId":I
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    .end local v4    # "result":Z
    :cond_3
    return v4
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2770
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x0

    #@e
    .line 2769
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 2771
    :catch_0
    move-exception v0

    #@14
    .line 2772
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PhoneWindow"

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Unable to open content: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 2774
    return-object v4
.end method

.method private openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 753
    move-object/from16 v0, p1

    #@2
    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@4
    if-nez v4, :cond_0

    #@6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 754
    :cond_0
    return-void

    #@d
    .line 759
    :cond_1
    move-object/from16 v0, p1

    #@f
    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@11
    if-nez v4, :cond_4

    #@13
    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@16
    move-result-object v13

    #@17
    .line 761
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@1e
    move-result-object v12

    #@1f
    .line 762
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    #@21
    and-int/lit8 v4, v4, 0xf

    #@23
    .line 763
    const/4 v5, 0x4

    #@24
    .line 762
    if-ne v4, v5, :cond_2

    #@26
    const/4 v15, 0x1

    #@27
    .line 764
    .local v15, "isXLarge":Z
    :goto_0
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2a
    move-result-object v4

    #@2b
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2d
    .line 765
    const/16 v5, 0xb

    #@2f
    .line 764
    if-lt v4, v5, :cond_3

    #@31
    const/4 v14, 0x1

    #@32
    .line 767
    .local v14, "isHoneycombApp":Z
    :goto_1
    if-eqz v15, :cond_4

    #@34
    if-eqz v14, :cond_4

    #@36
    .line 768
    return-void

    #@37
    .line 762
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_2
    const/4 v15, 0x0

    #@38
    .restart local v15    # "isXLarge":Z
    goto :goto_0

    #@39
    .line 764
    :cond_3
    const/4 v14, 0x0

    #@3a
    .restart local v14    # "isHoneycombApp":Z
    goto :goto_1

    #@3b
    .line 772
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@3e
    move-result-object v11

    #@3f
    .line 773
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_5

    #@41
    move-object/from16 v0, p1

    #@43
    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@45
    move-object/from16 v0, p1

    #@47
    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@49
    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_6

    #@4f
    .line 779
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    #@52
    move-result-object v18

    #@53
    .line 780
    .local v18, "wm":Landroid/view/WindowManager;
    if-nez v18, :cond_7

    #@55
    .line 781
    return-void

    #@56
    .line 775
    .end local v18    # "wm":Landroid/view/WindowManager;
    :cond_6
    const/4 v4, 0x1

    #@57
    move-object/from16 v0, p0

    #@59
    move-object/from16 v1, p1

    #@5b
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@5e
    .line 776
    return-void

    #@5f
    .line 785
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :cond_7
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@62
    move-result v4

    #@63
    if-nez v4, :cond_8

    #@65
    .line 786
    return-void

    #@66
    .line 789
    :cond_8
    const/4 v3, -0x2

    #@67
    .line 790
    .local v3, "width":I
    move-object/from16 v0, p1

    #@69
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@6b
    if-eqz v4, :cond_9

    #@6d
    move-object/from16 v0, p1

    #@6f
    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@71
    if-eqz v4, :cond_12

    #@73
    .line 791
    :cond_9
    move-object/from16 v0, p1

    #@75
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@77
    if-nez v4, :cond_b

    #@79
    .line 793
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    #@7c
    move-result v4

    #@7d
    if-eqz v4, :cond_a

    #@7f
    move-object/from16 v0, p1

    #@81
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@83
    if-nez v4, :cond_c

    #@85
    .line 794
    :cond_a
    return-void

    #@86
    .line 795
    :cond_b
    move-object/from16 v0, p1

    #@88
    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@8a
    if-eqz v4, :cond_c

    #@8c
    move-object/from16 v0, p1

    #@8e
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@90
    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    #@93
    move-result v4

    #@94
    if-lez v4, :cond_c

    #@96
    .line 797
    move-object/from16 v0, p1

    #@98
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@9a
    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->removeAllViews()V

    #@9d
    .line 801
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    #@a0
    move-result v4

    #@a1
    if-eqz v4, :cond_10

    #@a3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    #@a6
    move-result v4

    #@a7
    if-eqz v4, :cond_10

    #@a9
    .line 805
    move-object/from16 v0, p1

    #@ab
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@ad
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b0
    move-result-object v16

    #@b1
    .line 806
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v16, :cond_d

    #@b3
    .line 807
    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    #@b5
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    #@b6
    const/4 v5, -0x2

    #@b7
    move-object/from16 v0, v16

    #@b9
    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@bc
    .line 811
    .restart local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    move-object/from16 v0, v16

    #@be
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@c0
    const/4 v5, -0x1

    #@c1
    if-ne v4, v5, :cond_11

    #@c3
    .line 814
    move-object/from16 v0, p1

    #@c5
    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    #@c7
    .line 815
    .local v10, "backgroundResId":I
    const/4 v3, -0x1

    #@c8
    .line 820
    :goto_2
    move-object/from16 v0, p1

    #@ca
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@cc
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@cf
    move-result-object v5

    #@d0
    invoke-virtual {v5, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@d3
    move-result-object v5

    #@d4
    invoke-virtual {v4, v5}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    #@d7
    .line 823
    move-object/from16 v0, p1

    #@d9
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@db
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@de
    move-result-object v17

    #@df
    .line 824
    .local v17, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v17, :cond_e

    #@e1
    move-object/from16 v0, v17

    #@e3
    instance-of v4, v0, Landroid/view/ViewGroup;

    #@e5
    if-eqz v4, :cond_e

    #@e7
    .line 825
    check-cast v17, Landroid/view/ViewGroup;

    #@e9
    .end local v17    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    #@eb
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@ed
    move-object/from16 v0, v17

    #@ef
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@f2
    .line 827
    :cond_e
    move-object/from16 v0, p1

    #@f4
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@f6
    move-object/from16 v0, p1

    #@f8
    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@fa
    move-object/from16 v0, v16

    #@fc
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@ff
    .line 833
    move-object/from16 v0, p1

    #@101
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@103
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    #@106
    move-result v4

    #@107
    if-nez v4, :cond_f

    #@109
    .line 834
    move-object/from16 v0, p1

    #@10b
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@10d
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    #@110
    .line 847
    .end local v10    # "backgroundResId":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_f
    :goto_3
    const/4 v4, 0x0

    #@111
    move-object/from16 v0, p1

    #@113
    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@115
    .line 849
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    #@117
    .line 851
    move-object/from16 v0, p1

    #@119
    iget v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    #@11b
    move-object/from16 v0, p1

    #@11d
    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    #@11f
    .line 854
    move-object/from16 v0, p1

    #@121
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@123
    iget v9, v4, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    #@125
    .line 850
    const/4 v4, -0x2

    #@126
    .line 851
    const/16 v7, 0x3eb

    #@128
    .line 852
    const/high16 v8, 0x820000

    #@12a
    .line 849
    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    #@12d
    .line 856
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    #@12f
    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    #@131
    if-eqz v4, :cond_14

    #@133
    .line 857
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    #@136
    move-result v4

    #@137
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@139
    .line 858
    sget-object v4, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    #@13b
    move-object/from16 v0, p0

    #@13d
    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    #@140
    .line 863
    :goto_4
    move-object/from16 v0, p1

    #@142
    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    #@144
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@146
    .line 865
    move-object/from16 v0, p1

    #@148
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@14a
    move-object/from16 v0, v18

    #@14c
    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@14f
    .line 866
    const/4 v4, 0x1

    #@150
    move-object/from16 v0, p1

    #@152
    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@154
    .line 749
    return-void

    #@155
    .line 802
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_10
    return-void

    #@156
    .line 818
    .restart local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_11
    move-object/from16 v0, p1

    #@158
    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    #@15a
    .restart local v10    # "backgroundResId":I
    goto/16 :goto_2

    #@15c
    .line 836
    .end local v10    # "backgroundResId":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    #@15f
    move-result v4

    #@160
    if-nez v4, :cond_13

    #@162
    .line 837
    const/4 v3, -0x1

    #@163
    goto :goto_3

    #@164
    .line 838
    :cond_13
    move-object/from16 v0, p1

    #@166
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@168
    if-eqz v4, :cond_f

    #@16a
    .line 841
    move-object/from16 v0, p1

    #@16c
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@16e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@171
    move-result-object v16

    #@172
    .line 842
    .restart local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v16, :cond_f

    #@174
    move-object/from16 v0, v16

    #@176
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@178
    const/4 v5, -0x1

    #@179
    if-ne v4, v5, :cond_f

    #@17b
    .line 843
    const/4 v3, -0x1

    #@17c
    goto :goto_3

    #@17d
    .line 860
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_14
    move-object/from16 v0, p1

    #@17f
    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    #@181
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@183
    goto :goto_4
.end method

.method private registerSwipeCallbacks()V
    .locals 2

    #@0
    .prologue
    .line 2985
    const v1, 0x1020002

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/widget/SwipeDismissLayout;

    #@9
    .line 2986
    .local v0, "swipeDismiss":Lcom/android/internal/widget/SwipeDismissLayout;
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$2;

    #@b
    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$2;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V

    #@11
    .line 2993
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$3;

    #@13
    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$3;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    #@16
    .line 2992
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V

    #@19
    .line 2983
    return-void
.end method

.method private reopenMenu(Z)V
    .locals 7
    .param p1, "toggleMenuMode"    # Z

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    .line 1226
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@6
    if-eqz v3, :cond_5

    #@8
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@a
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_5

    #@10
    .line 1227
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@13
    move-result-object v3

    #@14
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 1228
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@20
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    #@23
    move-result v3

    #@24
    .line 1226
    if-eqz v3, :cond_5

    #@26
    .line 1229
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@29
    move-result-object v0

    #@2a
    .line 1230
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@2c
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    if-eqz p1, :cond_2

    #@34
    .line 1250
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@36
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    #@39
    .line 1251
    invoke-virtual {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@3c
    move-result-object v2

    #@3d
    .line 1252
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    #@3f
    if-eqz v0, :cond_1

    #@41
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@44
    move-result v3

    #@45
    if-eqz v3, :cond_4

    #@47
    .line 1256
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    :goto_0
    return-void

    #@48
    .line 1231
    :cond_2
    if-eqz v0, :cond_1

    #@4a
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@4d
    move-result v3

    #@4e
    if-nez v3, :cond_1

    #@50
    .line 1233
    iget-boolean v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@52
    if-eqz v3, :cond_3

    #@54
    .line 1234
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@56
    and-int/lit8 v3, v3, 0x1

    #@58
    if-eqz v3, :cond_3

    #@5a
    .line 1235
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@5c
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@5e
    invoke-virtual {v3, v4}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@61
    .line 1236
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@63
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    #@66
    .line 1239
    :cond_3
    invoke-virtual {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@69
    move-result-object v2

    #@6a
    .line 1243
    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    #@6c
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@6e
    if-eqz v3, :cond_1

    #@70
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    #@72
    if-nez v3, :cond_1

    #@74
    .line 1244
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@76
    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@78
    invoke-interface {v0, v5, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@7b
    move-result v3

    #@7c
    .line 1243
    if-eqz v3, :cond_1

    #@7e
    .line 1245
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@80
    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    #@83
    .line 1246
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@85
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    #@88
    goto :goto_0

    #@89
    .line 1253
    :cond_4
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@8b
    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@8e
    goto :goto_0

    #@8f
    .line 1259
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    invoke-virtual {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@92
    move-result-object v2

    #@93
    .line 1261
    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_6

    #@95
    .line 1262
    return-void

    #@96
    .line 1266
    :cond_6
    if-eqz p1, :cond_8

    #@98
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@9a
    if-eqz v3, :cond_7

    #@9c
    const/4 v1, 0x0

    #@9d
    .line 1268
    :goto_1
    const/4 v3, 0x1

    #@9e
    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@a0
    .line 1269
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@a3
    .line 1272
    iput-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@a5
    .line 1274
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    #@a8
    .line 1225
    return-void

    #@a9
    .line 1266
    :cond_7
    const/4 v1, 0x1

    #@aa
    .local v1, "newExpandedMode":Z
    goto :goto_1

    #@ab
    .end local v1    # "newExpandedMode":Z
    :cond_8
    iget-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@ad
    .local v1, "newExpandedMode":Z
    goto :goto_1
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v4, 0x0

    #@1
    .line 2169
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    #@4
    move-result v3

    #@5
    add-int/lit8 v1, v3, -0x1

    #@7
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@9
    .line 2170
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@c
    move-result v0

    #@d
    .line 2171
    .local v0, "curFeatureId":I
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@10
    move-result-object v2

    #@11
    .line 2172
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    #@13
    .line 2169
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@15
    goto :goto_0

    #@16
    .line 2177
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroid/os/Parcelable;

    #@1c
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@1f
    .line 2178
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    #@22
    goto :goto_1

    #@23
    .line 2166
    .end local v0    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2149
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@2
    .line 2150
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    #@4
    .line 2151
    return-void

    #@5
    .line 2154
    :cond_0
    array-length v2, v1

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "curFeatureId":I
    :goto_0
    if-ltz v0, :cond_2

    #@a
    .line 2155
    aget-object v2, v1, v0

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 2156
    aget-object v2, v1, v0

    #@10
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@17
    .line 2154
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 2148
    :cond_2
    return-void
.end method

.method public static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3711
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 3713
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 3710
    :cond_0
    :goto_0
    return-void

    #@e
    .line 3714
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1687
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@4
    move-result v0

    #@5
    .line 1688
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1689
    if-eqz p2, :cond_0

    #@b
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x4

    #@10
    if-ne v1, v2, :cond_0

    #@12
    .line 1690
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@15
    .line 1693
    :cond_0
    and-int/lit8 v1, v0, 0x4

    #@17
    if-eqz v1, :cond_1

    #@19
    if-eqz p1, :cond_1

    #@1b
    .line 1694
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    #@1e
    move-result v1

    #@1f
    const/16 v2, 0x2710

    #@21
    if-ge v1, v2, :cond_1

    #@23
    .line 1695
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@26
    .line 1686
    :cond_1
    return-void
.end method

.method private transitionTo(Landroid/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 479
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    #@7
    .line 483
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    #@9
    .line 477
    return-void

    #@a
    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    #@c
    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    #@f
    goto :goto_0
.end method

.method private updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    #@0
    .prologue
    .line 2871
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2872
    return-void

    #@5
    .line 2875
    :cond_0
    const/4 v2, 0x1

    #@6
    shl-int v1, v2, p1

    #@8
    .line 2877
    .local v1, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    #@b
    move-result v2

    #@c
    and-int/2addr v2, v1

    #@d
    if-nez v2, :cond_1

    #@f
    if-eqz p3, :cond_6

    #@11
    .line 2881
    :cond_1
    const/4 v0, 0x0

    #@12
    .line 2882
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_3

    #@14
    .line 2883
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    #@16
    .line 2884
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    #@18
    .line 2885
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    #@1a
    .line 2886
    :cond_2
    if-nez v0, :cond_3

    #@1c
    .line 2887
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    #@1e
    .line 2889
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@21
    move-result v2

    #@22
    and-int/2addr v2, v1

    #@23
    if-nez v2, :cond_7

    #@25
    .line 2890
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@28
    move-result-object v2

    #@29
    if-eqz v2, :cond_5

    #@2b
    .line 2891
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isActive()Z

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_4

    #@31
    if-eqz p3, :cond_5

    #@33
    .line 2892
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@3a
    .line 2868
    :cond_5
    :goto_0
    return-void

    #@3b
    .line 2878
    :cond_6
    return-void

    #@3c
    .line 2895
    :cond_7
    if-eqz p2, :cond_5

    #@3e
    iget-object v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    #@40
    if-ne v2, v0, :cond_8

    #@42
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    #@44
    iget v3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    #@46
    if-eq v2, v3, :cond_5

    #@48
    .line 2898
    :cond_8
    iput-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    #@4a
    .line 2899
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    #@4c
    iput v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    #@4e
    .line 2900
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    #@50
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    #@53
    goto :goto_0
.end method

.method private updateInt(IIZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    #@0
    .prologue
    .line 2908
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2909
    return-void

    #@5
    .line 2912
    :cond_0
    const/4 v1, 0x1

    #@6
    shl-int v0, v1, p1

    #@8
    .line 2914
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    #@b
    move-result v1

    #@c
    and-int/2addr v1, v0

    #@d
    if-nez v1, :cond_1

    #@f
    if-eqz p3, :cond_3

    #@11
    .line 2918
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@14
    move-result v1

    #@15
    and-int/2addr v1, v0

    #@16
    if-nez v1, :cond_4

    #@18
    .line 2919
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 2920
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    #@25
    .line 2904
    :cond_2
    :goto_0
    return-void

    #@26
    .line 2915
    :cond_3
    return-void

    #@27
    .line 2923
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onIntChanged(II)V

    #@2a
    goto :goto_0
.end method

.method private updateProgressBars(I)V
    .locals 10
    .param p1, "value"    # I

    #@0
    .prologue
    const/16 v9, 0x8

    #@2
    const/16 v8, 0x2710

    #@4
    const/4 v7, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    .line 1610
    invoke-direct {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    #@9
    move-result-object v0

    #@a
    .line 1611
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    #@d
    move-result-object v2

    #@e
    .line 1613
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@11
    move-result v1

    #@12
    .line 1614
    .local v1, "features":I
    const/4 v6, -0x1

    #@13
    if-ne p1, v6, :cond_6

    #@15
    .line 1615
    and-int/lit8 v6, v1, 0x4

    #@17
    if-eqz v6, :cond_1

    #@19
    .line 1616
    if-eqz v2, :cond_4

    #@1b
    .line 1617
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    #@1e
    move-result v3

    #@1f
    .line 1618
    .local v3, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    #@22
    move-result v6

    #@23
    if-nez v6, :cond_0

    #@25
    if-ge v3, v8, :cond_3

    #@27
    :cond_0
    move v4, v5

    #@28
    .line 1620
    .local v4, "visibility":I
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@2b
    .line 1625
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_1
    :goto_1
    and-int/lit8 v6, v1, 0x20

    #@2d
    if-eqz v6, :cond_2

    #@2f
    .line 1626
    if-eqz v0, :cond_5

    #@31
    .line 1627
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@34
    .line 1609
    :cond_2
    :goto_2
    return-void

    #@35
    .line 1619
    .restart local v3    # "level":I
    :cond_3
    const/4 v4, 0x4

    #@36
    goto :goto_0

    #@37
    .line 1622
    .end local v3    # "level":I
    :cond_4
    const-string/jumbo v6, "PhoneWindow"

    #@3a
    const-string/jumbo v7, "Horizontal progress bar not located in current window decor"

    #@3d
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    goto :goto_1

    #@41
    .line 1629
    :cond_5
    const-string/jumbo v5, "PhoneWindow"

    #@44
    const-string/jumbo v6, "Circular progress bar not located in current window decor"

    #@47
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_2

    #@4b
    .line 1632
    :cond_6
    const/4 v6, -0x2

    #@4c
    if-ne p1, v6, :cond_a

    #@4e
    .line 1633
    and-int/lit8 v5, v1, 0x4

    #@50
    if-eqz v5, :cond_7

    #@52
    .line 1634
    if-eqz v2, :cond_8

    #@54
    .line 1635
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@57
    .line 1640
    :cond_7
    :goto_3
    and-int/lit8 v5, v1, 0x20

    #@59
    if-eqz v5, :cond_2

    #@5b
    .line 1641
    if-eqz v0, :cond_9

    #@5d
    .line 1642
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@60
    goto :goto_2

    #@61
    .line 1637
    :cond_8
    const-string/jumbo v5, "PhoneWindow"

    #@64
    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    #@67
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    goto :goto_3

    #@6b
    .line 1644
    :cond_9
    const-string/jumbo v5, "PhoneWindow"

    #@6e
    const-string/jumbo v6, "Circular progress bar not located in current window decor"

    #@71
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    goto :goto_2

    #@75
    .line 1647
    :cond_a
    const/4 v6, -0x3

    #@76
    if-ne p1, v6, :cond_c

    #@78
    .line 1648
    if-eqz v2, :cond_b

    #@7a
    .line 1649
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@7d
    goto :goto_2

    #@7e
    .line 1651
    :cond_b
    const-string/jumbo v5, "PhoneWindow"

    #@81
    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    #@84
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    goto :goto_2

    #@88
    .line 1653
    :cond_c
    const/4 v6, -0x4

    #@89
    if-ne p1, v6, :cond_e

    #@8b
    .line 1654
    if-eqz v2, :cond_d

    #@8d
    .line 1655
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@90
    goto :goto_2

    #@91
    .line 1657
    :cond_d
    const-string/jumbo v5, "PhoneWindow"

    #@94
    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    #@97
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9a
    goto :goto_2

    #@9b
    .line 1659
    :cond_e
    if-ltz p1, :cond_11

    #@9d
    if-gt p1, v8, :cond_11

    #@9f
    .line 1663
    if-eqz v2, :cond_f

    #@a1
    .line 1664
    add-int/lit8 v5, p1, 0x0

    #@a3
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@a6
    .line 1669
    :goto_4
    if-ge p1, v8, :cond_10

    #@a8
    .line 1670
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    #@ab
    goto :goto_2

    #@ac
    .line 1666
    :cond_f
    const-string/jumbo v5, "PhoneWindow"

    #@af
    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    #@b2
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b5
    goto :goto_4

    #@b6
    .line 1672
    :cond_10
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    #@b9
    goto/16 :goto_2

    #@bb
    .line 1674
    :cond_11
    const/16 v5, 0x4e20

    #@bd
    if-gt v5, p1, :cond_2

    #@bf
    const/16 v5, 0x7530

    #@c1
    if-gt p1, v5, :cond_2

    #@c3
    .line 1675
    if-eqz v2, :cond_12

    #@c5
    .line 1676
    add-int/lit16 v5, p1, -0x4e20

    #@c7
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    #@ca
    .line 1681
    :goto_5
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    #@cd
    goto/16 :goto_2

    #@cf
    .line 1678
    :cond_12
    const-string/jumbo v5, "PhoneWindow"

    #@d2
    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    #@d5
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d8
    goto :goto_5
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 456
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@7
    .line 458
    :cond_0
    const/16 v1, 0xc

    #@9
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 460
    const-string/jumbo v1, "PhoneWindow"

    #@12
    const-string/jumbo v2, "addContentView does not support content transitions"

    #@15
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 462
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1a
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@1d
    .line 463
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1f
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestApplyInsets()V

    #@22
    .line 464
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@25
    move-result-object v0

    #@26
    .line 465
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    #@28
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_3

    #@2e
    .line 454
    :cond_2
    :goto_0
    return-void

    #@2f
    .line 466
    :cond_3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    #@32
    goto :goto_0
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 1

    #@0
    .prologue
    .line 2611
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    #@3
    .line 2610
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 938
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 939
    return-void

    #@5
    .line 942
    :cond_0
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    #@8
    .line 943
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@a
    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    #@d
    .line 944
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@10
    move-result-object v0

    #@11
    .line 945
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    #@13
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 948
    :cond_1
    :goto_0
    const/4 v1, 0x0

    #@1a
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    #@1c
    .line 937
    return-void

    #@1d
    .line 946
    :cond_2
    const/16 v1, 0x8

    #@1f
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@22
    goto :goto_0
.end method

.method public clearContentView()V
    .locals 1

    #@0
    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->clearContentView()V

    #@9
    .line 471
    :cond_0
    return-void
.end method

.method public final closeAllPanels()V
    .locals 6

    #@0
    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    #@3
    move-result-object v4

    #@4
    .line 1104
    .local v4, "wm":Landroid/view/ViewManager;
    if-nez v4, :cond_0

    #@6
    .line 1105
    return-void

    #@7
    .line 1108
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@9
    .line 1109
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_2

    #@b
    array-length v0, v3

    #@c
    .line 1110
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@f
    .line 1111
    aget-object v2, v3, v1

    #@11
    .line 1112
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    #@13
    .line 1113
    const/4 v5, 0x1

    #@14
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@17
    .line 1110
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_1

    #@1a
    .line 1109
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v0, 0x0

    #@1b
    .restart local v0    # "N":I
    goto :goto_0

    #@1c
    .line 1117
    .restart local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    #@1f
    .line 1102
    return-void
.end method

.method public final closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 872
    if-nez p1, :cond_0

    #@3
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@9
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    #@c
    move-result v0

    #@d
    .line 872
    if-eqz v0, :cond_0

    #@f
    .line 874
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 876
    :cond_0
    const/4 v0, 0x6

    #@1e
    if-ne p1, v0, :cond_2

    #@20
    .line 877
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    #@23
    .line 871
    :goto_0
    return-void

    #@24
    .line 875
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@26
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    #@29
    goto :goto_0

    #@2a
    .line 879
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@31
    goto :goto_0
.end method

.method public final closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 896
    if-eqz p2, :cond_0

    #@4
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@6
    if-nez v1, :cond_0

    #@8
    .line 897
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@e
    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    #@11
    move-result v1

    #@12
    .line 896
    if-eqz v1, :cond_0

    #@14
    .line 898
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@16
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    #@19
    .line 899
    return-void

    #@1a
    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    #@1d
    move-result-object v0

    #@1e
    .line 903
    .local v0, "wm":Landroid/view/ViewManager;
    if-eqz v0, :cond_2

    #@20
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 904
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 905
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@2a
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    #@2d
    .line 907
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 908
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    #@33
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    #@36
    .line 912
    :cond_1
    if-eqz p2, :cond_2

    #@38
    .line 913
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@3a
    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    #@3d
    .line 917
    :cond_2
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@3f
    .line 918
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@41
    .line 919
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@43
    .line 922
    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@45
    .line 924
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@47
    if-eqz v1, :cond_3

    #@49
    .line 927
    const/4 v1, 0x1

    #@4a
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@4c
    .line 928
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@4e
    .line 931
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@50
    if-ne v1, p1, :cond_4

    #@52
    .line 932
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@54
    .line 933
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@56
    .line 894
    :cond_4
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2939
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@4
    .line 2940
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2941
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@e
    .line 2938
    :cond_0
    return-void
.end method

.method doInvalidatePanelMenu(I)V
    .locals 6
    .param p1, "featureId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 979
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@6
    move-result-object v1

    #@7
    .line 980
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    #@9
    .line 981
    return-void

    #@a
    .line 983
    :cond_0
    const/4 v0, 0x0

    #@b
    .line 984
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 985
    new-instance v0, Landroid/os/Bundle;

    #@11
    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@14
    .line 986
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@16
    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    #@19
    .line 987
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    #@1c
    move-result v2

    #@1d
    if-lez v2, :cond_1

    #@1f
    .line 988
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@21
    .line 991
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@23
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@26
    .line 992
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@28
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    #@2b
    .line 994
    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    :cond_2
    iput-boolean v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    #@2d
    .line 995
    iput-boolean v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@2f
    .line 998
    const/16 v2, 0x8

    #@31
    if-eq p1, v2, :cond_3

    #@33
    if-nez p1, :cond_4

    #@35
    .line 999
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@37
    if-eqz v2, :cond_4

    #@39
    .line 1000
    invoke-virtual {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@3c
    move-result-object v1

    #@3d
    .line 1001
    if-eqz v1, :cond_4

    #@3f
    .line 1002
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@41
    .line 1003
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@44
    .line 978
    :cond_4
    return-void
.end method

.method doPendingInvalidatePanelMenu()V
    .locals 2

    #@0
    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 973
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@6
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 974
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@d
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@10
    .line 971
    :cond_0
    return-void
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1199
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@3
    .line 1200
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_0

    #@5
    array-length v0, v3

    #@6
    .line 1201
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@9
    .line 1202
    aget-object v2, v3, v1

    #@b
    .line 1203
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    #@d
    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@f
    if-ne v4, p1, :cond_1

    #@11
    .line 1204
    return-object v2

    #@12
    .line 1200
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    const/4 v0, 0x0

    #@13
    .restart local v0    # "N":I
    goto :goto_0

    #@14
    .line 1201
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_1

    #@17
    .line 1207
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    return-object v5
.end method

.method protected generateDecor(I)Lcom/android/internal/policy/DecorView;
    .locals 4
    .param p1, "featureId"    # I

    #@0
    .prologue
    .line 2268
    iget-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    #@2
    if-eqz v2, :cond_2

    #@4
    .line 2269
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    .line 2270
    .local v0, "applicationContext":Landroid/content/Context;
    if-nez v0, :cond_1

    #@e
    .line 2271
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    .line 2281
    .end local v0    # "applicationContext":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/internal/policy/DecorView;

    #@14
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v1, p1, p0, v3}, Lcom/android/internal/policy/DecorView;-><init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V

    #@1b
    return-object v2

    #@1c
    .line 2273
    .end local v1    # "context":Landroid/content/Context;
    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/DecorContext;

    #@1e
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v0, v2}, Lcom/android/internal/policy/DecorContext;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    #@29
    .line 2274
    .restart local v1    # "context":Landroid/content/Context;
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    #@2b
    const/4 v3, -0x1

    #@2c
    if-eq v2, v3, :cond_0

    #@2e
    .line 2275
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    #@30
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    #@33
    goto :goto_0

    #@34
    .line 2279
    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@37
    move-result-object v1

    #@38
    .restart local v1    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method protected generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;
    .locals 23
    .param p1, "decor"    # Lcom/android/internal/policy/DecorView;

    #@0
    .prologue
    .line 2287
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@3
    move-result-object v3

    #@4
    .line 2299
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v20, 0x4

    #@6
    const/16 v21, 0x0

    #@8
    move/from16 v0, v20

    #@a
    move/from16 v1, v21

    #@c
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f
    move-result v20

    #@10
    move/from16 v0, v20

    #@12
    move-object/from16 v1, p0

    #@14
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@16
    .line 2301
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@19
    move-result v20

    #@1a
    move/from16 v0, v20

    #@1c
    not-int v0, v0

    #@1d
    move/from16 v20, v0

    #@1f
    .line 2300
    const v21, 0x10100

    #@22
    and-int v8, v21, v20

    #@24
    .line 2302
    .local v8, "flagsToUpdate":I
    move-object/from16 v0, p0

    #@26
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@28
    move/from16 v20, v0

    #@2a
    if-eqz v20, :cond_25

    #@2c
    .line 2303
    const/16 v20, -0x2

    #@2e
    const/16 v21, -0x2

    #@30
    move-object/from16 v0, p0

    #@32
    move/from16 v1, v20

    #@34
    move/from16 v2, v21

    #@36
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    #@39
    .line 2304
    const/16 v20, 0x0

    #@3b
    move-object/from16 v0, p0

    #@3d
    move/from16 v1, v20

    #@3f
    invoke-virtual {v0, v1, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@42
    .line 2309
    :goto_0
    const/16 v20, 0x3

    #@44
    const/16 v21, 0x0

    #@46
    move/from16 v0, v20

    #@48
    move/from16 v1, v21

    #@4a
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4d
    move-result v20

    #@4e
    if-eqz v20, :cond_26

    #@50
    .line 2310
    const/16 v20, 0x1

    #@52
    move-object/from16 v0, p0

    #@54
    move/from16 v1, v20

    #@56
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@59
    .line 2316
    :cond_0
    :goto_1
    const/16 v20, 0x11

    #@5b
    const/16 v21, 0x0

    #@5d
    move/from16 v0, v20

    #@5f
    move/from16 v1, v21

    #@61
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@64
    move-result v20

    #@65
    if-eqz v20, :cond_1

    #@67
    .line 2317
    const/16 v20, 0x9

    #@69
    move-object/from16 v0, p0

    #@6b
    move/from16 v1, v20

    #@6d
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@70
    .line 2320
    :cond_1
    const/16 v20, 0x10

    #@72
    const/16 v21, 0x0

    #@74
    move/from16 v0, v20

    #@76
    move/from16 v1, v21

    #@78
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@7b
    move-result v20

    #@7c
    if-eqz v20, :cond_2

    #@7e
    .line 2321
    const/16 v20, 0xa

    #@80
    move-object/from16 v0, p0

    #@82
    move/from16 v1, v20

    #@84
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@87
    .line 2324
    :cond_2
    const/16 v20, 0x19

    #@89
    const/16 v21, 0x0

    #@8b
    move/from16 v0, v20

    #@8d
    move/from16 v1, v21

    #@8f
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@92
    move-result v20

    #@93
    if-eqz v20, :cond_3

    #@95
    .line 2325
    const/16 v20, 0xb

    #@97
    move-object/from16 v0, p0

    #@99
    move/from16 v1, v20

    #@9b
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@9e
    .line 2328
    :cond_3
    const/16 v20, 0x9

    #@a0
    const/16 v21, 0x0

    #@a2
    move/from16 v0, v20

    #@a4
    move/from16 v1, v21

    #@a6
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a9
    move-result v20

    #@aa
    if-eqz v20, :cond_4

    #@ac
    .line 2329
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@af
    move-result v20

    #@b0
    move/from16 v0, v20

    #@b2
    not-int v0, v0

    #@b3
    move/from16 v20, v0

    #@b5
    move/from16 v0, v20

    #@b7
    and-int/lit16 v0, v0, 0x400

    #@b9
    move/from16 v20, v0

    #@bb
    const/16 v21, 0x400

    #@bd
    move-object/from16 v0, p0

    #@bf
    move/from16 v1, v21

    #@c1
    move/from16 v2, v20

    #@c3
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@c6
    .line 2332
    :cond_4
    const/16 v20, 0x17

    #@c8
    .line 2333
    const/16 v21, 0x0

    #@ca
    .line 2332
    move/from16 v0, v20

    #@cc
    move/from16 v1, v21

    #@ce
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d1
    move-result v20

    #@d2
    if-eqz v20, :cond_5

    #@d4
    .line 2335
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@d7
    move-result v20

    #@d8
    move/from16 v0, v20

    #@da
    not-int v0, v0

    #@db
    move/from16 v20, v0

    #@dd
    .line 2334
    const/high16 v21, 0x4000000

    #@df
    and-int v20, v20, v21

    #@e1
    const/high16 v21, 0x4000000

    #@e3
    move-object/from16 v0, p0

    #@e5
    move/from16 v1, v21

    #@e7
    move/from16 v2, v20

    #@e9
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@ec
    .line 2338
    :cond_5
    const/16 v20, 0x18

    #@ee
    .line 2339
    const/16 v21, 0x0

    #@f0
    .line 2338
    move/from16 v0, v20

    #@f2
    move/from16 v1, v21

    #@f4
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f7
    move-result v20

    #@f8
    if-eqz v20, :cond_6

    #@fa
    .line 2341
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@fd
    move-result v20

    #@fe
    move/from16 v0, v20

    #@100
    not-int v0, v0

    #@101
    move/from16 v20, v0

    #@103
    .line 2340
    const/high16 v21, 0x8000000

    #@105
    and-int v20, v20, v21

    #@107
    const/high16 v21, 0x8000000

    #@109
    move-object/from16 v0, p0

    #@10b
    move/from16 v1, v21

    #@10d
    move/from16 v2, v20

    #@10f
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@112
    .line 2344
    :cond_6
    const/16 v20, 0x16

    #@114
    const/16 v21, 0x0

    #@116
    move/from16 v0, v20

    #@118
    move/from16 v1, v21

    #@11a
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@11d
    move-result v20

    #@11e
    if-eqz v20, :cond_7

    #@120
    .line 2345
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@123
    move-result v20

    #@124
    move/from16 v0, v20

    #@126
    not-int v0, v0

    #@127
    move/from16 v20, v0

    #@129
    const/high16 v21, 0x2000000

    #@12b
    and-int v20, v20, v21

    #@12d
    const/high16 v21, 0x2000000

    #@12f
    move-object/from16 v0, p0

    #@131
    move/from16 v1, v21

    #@133
    move/from16 v2, v20

    #@135
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@138
    .line 2348
    :cond_7
    const/16 v20, 0xe

    #@13a
    const/16 v21, 0x0

    #@13c
    move/from16 v0, v20

    #@13e
    move/from16 v1, v21

    #@140
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@143
    move-result v20

    #@144
    if-eqz v20, :cond_8

    #@146
    .line 2349
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@149
    move-result v20

    #@14a
    move/from16 v0, v20

    #@14c
    not-int v0, v0

    #@14d
    move/from16 v20, v0

    #@14f
    const/high16 v21, 0x100000

    #@151
    and-int v20, v20, v21

    #@153
    const/high16 v21, 0x100000

    #@155
    move-object/from16 v0, p0

    #@157
    move/from16 v1, v21

    #@159
    move/from16 v2, v20

    #@15b
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@15e
    .line 2353
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@161
    move-result-object v20

    #@162
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@165
    move-result-object v20

    #@166
    move-object/from16 v0, v20

    #@168
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@16a
    move/from16 v20, v0

    #@16c
    .line 2354
    const/16 v21, 0xb

    #@16e
    .line 2353
    move/from16 v0, v20

    #@170
    move/from16 v1, v21

    #@172
    if-lt v0, v1, :cond_27

    #@174
    const/16 v20, 0x1

    #@176
    .line 2352
    :goto_2
    const/16 v21, 0x12

    #@178
    move/from16 v0, v21

    #@17a
    move/from16 v1, v20

    #@17c
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@17f
    move-result v20

    #@180
    if-eqz v20, :cond_9

    #@182
    .line 2355
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@185
    move-result v20

    #@186
    move/from16 v0, v20

    #@188
    not-int v0, v0

    #@189
    move/from16 v20, v0

    #@18b
    const/high16 v21, 0x800000

    #@18d
    and-int v20, v20, v21

    #@18f
    const/high16 v21, 0x800000

    #@191
    move-object/from16 v0, p0

    #@193
    move/from16 v1, v21

    #@195
    move/from16 v2, v20

    #@197
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@19a
    .line 2358
    :cond_9
    move-object/from16 v0, p0

    #@19c
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    #@19e
    move-object/from16 v20, v0

    #@1a0
    const/16 v21, 0x13

    #@1a2
    move/from16 v0, v21

    #@1a4
    move-object/from16 v1, v20

    #@1a6
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@1a9
    .line 2359
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    #@1ad
    move-object/from16 v20, v0

    #@1af
    const/16 v21, 0x14

    #@1b1
    move/from16 v0, v21

    #@1b3
    move-object/from16 v1, v20

    #@1b5
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@1b8
    .line 2362
    const/16 v20, 0x31

    #@1ba
    move/from16 v0, v20

    #@1bc
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1bf
    move-result v20

    #@1c0
    if-eqz v20, :cond_b

    #@1c2
    .line 2363
    move-object/from16 v0, p0

    #@1c4
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@1c6
    move-object/from16 v20, v0

    #@1c8
    if-nez v20, :cond_a

    #@1ca
    new-instance v20, Landroid/util/TypedValue;

    #@1cc
    invoke-direct/range {v20 .. v20}, Landroid/util/TypedValue;-><init>()V

    #@1cf
    move-object/from16 v0, v20

    #@1d1
    move-object/from16 v1, p0

    #@1d3
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@1d5
    .line 2365
    :cond_a
    move-object/from16 v0, p0

    #@1d7
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@1d9
    move-object/from16 v20, v0

    #@1db
    .line 2364
    const/16 v21, 0x31

    #@1dd
    move/from16 v0, v21

    #@1df
    move-object/from16 v1, v20

    #@1e1
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@1e4
    .line 2367
    :cond_b
    const/16 v20, 0x33

    #@1e6
    move/from16 v0, v20

    #@1e8
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1eb
    move-result v20

    #@1ec
    if-eqz v20, :cond_d

    #@1ee
    .line 2368
    move-object/from16 v0, p0

    #@1f0
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@1f2
    move-object/from16 v20, v0

    #@1f4
    if-nez v20, :cond_c

    #@1f6
    new-instance v20, Landroid/util/TypedValue;

    #@1f8
    invoke-direct/range {v20 .. v20}, Landroid/util/TypedValue;-><init>()V

    #@1fb
    move-object/from16 v0, v20

    #@1fd
    move-object/from16 v1, p0

    #@1ff
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@201
    .line 2370
    :cond_c
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@205
    move-object/from16 v20, v0

    #@207
    .line 2369
    const/16 v21, 0x33

    #@209
    move/from16 v0, v21

    #@20b
    move-object/from16 v1, v20

    #@20d
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@210
    .line 2372
    :cond_d
    const/16 v20, 0x34

    #@212
    move/from16 v0, v20

    #@214
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@217
    move-result v20

    #@218
    if-eqz v20, :cond_f

    #@21a
    .line 2373
    move-object/from16 v0, p0

    #@21c
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@21e
    move-object/from16 v20, v0

    #@220
    if-nez v20, :cond_e

    #@222
    new-instance v20, Landroid/util/TypedValue;

    #@224
    invoke-direct/range {v20 .. v20}, Landroid/util/TypedValue;-><init>()V

    #@227
    move-object/from16 v0, v20

    #@229
    move-object/from16 v1, p0

    #@22b
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@22d
    .line 2375
    :cond_e
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@231
    move-object/from16 v20, v0

    #@233
    .line 2374
    const/16 v21, 0x34

    #@235
    move/from16 v0, v21

    #@237
    move-object/from16 v1, v20

    #@239
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@23c
    .line 2377
    :cond_f
    const/16 v20, 0x32

    #@23e
    move/from16 v0, v20

    #@240
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@243
    move-result v20

    #@244
    if-eqz v20, :cond_11

    #@246
    .line 2378
    move-object/from16 v0, p0

    #@248
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@24a
    move-object/from16 v20, v0

    #@24c
    if-nez v20, :cond_10

    #@24e
    new-instance v20, Landroid/util/TypedValue;

    #@250
    invoke-direct/range {v20 .. v20}, Landroid/util/TypedValue;-><init>()V

    #@253
    move-object/from16 v0, v20

    #@255
    move-object/from16 v1, p0

    #@257
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@259
    .line 2380
    :cond_10
    move-object/from16 v0, p0

    #@25b
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@25d
    move-object/from16 v20, v0

    #@25f
    .line 2379
    const/16 v21, 0x32

    #@261
    move/from16 v0, v21

    #@263
    move-object/from16 v1, v20

    #@265
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@268
    .line 2382
    :cond_11
    const/16 v20, 0x1a

    #@26a
    const/16 v21, 0x0

    #@26c
    move/from16 v0, v20

    #@26e
    move/from16 v1, v21

    #@270
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@273
    move-result v20

    #@274
    if-eqz v20, :cond_12

    #@276
    .line 2383
    const/16 v20, 0xc

    #@278
    move-object/from16 v0, p0

    #@27a
    move/from16 v1, v20

    #@27c
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@27f
    .line 2385
    :cond_12
    const/16 v20, 0x2d

    #@281
    const/16 v21, 0x0

    #@283
    move/from16 v0, v20

    #@285
    move/from16 v1, v21

    #@287
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@28a
    move-result v20

    #@28b
    if-eqz v20, :cond_13

    #@28d
    .line 2386
    const/16 v20, 0xd

    #@28f
    move-object/from16 v0, p0

    #@291
    move/from16 v1, v20

    #@293
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@296
    .line 2389
    :cond_13
    const/16 v20, 0x5

    #@298
    const/16 v21, 0x0

    #@29a
    move/from16 v0, v20

    #@29c
    move/from16 v1, v21

    #@29e
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2a1
    move-result v20

    #@2a2
    move/from16 v0, v20

    #@2a4
    move-object/from16 v1, p0

    #@2a6
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    #@2a8
    .line 2391
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@2ab
    move-result-object v6

    #@2ac
    .line 2392
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2af
    move-result-object v20

    #@2b0
    move-object/from16 v0, v20

    #@2b2
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2b4
    move/from16 v19, v0

    #@2b6
    .line 2393
    .local v19, "targetSdk":I
    const/16 v20, 0xb

    #@2b8
    move/from16 v0, v19

    #@2ba
    move/from16 v1, v20

    #@2bc
    if-ge v0, v1, :cond_28

    #@2be
    const/16 v16, 0x1

    #@2c0
    .line 2394
    .local v16, "targetPreHoneycomb":Z
    :goto_3
    const/16 v20, 0xe

    #@2c2
    move/from16 v0, v19

    #@2c4
    move/from16 v1, v20

    #@2c6
    if-ge v0, v1, :cond_29

    #@2c8
    const/16 v17, 0x1

    #@2ca
    .line 2395
    .local v17, "targetPreIcs":Z
    :goto_4
    const/16 v20, 0x15

    #@2cc
    move/from16 v0, v19

    #@2ce
    move/from16 v1, v20

    #@2d0
    if-ge v0, v1, :cond_2a

    #@2d2
    const/16 v18, 0x1

    #@2d4
    .line 2396
    .local v18, "targetPreL":Z
    :goto_5
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2d7
    move-result-object v20

    #@2d8
    .line 2397
    const v21, 0x1120008

    #@2db
    .line 2396
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@2de
    move-result v15

    #@2df
    .line 2398
    .local v15, "targetHcNeedsOptions":Z
    const/16 v20, 0x8

    #@2e1
    move-object/from16 v0, p0

    #@2e3
    move/from16 v1, v20

    #@2e5
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@2e8
    move-result v20

    #@2e9
    if-eqz v20, :cond_2b

    #@2eb
    const/16 v20, 0x1

    #@2ed
    move-object/from16 v0, p0

    #@2ef
    move/from16 v1, v20

    #@2f1
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@2f4
    move-result v11

    #@2f5
    .line 2400
    :goto_6
    if-nez v16, :cond_14

    #@2f7
    if-eqz v17, :cond_2c

    #@2f9
    if-eqz v15, :cond_2c

    #@2fb
    if-eqz v11, :cond_2c

    #@2fd
    .line 2401
    :cond_14
    const/16 v20, 0x1

    #@2ff
    move-object/from16 v0, p0

    #@301
    move/from16 v1, v20

    #@303
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    #@306
    .line 2406
    :goto_7
    move-object/from16 v0, p0

    #@308
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    #@30a
    move/from16 v20, v0

    #@30c
    if-nez v20, :cond_15

    #@30e
    .line 2407
    const/16 v20, 0x23

    #@310
    const/high16 v21, -0x1000000

    #@312
    move/from16 v0, v20

    #@314
    move/from16 v1, v21

    #@316
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@319
    move-result v20

    #@31a
    move/from16 v0, v20

    #@31c
    move-object/from16 v1, p0

    #@31e
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    #@320
    .line 2409
    :cond_15
    move-object/from16 v0, p0

    #@322
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    #@324
    move/from16 v20, v0

    #@326
    if-nez v20, :cond_16

    #@328
    .line 2410
    const/16 v20, 0x24

    #@32a
    const/high16 v21, -0x1000000

    #@32c
    move/from16 v0, v20

    #@32e
    move/from16 v1, v21

    #@330
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@333
    move-result v20

    #@334
    move/from16 v0, v20

    #@336
    move-object/from16 v1, p0

    #@338
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    #@33a
    .line 2413
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@33d
    move-result-object v12

    #@33e
    .line 2417
    .local v12, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    #@340
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@342
    move/from16 v20, v0

    #@344
    if-nez v20, :cond_18

    #@346
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@349
    move-result v20

    #@34a
    if-eqz v20, :cond_18

    #@34c
    .line 2418
    if-nez v18, :cond_17

    #@34e
    .line 2419
    const/16 v20, 0x22

    #@350
    .line 2420
    const/16 v21, 0x0

    #@352
    .line 2418
    move/from16 v0, v20

    #@354
    move/from16 v1, v21

    #@356
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@359
    move-result v20

    #@35a
    if-eqz v20, :cond_17

    #@35c
    .line 2422
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@35f
    move-result v20

    #@360
    move/from16 v0, v20

    #@362
    not-int v0, v0

    #@363
    move/from16 v20, v0

    #@365
    const/high16 v21, -0x80000000

    #@367
    and-int v20, v20, v21

    #@369
    .line 2421
    const/high16 v21, -0x80000000

    #@36b
    move-object/from16 v0, p0

    #@36d
    move/from16 v1, v21

    #@36f
    move/from16 v2, v20

    #@371
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@374
    .line 2424
    :cond_17
    move-object/from16 v0, p0

    #@376
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@378
    move-object/from16 v20, v0

    #@37a
    move-object/from16 v0, v20

    #@37c
    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    #@37e
    move/from16 v20, v0

    #@380
    if-eqz v20, :cond_18

    #@382
    .line 2425
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@384
    move/from16 v20, v0

    #@386
    const/high16 v21, 0x20000

    #@388
    or-int v20, v20, v21

    #@38a
    move/from16 v0, v20

    #@38c
    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@38e
    .line 2428
    :cond_18
    const/16 v20, 0x2e

    #@390
    const/16 v21, 0x0

    #@392
    move/from16 v0, v20

    #@394
    move/from16 v1, v21

    #@396
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@399
    move-result v20

    #@39a
    if-eqz v20, :cond_19

    #@39c
    .line 2430
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    #@39f
    move-result v20

    #@3a0
    move/from16 v0, v20

    #@3a2
    or-int/lit16 v0, v0, 0x2000

    #@3a4
    move/from16 v20, v0

    #@3a6
    .line 2429
    move-object/from16 v0, p1

    #@3a8
    move/from16 v1, v20

    #@3aa
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    #@3ad
    .line 2433
    :cond_19
    move-object/from16 v0, p0

    #@3af
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    #@3b1
    move/from16 v20, v0

    #@3b3
    if-nez v20, :cond_1a

    #@3b5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@3b8
    move-result-object v20

    #@3b9
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3bc
    move-result-object v20

    #@3bd
    move-object/from16 v0, v20

    #@3bf
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@3c1
    move/from16 v20, v0

    #@3c3
    .line 2434
    const/16 v21, 0xb

    #@3c5
    .line 2433
    move/from16 v0, v20

    #@3c7
    move/from16 v1, v21

    #@3c9
    if-lt v0, v1, :cond_1b

    #@3cb
    .line 2436
    :cond_1a
    const/16 v20, 0x15

    #@3cd
    .line 2437
    const/16 v21, 0x0

    #@3cf
    .line 2435
    move/from16 v0, v20

    #@3d1
    move/from16 v1, v21

    #@3d3
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3d6
    move-result v20

    #@3d7
    if-eqz v20, :cond_1b

    #@3d9
    .line 2438
    const/16 v20, 0x1

    #@3db
    move-object/from16 v0, p0

    #@3dd
    move/from16 v1, v20

    #@3df
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    #@3e2
    .line 2442
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->hasSoftInputMode()Z

    #@3e5
    move-result v20

    #@3e6
    if-nez v20, :cond_1c

    #@3e8
    .line 2445
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@3ea
    move/from16 v20, v0

    #@3ec
    .line 2444
    const/16 v21, 0xd

    #@3ee
    .line 2443
    move/from16 v0, v21

    #@3f0
    move/from16 v1, v20

    #@3f2
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3f5
    move-result v20

    #@3f6
    move/from16 v0, v20

    #@3f8
    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@3fa
    .line 2449
    :cond_1c
    move-object/from16 v0, p0

    #@3fc
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@3fe
    move/from16 v20, v0

    #@400
    .line 2448
    const/16 v21, 0xb

    #@402
    move/from16 v0, v21

    #@404
    move/from16 v1, v20

    #@406
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@409
    move-result v20

    #@40a
    if-eqz v20, :cond_1e

    #@40c
    .line 2451
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@40f
    move-result v20

    #@410
    and-int/lit8 v20, v20, 0x2

    #@412
    if-nez v20, :cond_1d

    #@414
    .line 2452
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@416
    move/from16 v20, v0

    #@418
    or-int/lit8 v20, v20, 0x2

    #@41a
    move/from16 v0, v20

    #@41c
    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@41e
    .line 2454
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->haveDimAmount()Z

    #@421
    move-result v20

    #@422
    if-nez v20, :cond_1e

    #@424
    .line 2456
    const/16 v20, 0x0

    #@426
    const/high16 v21, 0x3f000000    # 0.5f

    #@428
    .line 2455
    move/from16 v0, v20

    #@42a
    move/from16 v1, v21

    #@42c
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@42f
    move-result v20

    #@430
    move/from16 v0, v20

    #@432
    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@434
    .line 2460
    :cond_1e
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@436
    move/from16 v20, v0

    #@438
    if-nez v20, :cond_1f

    #@43a
    .line 2462
    const/16 v20, 0x8

    #@43c
    const/16 v21, 0x0

    #@43e
    .line 2461
    move/from16 v0, v20

    #@440
    move/from16 v1, v21

    #@442
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@445
    move-result v20

    #@446
    move/from16 v0, v20

    #@448
    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@44a
    .line 2467
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@44d
    move-result-object v20

    #@44e
    if-nez v20, :cond_24

    #@450
    .line 2468
    move-object/from16 v0, p0

    #@452
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@454
    move-object/from16 v20, v0

    #@456
    if-nez v20, :cond_22

    #@458
    .line 2469
    move-object/from16 v0, p0

    #@45a
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@45c
    move/from16 v20, v0

    #@45e
    if-nez v20, :cond_20

    #@460
    .line 2471
    const/16 v20, 0x1

    #@462
    const/16 v21, 0x0

    #@464
    .line 2470
    move/from16 v0, v20

    #@466
    move/from16 v1, v21

    #@468
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@46b
    move-result v20

    #@46c
    move/from16 v0, v20

    #@46e
    move-object/from16 v1, p0

    #@470
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@472
    .line 2473
    :cond_20
    move-object/from16 v0, p0

    #@474
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    #@476
    move/from16 v20, v0

    #@478
    if-nez v20, :cond_21

    #@47a
    .line 2474
    const/16 v20, 0x2

    #@47c
    const/16 v21, 0x0

    #@47e
    move/from16 v0, v20

    #@480
    move/from16 v1, v21

    #@482
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@485
    move-result v20

    #@486
    move/from16 v0, v20

    #@488
    move-object/from16 v1, p0

    #@48a
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    #@48c
    .line 2477
    :cond_21
    const/16 v20, 0x2f

    #@48e
    const/16 v21, 0x0

    #@490
    .line 2476
    move/from16 v0, v20

    #@492
    move/from16 v1, v21

    #@494
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@497
    move-result v20

    #@498
    move/from16 v0, v20

    #@49a
    move-object/from16 v1, p0

    #@49c
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@49e
    .line 2484
    :cond_22
    move-object/from16 v0, p0

    #@4a0
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    #@4a2
    move/from16 v20, v0

    #@4a4
    if-eqz v20, :cond_23

    #@4a6
    .line 2485
    const/16 v20, 0x0

    #@4a8
    const/16 v21, 0x26

    #@4aa
    move/from16 v0, v21

    #@4ac
    move/from16 v1, v20

    #@4ae
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@4b1
    move-result v20

    #@4b2
    move/from16 v0, v20

    #@4b4
    move-object/from16 v1, p0

    #@4b6
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    #@4b8
    .line 2487
    :cond_23
    const/16 v20, 0x27

    #@4ba
    const/16 v21, 0x0

    #@4bc
    move/from16 v0, v20

    #@4be
    move/from16 v1, v21

    #@4c0
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4c3
    move-result v20

    #@4c4
    move/from16 v0, v20

    #@4c6
    move-object/from16 v1, p0

    #@4c8
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    #@4ca
    .line 2488
    const/16 v20, 0x7

    #@4cc
    const/16 v21, 0x0

    #@4ce
    move/from16 v0, v20

    #@4d0
    move/from16 v1, v21

    #@4d2
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@4d5
    move-result v20

    #@4d6
    move/from16 v0, v20

    #@4d8
    move-object/from16 v1, p0

    #@4da
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    #@4dc
    .line 2494
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@4df
    move-result v7

    #@4e0
    .line 2496
    .local v7, "features":I
    and-int/lit16 v0, v7, 0x800

    #@4e2
    move/from16 v20, v0

    #@4e4
    if-eqz v20, :cond_2d

    #@4e6
    .line 2497
    const v10, 0x10900d2

    #@4e9
    .line 2553
    .local v10, "layoutResource":I
    :goto_8
    move-object/from16 v0, p0

    #@4eb
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@4ed
    move-object/from16 v20, v0

    #@4ef
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/DecorView;->startChanging()V

    #@4f2
    .line 2554
    move-object/from16 v0, p0

    #@4f4
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@4f6
    move-object/from16 v20, v0

    #@4f8
    move-object/from16 v0, p0

    #@4fa
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@4fc
    move-object/from16 v21, v0

    #@4fe
    move-object/from16 v0, v20

    #@500
    move-object/from16 v1, v21

    #@502
    invoke-virtual {v0, v1, v10}, Lcom/android/internal/policy/DecorView;->onResourcesLoaded(Landroid/view/LayoutInflater;I)V

    #@505
    .line 2556
    const v20, 0x1020002

    #@508
    move-object/from16 v0, p0

    #@50a
    move/from16 v1, v20

    #@50c
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@50f
    move-result-object v5

    #@510
    check-cast v5, Landroid/view/ViewGroup;

    #@512
    .line 2557
    .local v5, "contentParent":Landroid/view/ViewGroup;
    if-nez v5, :cond_37

    #@514
    .line 2558
    new-instance v20, Ljava/lang/RuntimeException;

    #@516
    const-string/jumbo v21, "Window couldn\'t find content container view"

    #@519
    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@51c
    throw v20

    #@51d
    .line 2306
    .end local v5    # "contentParent":Landroid/view/ViewGroup;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "features":I
    .end local v10    # "layoutResource":I
    .end local v12    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "targetHcNeedsOptions":Z
    .end local v16    # "targetPreHoneycomb":Z
    .end local v17    # "targetPreIcs":Z
    .end local v18    # "targetPreL":Z
    .end local v19    # "targetSdk":I
    :cond_25
    const v20, 0x10100

    #@520
    move-object/from16 v0, p0

    #@522
    move/from16 v1, v20

    #@524
    invoke-virtual {v0, v1, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@527
    goto/16 :goto_0

    #@529
    .line 2311
    :cond_26
    const/16 v20, 0xf

    #@52b
    const/16 v21, 0x0

    #@52d
    move/from16 v0, v20

    #@52f
    move/from16 v1, v21

    #@531
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@534
    move-result v20

    #@535
    if-eqz v20, :cond_0

    #@537
    .line 2313
    const/16 v20, 0x8

    #@539
    move-object/from16 v0, p0

    #@53b
    move/from16 v1, v20

    #@53d
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@540
    goto/16 :goto_1

    #@542
    .line 2353
    :cond_27
    const/16 v20, 0x0

    #@544
    goto/16 :goto_2

    #@546
    .line 2393
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v19    # "targetSdk":I
    :cond_28
    const/16 v16, 0x0

    #@548
    .restart local v16    # "targetPreHoneycomb":Z
    goto/16 :goto_3

    #@54a
    .line 2394
    :cond_29
    const/16 v17, 0x0

    #@54c
    .restart local v17    # "targetPreIcs":Z
    goto/16 :goto_4

    #@54e
    .line 2395
    :cond_2a
    const/16 v18, 0x0

    #@550
    .restart local v18    # "targetPreL":Z
    goto/16 :goto_5

    #@552
    .line 2398
    .restart local v15    # "targetHcNeedsOptions":Z
    :cond_2b
    const/4 v11, 0x1

    #@553
    .local v11, "noActionBar":Z
    goto/16 :goto_6

    #@555
    .line 2403
    .end local v11    # "noActionBar":Z
    :cond_2c
    const/16 v20, 0x2

    #@557
    move-object/from16 v0, p0

    #@559
    move/from16 v1, v20

    #@55b
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    #@55e
    goto/16 :goto_7

    #@560
    .line 2498
    .restart local v7    # "features":I
    .restart local v12    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2d
    and-int/lit8 v20, v7, 0x18

    #@562
    if-eqz v20, :cond_2f

    #@564
    .line 2499
    move-object/from16 v0, p0

    #@566
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@568
    move/from16 v20, v0

    #@56a
    if-eqz v20, :cond_2e

    #@56c
    .line 2500
    new-instance v14, Landroid/util/TypedValue;

    #@56e
    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    #@571
    .line 2501
    .local v14, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@574
    move-result-object v20

    #@575
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@578
    move-result-object v20

    #@579
    .line 2502
    const v21, 0x1160029

    #@57c
    const/16 v22, 0x1

    #@57e
    .line 2501
    move-object/from16 v0, v20

    #@580
    move/from16 v1, v21

    #@582
    move/from16 v2, v22

    #@584
    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@587
    .line 2503
    iget v10, v14, Landroid/util/TypedValue;->resourceId:I

    #@589
    .line 2508
    .end local v14    # "res":Landroid/util/TypedValue;
    .restart local v10    # "layoutResource":I
    :goto_9
    const/16 v20, 0x8

    #@58b
    move-object/from16 v0, p0

    #@58d
    move/from16 v1, v20

    #@58f
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    #@592
    goto/16 :goto_8

    #@594
    .line 2505
    .end local v10    # "layoutResource":I
    :cond_2e
    const v10, 0x10900d4

    #@597
    .restart local v10    # "layoutResource":I
    goto :goto_9

    #@598
    .line 2510
    .end local v10    # "layoutResource":I
    :cond_2f
    and-int/lit8 v20, v7, 0x24

    #@59a
    if-eqz v20, :cond_30

    #@59c
    .line 2511
    and-int/lit16 v0, v7, 0x100

    #@59e
    move/from16 v20, v0

    #@5a0
    if-nez v20, :cond_30

    #@5a2
    .line 2514
    const v10, 0x10900cf

    #@5a5
    .line 2511
    .restart local v10    # "layoutResource":I
    goto/16 :goto_8

    #@5a7
    .line 2516
    .end local v10    # "layoutResource":I
    :cond_30
    and-int/lit16 v0, v7, 0x80

    #@5a9
    move/from16 v20, v0

    #@5ab
    if-eqz v20, :cond_32

    #@5ad
    .line 2519
    move-object/from16 v0, p0

    #@5af
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@5b1
    move/from16 v20, v0

    #@5b3
    if-eqz v20, :cond_31

    #@5b5
    .line 2520
    new-instance v14, Landroid/util/TypedValue;

    #@5b7
    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    #@5ba
    .line 2521
    .restart local v14    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@5bd
    move-result-object v20

    #@5be
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@5c1
    move-result-object v20

    #@5c2
    .line 2522
    const v21, 0x116002a

    #@5c5
    const/16 v22, 0x1

    #@5c7
    .line 2521
    move-object/from16 v0, v20

    #@5c9
    move/from16 v1, v21

    #@5cb
    move/from16 v2, v22

    #@5cd
    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@5d0
    .line 2523
    iget v10, v14, Landroid/util/TypedValue;->resourceId:I

    #@5d2
    .line 2528
    .end local v14    # "res":Landroid/util/TypedValue;
    .restart local v10    # "layoutResource":I
    :goto_a
    const/16 v20, 0x8

    #@5d4
    move-object/from16 v0, p0

    #@5d6
    move/from16 v1, v20

    #@5d8
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    #@5db
    goto/16 :goto_8

    #@5dd
    .line 2525
    .end local v10    # "layoutResource":I
    :cond_31
    const v10, 0x10900ce

    #@5e0
    .restart local v10    # "layoutResource":I
    goto :goto_a

    #@5e1
    .line 2529
    .end local v10    # "layoutResource":I
    :cond_32
    and-int/lit8 v20, v7, 0x2

    #@5e3
    if-nez v20, :cond_35

    #@5e5
    .line 2532
    move-object/from16 v0, p0

    #@5e7
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@5e9
    move/from16 v20, v0

    #@5eb
    if-eqz v20, :cond_33

    #@5ed
    .line 2533
    new-instance v14, Landroid/util/TypedValue;

    #@5ef
    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    #@5f2
    .line 2534
    .restart local v14    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@5f5
    move-result-object v20

    #@5f6
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@5f9
    move-result-object v20

    #@5fa
    .line 2535
    const v21, 0x116002b

    #@5fd
    const/16 v22, 0x1

    #@5ff
    .line 2534
    move-object/from16 v0, v20

    #@601
    move/from16 v1, v21

    #@603
    move/from16 v2, v22

    #@605
    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@608
    .line 2536
    iget v10, v14, Landroid/util/TypedValue;->resourceId:I

    #@60a
    .restart local v10    # "layoutResource":I
    goto/16 :goto_8

    #@60c
    .line 2537
    .end local v10    # "layoutResource":I
    .end local v14    # "res":Landroid/util/TypedValue;
    :cond_33
    and-int/lit16 v0, v7, 0x100

    #@60e
    move/from16 v20, v0

    #@610
    if-eqz v20, :cond_34

    #@612
    .line 2539
    const/16 v20, 0x30

    #@614
    .line 2540
    const v21, 0x10900cd

    #@617
    .line 2538
    move/from16 v0, v20

    #@619
    move/from16 v1, v21

    #@61b
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@61e
    move-result v10

    #@61f
    .restart local v10    # "layoutResource":I
    goto/16 :goto_8

    #@621
    .line 2542
    .end local v10    # "layoutResource":I
    :cond_34
    const v10, 0x10900d3

    #@624
    .restart local v10    # "layoutResource":I
    goto/16 :goto_8

    #@626
    .line 2545
    .end local v10    # "layoutResource":I
    :cond_35
    and-int/lit16 v0, v7, 0x400

    #@628
    move/from16 v20, v0

    #@62a
    if-eqz v20, :cond_36

    #@62c
    .line 2546
    const v10, 0x10900d1

    #@62f
    .restart local v10    # "layoutResource":I
    goto/16 :goto_8

    #@631
    .line 2549
    .end local v10    # "layoutResource":I
    :cond_36
    const v10, 0x10900d0

    #@634
    .restart local v10    # "layoutResource":I
    goto/16 :goto_8

    #@636
    .line 2561
    .restart local v5    # "contentParent":Landroid/view/ViewGroup;
    :cond_37
    and-int/lit8 v20, v7, 0x20

    #@638
    if-eqz v20, :cond_38

    #@63a
    .line 2562
    const/16 v20, 0x0

    #@63c
    move-object/from16 v0, p0

    #@63e
    move/from16 v1, v20

    #@640
    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    #@643
    move-result-object v13

    #@644
    .line 2563
    .local v13, "progress":Landroid/widget/ProgressBar;
    if-eqz v13, :cond_38

    #@646
    .line 2564
    const/16 v20, 0x1

    #@648
    move/from16 v0, v20

    #@64a
    invoke-virtual {v13, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@64d
    .line 2568
    .end local v13    # "progress":Landroid/widget/ProgressBar;
    :cond_38
    and-int/lit16 v0, v7, 0x800

    #@64f
    move/from16 v20, v0

    #@651
    if-eqz v20, :cond_39

    #@653
    .line 2569
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks()V

    #@656
    .line 2574
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@659
    move-result-object v20

    #@65a
    if-nez v20, :cond_3c

    #@65c
    .line 2576
    move-object/from16 v0, p0

    #@65e
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@660
    move/from16 v20, v0

    #@662
    if-eqz v20, :cond_3d

    #@664
    .line 2577
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@667
    move-result-object v20

    #@668
    move-object/from16 v0, p0

    #@66a
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@66c
    move/from16 v21, v0

    #@66e
    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@671
    move-result-object v4

    #@672
    .line 2581
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    :goto_b
    move-object/from16 v0, p0

    #@674
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@676
    move-object/from16 v20, v0

    #@678
    move-object/from16 v0, v20

    #@67a
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    #@67d
    .line 2584
    move-object/from16 v0, p0

    #@67f
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    #@681
    move/from16 v20, v0

    #@683
    if-eqz v20, :cond_3e

    #@685
    .line 2585
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@688
    move-result-object v20

    #@689
    move-object/from16 v0, p0

    #@68b
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    #@68d
    move/from16 v21, v0

    #@68f
    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@692
    move-result-object v9

    #@693
    .line 2589
    :goto_c
    move-object/from16 v0, p0

    #@695
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@697
    move-object/from16 v20, v0

    #@699
    move-object/from16 v0, v20

    #@69b
    invoke-virtual {v0, v9}, Lcom/android/internal/policy/DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    #@69e
    .line 2591
    move-object/from16 v0, p0

    #@6a0
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@6a2
    move-object/from16 v20, v0

    #@6a4
    move-object/from16 v0, p0

    #@6a6
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    #@6a8
    move/from16 v21, v0

    #@6aa
    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    #@6ad
    .line 2592
    move-object/from16 v0, p0

    #@6af
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@6b1
    move-object/from16 v20, v0

    #@6b3
    move-object/from16 v0, p0

    #@6b5
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    #@6b7
    move/from16 v21, v0

    #@6b9
    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    #@6bc
    .line 2594
    move-object/from16 v0, p0

    #@6be
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@6c0
    move-object/from16 v20, v0

    #@6c2
    if-eqz v20, :cond_3a

    #@6c4
    .line 2595
    move-object/from16 v0, p0

    #@6c6
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@6c8
    move-object/from16 v20, v0

    #@6ca
    move-object/from16 v0, p0

    #@6cc
    move-object/from16 v1, v20

    #@6ce
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    #@6d1
    .line 2598
    :cond_3a
    move-object/from16 v0, p0

    #@6d3
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    #@6d5
    move/from16 v20, v0

    #@6d7
    if-nez v20, :cond_3b

    #@6d9
    .line 2599
    move-object/from16 v0, p0

    #@6db
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    #@6dd
    move/from16 v20, v0

    #@6df
    move/from16 v0, v20

    #@6e1
    move-object/from16 v1, p0

    #@6e3
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    #@6e5
    .line 2601
    :cond_3b
    move-object/from16 v0, p0

    #@6e7
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    #@6e9
    move/from16 v20, v0

    #@6eb
    move-object/from16 v0, p0

    #@6ed
    move/from16 v1, v20

    #@6ef
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitleColor(I)V

    #@6f2
    .line 2604
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3c
    move-object/from16 v0, p0

    #@6f4
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@6f6
    move-object/from16 v20, v0

    #@6f8
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    #@6fb
    .line 2606
    return-object v5

    #@6fc
    .line 2579
    :cond_3d
    move-object/from16 v0, p0

    #@6fe
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@700
    .restart local v4    # "background":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_b

    #@702
    .line 2587
    :cond_3e
    const/4 v9, 0x0

    #@703
    .local v9, "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_c
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    #@0
    .prologue
    .line 3212
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    #@0
    .prologue
    .line 3222
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    #@0
    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1927
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "audio"

    #@b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/media/AudioManager;

    #@11
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    #@13
    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    #@15
    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    #@2
    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 488
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->findFocus()Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method getDecorCaptionShade()I
    .locals 1

    #@0
    .prologue
    .line 3777
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    #@2
    return v0
.end method

.method public final getDecorView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 2046
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 2047
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@b
    .line 2049
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@d
    return-object v0
.end method

.method public getElevation()F
    .locals 1

    #@0
    .prologue
    .line 1439
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    #@2
    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 3163
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 3174
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    #@0
    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@2
    return-object v0
.end method

.method getLocalFeaturesPrivate()I
    .locals 1

    #@0
    .prologue
    .line 3695
    invoke-super {p0}, Landroid/view/Window;->getLocalFeatures()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    #@0
    .prologue
    .line 3118
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@2
    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    #@0
    .prologue
    .line 3735
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    #@2
    return v0
.end method

.method getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    #@0
    .prologue
    .line 2810
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 3179
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    #@2
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    .line 3180
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 3168
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    #@2
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    .line 3169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 3185
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 3196
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 3201
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@2
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 3202
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    .line 3201
    :goto_0
    return-object v0

    #@b
    .line 3202
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 3190
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@2
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 3191
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    .line 3190
    :goto_0
    return-object v0

    #@b
    .line 3191
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    #@0
    .prologue
    .line 3246
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    #@8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getStatusBarColor()I
    .locals 1

    #@0
    .prologue
    .line 3721
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    #@2
    return v0
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 4

    #@0
    .prologue
    .line 3227
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    const-wide/16 v0, 0x12c

    #@a
    :goto_0
    return-wide v0

    #@b
    .line 3228
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    #@d
    goto :goto_0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    #@2
    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    #@0
    .prologue
    .line 3108
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    #@2
    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 6
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1390
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1391
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@9
    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@b
    .line 1392
    return v5

    #@c
    .line 1395
    :cond_0
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@e
    if-nez v2, :cond_1

    #@10
    .line 1396
    return v4

    #@11
    .line 1399
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    #@13
    if-nez v2, :cond_2

    #@15
    .line 1400
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    #@17
    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;)V

    #@1a
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    #@1c
    .line 1403
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_4

    #@22
    .line 1404
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@25
    move-result-object v2

    #@26
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    #@28
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    #@2b
    move-result-object v1

    #@2c
    .local v1, "menuView":Lcom/android/internal/view/menu/MenuView;
    :goto_0
    move-object v2, v1

    #@2d
    .line 1407
    check-cast v2, Landroid/view/View;

    #@2f
    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@31
    .line 1409
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@33
    if-eqz v2, :cond_5

    #@35
    .line 1411
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    #@38
    move-result v0

    #@39
    .line 1412
    .local v0, "defaultAnimations":I
    if-eqz v0, :cond_3

    #@3b
    .line 1413
    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    #@3d
    .line 1415
    :cond_3
    return v5

    #@3e
    .line 1405
    .end local v0    # "defaultAnimations":I
    .end local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@41
    move-result-object v2

    #@42
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    #@44
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    #@47
    move-result-object v1

    #@48
    goto :goto_0

    #@49
    .line 1417
    .restart local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_5
    return v4
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 8
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1337
    iget v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@3
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@9
    .line 1338
    const/16 v2, 0x51

    #@b
    iput v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    #@d
    .line 1339
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {p1, v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    #@14
    .line 1340
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@17
    move-result-object v2

    #@18
    .line 1341
    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    #@1a
    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    #@1c
    .line 1340
    const/4 v5, 0x0

    #@1d
    .line 1341
    const/4 v6, 0x0

    #@1e
    .line 1340
    invoke-virtual {v2, v5, v3, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@21
    move-result-object v0

    #@22
    .line 1342
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x26

    #@24
    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@27
    move-result v1

    #@28
    .line 1343
    .local v1, "elevation":F
    cmpl-float v2, v1, v7

    #@2a
    if-eqz v2, :cond_0

    #@2c
    .line 1344
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@2e
    invoke-virtual {v2, v1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    #@31
    .line 1346
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@34
    .line 1348
    const/4 v2, 0x1

    #@35
    return v2
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 11
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@0
    .prologue
    const v10, 0x1010397

    #@3
    const/4 v9, 0x0

    #@4
    const/4 v8, 0x1

    #@5
    .line 1287
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    .line 1290
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@b
    if-eqz v6, :cond_0

    #@d
    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@f
    const/16 v7, 0x8

    #@11
    if-ne v6, v7, :cond_3

    #@13
    .line 1291
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@15
    if-eqz v6, :cond_3

    #@17
    .line 1292
    new-instance v4, Landroid/util/TypedValue;

    #@19
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    #@1c
    .line 1293
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1f
    move-result-object v0

    #@20
    .line 1294
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010431

    #@23
    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@26
    .line 1296
    const/4 v5, 0x0

    #@27
    .line 1297
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    #@29
    if-eqz v6, :cond_4

    #@2b
    .line 1298
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@32
    move-result-object v5

    #@33
    .line 1299
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@36
    .line 1300
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    #@38
    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@3b
    .line 1301
    invoke-virtual {v5, v10, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@3e
    .line 1308
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    #@40
    if-eqz v6, :cond_2

    #@42
    .line 1309
    if-nez v5, :cond_1

    #@44
    .line 1310
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@4b
    move-result-object v5

    #@4c
    .line 1311
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@4f
    .line 1313
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    #@51
    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@54
    .line 1316
    :cond_2
    if-eqz v5, :cond_3

    #@56
    .line 1317
    new-instance v2, Landroid/view/ContextThemeWrapper;

    #@58
    invoke-direct {v2, v1, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@5b
    .line 1318
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@62
    move-object v1, v2

    #@63
    .line 1322
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    #@65
    invoke-direct {v3, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@68
    .line 1323
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@6b
    .line 1324
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@6e
    .line 1326
    return v8

    #@6f
    .line 1304
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    invoke-virtual {v0, v10, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@72
    goto :goto_0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 1773
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    #@7
    .line 1772
    return-void
.end method

.method public invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 963
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@3
    shl-int v1, v2, p1

    #@5
    or-int/2addr v0, v1

    #@6
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@8
    .line 965
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@a
    if-nez v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 966
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@12
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@17
    .line 967
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@19
    .line 962
    :cond_0
    return-void
.end method

.method public isFloating()Z
    .locals 1

    #@0
    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@2
    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2864
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 2865
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_0

    #@7
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@9
    if-eqz v2, :cond_0

    #@b
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@d
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    #@10
    move-result v1

    #@11
    :cond_0
    return v1
.end method

.method isShowingWallpaper()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 513
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@4
    move-result-object v1

    #@5
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@7
    const/high16 v2, 0x100000

    #@9
    and-int/2addr v1, v2

    #@a
    if-eqz v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    #@0
    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    #@2
    return v0
.end method

.method protected onActive()V
    .locals 0

    #@0
    .prologue
    .line 2041
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 674
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@3
    if-nez v2, :cond_3

    #@5
    .line 675
    invoke-virtual {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@8
    move-result-object v0

    #@9
    .line 676
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    #@b
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@d
    if-eqz v2, :cond_3

    #@f
    .line 677
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@11
    if-eqz v2, :cond_4

    #@13
    .line 679
    new-instance v1, Landroid/os/Bundle;

    #@15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@18
    .line 680
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 681
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@1e
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    #@21
    .line 683
    :cond_0
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 684
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@27
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    #@2a
    .line 689
    :cond_1
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    #@2d
    .line 692
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    #@30
    .line 695
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 696
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@36
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    #@39
    .line 698
    :cond_2
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@3b
    if-eqz v2, :cond_3

    #@3d
    .line 699
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@3f
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    #@42
    .line 672
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .end local v1    # "state":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    #@43
    .line 705
    .restart local v0    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    #@46
    goto :goto_0
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    #@0
    .prologue
    .line 1555
    const/4 v1, 0x3

    #@1
    if-ne p1, v1, :cond_0

    #@3
    .line 1556
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    #@6
    move-result-object v0

    #@7
    .line 1563
    .local v0, "view":Landroid/widget/ImageView;
    :goto_0
    if-eqz p2, :cond_2

    #@9
    .line 1564
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@c
    .line 1565
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    .line 1566
    const/4 v1, 0x0

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@13
    .line 1553
    :goto_1
    return-void

    #@14
    .line 1557
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x4

    #@15
    if-ne p1, v1, :cond_1

    #@17
    .line 1558
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    #@1a
    move-result-object v0

    #@1b
    .restart local v0    # "view":Landroid/widget/ImageView;
    goto :goto_0

    #@1c
    .line 1560
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_1
    return-void

    #@1d
    .line 1568
    .restart local v0    # "view":Landroid/widget/ImageView;
    :cond_2
    const/16 v1, 0x8

    #@1f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@22
    goto :goto_1
.end method

.method protected onIntChanged(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1580
    const/4 v1, 0x2

    #@1
    if-eq p1, v1, :cond_0

    #@3
    const/4 v1, 0x5

    #@4
    if-ne p1, v1, :cond_2

    #@6
    .line 1581
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateProgressBars(I)V

    #@9
    .line 1579
    :cond_1
    :goto_0
    return-void

    #@a
    .line 1582
    :cond_2
    const/4 v1, 0x7

    #@b
    if-ne p1, v1, :cond_1

    #@d
    .line 1583
    const v1, 0x1020045

    #@10
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/widget/FrameLayout;

    #@16
    .line 1584
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1

    #@18
    .line 1585
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@1a
    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@1d
    goto :goto_0
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1844
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@4
    if-eqz v3, :cond_1

    #@6
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@8
    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@b
    move-result-object v1

    #@c
    .line 1848
    :goto_0
    sparse-switch p2, :sswitch_data_0

    #@f
    .line 1914
    :cond_0
    return v2

    #@10
    .line 1844
    :cond_1
    const/4 v1, 0x0

    #@11
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    goto :goto_0

    #@12
    .line 1852
    .end local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    const/4 v0, 0x0

    #@13
    .line 1853
    .local v0, "direction":I
    sparse-switch p2, :sswitch_data_1

    #@16
    .line 1866
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 1867
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@1c
    invoke-virtual {v2, v0, v5}, Landroid/media/session/MediaController;->adjustVolume(II)V

    #@1f
    .line 1874
    :goto_2
    return v5

    #@20
    .line 1855
    :sswitch_1
    const/4 v0, 0x1

    #@21
    .line 1856
    goto :goto_1

    #@22
    .line 1858
    :sswitch_2
    const/4 v0, -0x1

    #@23
    .line 1859
    goto :goto_1

    #@24
    .line 1861
    :sswitch_3
    const/16 v0, 0x65

    #@26
    .line 1862
    goto :goto_1

    #@27
    .line 1869
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@2e
    move-result-object v2

    #@2f
    .line 1870
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    #@31
    .line 1871
    const/16 v4, 0x1011

    #@33
    .line 1869
    invoke-virtual {v2, v3, v0, v4}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    #@36
    goto :goto_2

    #@37
    .line 1889
    .end local v0    # "direction":I
    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@39
    if-eqz v3, :cond_3

    #@3b
    .line 1890
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@3d
    invoke-virtual {v3, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_3

    #@43
    .line 1891
    return v5

    #@44
    .line 1894
    :cond_3
    return v2

    #@45
    .line 1898
    :sswitch_5
    if-gez p1, :cond_4

    #@47
    move p1, v2

    #@48
    .end local p1    # "featureId":I
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    #@4b
    .line 1899
    return v5

    #@4c
    .line 1903
    .restart local p1    # "featureId":I
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@4f
    move-result v3

    #@50
    if-gtz v3, :cond_0

    #@52
    .line 1904
    if-ltz p1, :cond_0

    #@54
    .line 1906
    if-eqz v1, :cond_5

    #@56
    .line 1907
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@59
    .line 1909
    :cond_5
    return v5

    #@5a
    .line 1848
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_4
        0x52 -> :sswitch_5
        0x55 -> :sswitch_4
        0x56 -> :sswitch_4
        0x57 -> :sswitch_4
        0x58 -> :sswitch_4
        0x59 -> :sswitch_4
        0x5a -> :sswitch_4
        0x5b -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_4
        0xa4 -> :sswitch_0
    .end sparse-switch

    #@9c
    .line 1853
    :sswitch_data_1
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0xa4 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1015
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v0

    #@5
    .line 1017
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 1019
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@d
    .line 1021
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@10
    move-result-object v1

    #@11
    .line 1022
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    #@13
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 1027
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    return v3

    #@18
    .line 1023
    .restart local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@1b
    move-result v2

    #@1c
    return v2
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v7, 0x1014

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 1940
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@7
    if-eqz v4, :cond_0

    #@9
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@b
    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@e
    move-result-object v0

    #@f
    .line 1941
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    if-eqz v0, :cond_1

    #@11
    .line 1942
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@14
    .line 1947
    :cond_1
    sparse-switch p2, :sswitch_data_0

    #@17
    .line 2037
    :cond_2
    return v3

    #@18
    .line 1950
    :sswitch_0
    const/16 v1, 0x1014

    #@1a
    .line 1954
    .local v1, "flags":I
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@1c
    if-eqz v4, :cond_3

    #@1e
    .line 1955
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@20
    invoke-virtual {v4, v3, v7}, Landroid/media/session/MediaController;->adjustVolume(II)V

    #@23
    .line 1960
    :goto_0
    return v6

    #@24
    .line 1957
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@27
    move-result-object v4

    #@28
    invoke-static {v4}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@2b
    move-result-object v4

    #@2c
    .line 1958
    iget v5, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    #@2e
    .line 1957
    invoke-virtual {v4, v5, v3, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    #@31
    goto :goto_0

    #@32
    .line 1967
    .end local v1    # "flags":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    #@35
    move-result-object v3

    #@36
    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    #@38
    invoke-virtual {v3, p3, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    #@3b
    .line 1968
    return v6

    #@3c
    .line 1983
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@3e
    if-eqz v4, :cond_4

    #@40
    .line 1984
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@42
    invoke-virtual {v4, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_4

    #@48
    .line 1985
    return v6

    #@49
    .line 1988
    :cond_4
    return v3

    #@4a
    .line 1992
    :sswitch_3
    if-gez p1, :cond_5

    #@4c
    move p1, v3

    #@4d
    .end local p1    # "featureId":I
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    #@50
    .line 1994
    return v6

    #@51
    .line 1998
    .restart local p1    # "featureId":I
    :sswitch_4
    if-ltz p1, :cond_2

    #@53
    .line 1999
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_2

    #@59
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    #@5c
    move-result v4

    #@5d
    if-nez v4, :cond_2

    #@5f
    .line 2000
    if-nez p1, :cond_6

    #@61
    .line 2001
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@64
    move-result-object v2

    #@65
    .line 2002
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_6

    #@67
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@69
    if-eqz v3, :cond_6

    #@6b
    .line 2005
    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    #@6e
    .line 2006
    return v6

    #@6f
    .line 2009
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    #@72
    .line 2010
    return v6

    #@73
    .line 2020
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    #@7a
    move-result v4

    #@7b
    if-nez v4, :cond_2

    #@7d
    .line 2023
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    #@80
    move-result v3

    #@81
    if-eqz v3, :cond_7

    #@83
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    #@86
    move-result v3

    #@87
    if-eqz v3, :cond_8

    #@89
    .line 2026
    :cond_7
    :goto_1
    return v6

    #@8a
    .line 2024
    :cond_8
    invoke-direct {p0, p3}, Lcom/android/internal/policy/PhoneWindow;->launchDefaultSearch(Landroid/view/KeyEvent;)Z

    #@8d
    goto :goto_1

    #@8e
    .line 2030
    :sswitch_6
    iget-boolean v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    #@90
    if-eqz v3, :cond_9

    #@92
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    #@95
    move-result v3

    #@96
    if-eqz v3, :cond_a

    #@98
    .line 2033
    :cond_9
    :goto_2
    return v6

    #@99
    .line 2031
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    #@9c
    move-result-object v3

    #@9d
    invoke-interface {v3}, Landroid/view/Window$WindowControllerCallback;->enterPictureInPictureModeIfPossible()V

    #@a0
    goto :goto_2

    #@a1
    .line 1947
    nop

    #@a2
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x52 -> :sswitch_3
        0x54 -> :sswitch_5
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_1
        0xab -> :sswitch_6
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1037
    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@3
    if-eqz v4, :cond_5

    #@5
    .line 1038
    iput v6, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@7
    .line 1040
    invoke-virtual {p0, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@a
    move-result-object v3

    #@b
    .line 1042
    .local v3, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_0

    #@11
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@13
    if-eqz v4, :cond_1

    #@15
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@17
    iget-object v4, v4, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 1044
    :cond_0
    return-void

    #@1c
    .line 1043
    :cond_1
    if-eqz v3, :cond_0

    #@1e
    .line 1047
    const/4 v1, 0x0

    #@1f
    .line 1048
    .local v1, "playSoundEffect":Z
    if-nez p1, :cond_2

    #@21
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 1049
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@27
    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    #@2a
    move-result v4

    #@2b
    .line 1048
    if-eqz v4, :cond_2

    #@2d
    .line 1050
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@30
    move-result-object v4

    #@31
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_6

    #@3b
    .line 1059
    :cond_2
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@3d
    if-nez v4, :cond_3

    #@3f
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@41
    if-eqz v4, :cond_8

    #@43
    .line 1063
    :cond_3
    iget-boolean v1, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@45
    .line 1066
    .local v1, "playSoundEffect":Z
    const/4 v4, 0x1

    #@46
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@49
    .line 1089
    .end local v1    # "playSoundEffect":Z
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    #@4b
    .line 1090
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@4e
    move-result-object v4

    #@4f
    .line 1091
    const-string/jumbo v5, "audio"

    #@52
    .line 1090
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Landroid/media/AudioManager;

    #@58
    .line 1092
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_a

    #@5a
    .line 1093
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@5d
    .line 1035
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    :goto_1
    return-void

    #@5e
    .line 1051
    .local v1, "playSoundEffect":Z
    .restart local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@60
    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    #@63
    move-result v4

    #@64
    if-nez v4, :cond_7

    #@66
    .line 1052
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@69
    move-result v4

    #@6a
    if-nez v4, :cond_4

    #@6c
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@6f
    move-result v4

    #@70
    if-eqz v4, :cond_4

    #@72
    .line 1053
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@74
    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    #@77
    move-result v1

    #@78
    .local v1, "playSoundEffect":Z
    goto :goto_0

    #@79
    .line 1056
    .local v1, "playSoundEffect":Z
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@7b
    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    #@7e
    move-result v1

    #@7f
    .local v1, "playSoundEffect":Z
    goto :goto_0

    #@80
    .line 1068
    .local v1, "playSoundEffect":Z
    :cond_8
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@82
    if-eqz v4, :cond_4

    #@84
    .line 1069
    const/4 v2, 0x1

    #@85
    .line 1070
    .local v2, "show":Z
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    #@87
    if-eqz v4, :cond_9

    #@89
    .line 1073
    iput-boolean v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@8b
    .line 1074
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@8e
    move-result v2

    #@8f
    .line 1077
    .end local v2    # "show":Z
    :cond_9
    if-eqz v2, :cond_4

    #@91
    .line 1079
    const v4, 0xc351

    #@94
    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(II)I

    #@97
    .line 1082
    invoke-direct {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    #@9a
    .line 1084
    const/4 v1, 0x1

    #@9b
    goto :goto_0

    #@9c
    .line 1095
    .end local v1    # "playSoundEffect":Z
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_a
    const-string/jumbo v4, "PhoneWindow"

    #@9f
    const-string/jumbo v5, "Couldn\'t get audio manager"

    #@a2
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    goto :goto_1
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1211
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@3
    move-result-object v0

    #@4
    .line 1212
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 1218
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 1213
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@15
    move-result-object v1

    #@16
    .line 1214
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    #@18
    .line 1215
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@1a
    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    #@1d
    move-result v2

    #@1e
    return v2
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 1222
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    #@4
    .line 1221
    return-void
.end method

.method public onMultiWindowModeChanged()V
    .locals 2

    #@0
    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@15
    .line 712
    :cond_0
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 1367
    invoke-virtual {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@5
    move-result-object v1

    #@6
    .line 1368
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    #@8
    return-void

    #@9
    .line 1370
    :cond_0
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 1371
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@f
    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    #@15
    move-object v0, v3

    #@16
    .line 1372
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    if-eqz v0, :cond_2

    #@18
    .line 1373
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    #@1b
    move-result v3

    #@1c
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@1e
    .line 1374
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    #@21
    move-result-object v2

    #@22
    .line 1375
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_2

    #@24
    .line 1376
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    #@26
    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@29
    .line 1366
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_2
    return-void
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 740
    if-nez p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 741
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@8
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    #@b
    move-result v0

    #@c
    .line 740
    if-eqz v0, :cond_0

    #@e
    .line 742
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 745
    :cond_0
    const/4 v0, 0x1

    #@1d
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    #@24
    .line 739
    :goto_0
    return-void

    #@25
    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@27
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    #@2a
    goto :goto_0
.end method

.method openPanelsAfterRestore()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2193
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@3
    .line 2195
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    #@5
    .line 2196
    return-void

    #@6
    .line 2200
    :cond_0
    array-length v3, v1

    #@7
    add-int/lit8 v0, v3, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@b
    .line 2201
    aget-object v2, v1, v0

    #@d
    .line 2205
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    #@f
    .line 2206
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    #@12
    .line 2207
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@14
    if-nez v3, :cond_1

    #@16
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 2208
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    #@1c
    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@1e
    .line 2209
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    #@21
    .line 2200
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@23
    goto :goto_0

    #@24
    .line 2192
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    return-void
.end method

.method public final peekDecorView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 2054
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1180
    invoke-virtual {p0, p1, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@5
    move-result-object v1

    #@6
    .line 1181
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    #@8
    const/16 v3, 0x52

    #@a
    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    #@d
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 1182
    return v4

    #@14
    .line 1184
    :cond_0
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@16
    if-nez v2, :cond_1

    #@18
    .line 1185
    return v4

    #@19
    .line 1188
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1b
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    #@1e
    move-result v0

    #@1f
    .line 1191
    .local v0, "res":Z
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@21
    if-nez v2, :cond_2

    #@23
    .line 1192
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@26
    .line 1195
    :cond_2
    return v0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 1146
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1151
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    if-nez p1, :cond_1

    #@a
    .line 1152
    :cond_0
    return v2

    #@b
    .line 1155
    :cond_1
    const/4 v0, 0x0

    #@c
    .line 1159
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@e
    if-nez v1, :cond_2

    #@10
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_3

    #@16
    :cond_2
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@18
    if-eqz v1, :cond_3

    #@1a
    .line 1161
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1c
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    #@1f
    move-result v0

    #@20
    .line 1164
    .end local v0    # "handled":Z
    :cond_3
    if-eqz v0, :cond_4

    #@22
    .line 1166
    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@24
    .line 1169
    and-int/lit8 v1, p4, 0x1

    #@26
    if-nez v1, :cond_4

    #@28
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@2a
    if-nez v1, :cond_4

    #@2c
    .line 1170
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@2f
    .line 1174
    :cond_4
    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 567
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 568
    return v5

    #@a
    .line 572
    :cond_0
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 573
    return v4

    #@f
    .line 576
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@11
    if-eqz v3, :cond_2

    #@13
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@15
    if-eq v3, p1, :cond_2

    #@17
    .line 578
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@19
    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@1c
    .line 581
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@1f
    move-result-object v0

    #@20
    .line 583
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    #@22
    .line 584
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@24
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    #@27
    move-result-object v3

    #@28
    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@2a
    .line 588
    :cond_3
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@2c
    if-eqz v3, :cond_4

    #@2e
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@30
    const/16 v6, 0x8

    #@32
    if-ne v3, v6, :cond_8

    #@34
    :cond_4
    move v1, v4

    #@35
    .line 590
    .local v1, "isActionBarMenu":Z
    :goto_0
    if-eqz v1, :cond_5

    #@37
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@39
    if-eqz v3, :cond_5

    #@3b
    .line 593
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@3d
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    #@40
    .line 596
    :cond_5
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@42
    if-nez v3, :cond_12

    #@44
    .line 598
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@46
    if-eqz v3, :cond_6

    #@48
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    #@4a
    if-eqz v3, :cond_c

    #@4c
    .line 599
    :cond_6
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4e
    if-nez v3, :cond_9

    #@50
    .line 600
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_7

    #@56
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@58
    if-nez v3, :cond_9

    #@5a
    .line 601
    :cond_7
    return v5

    #@5b
    .end local v1    # "isActionBarMenu":Z
    :cond_8
    move v1, v5

    #@5c
    .line 588
    goto :goto_0

    #@5d
    .line 605
    .restart local v1    # "isActionBarMenu":Z
    :cond_9
    if-eqz v1, :cond_b

    #@5f
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@61
    if-eqz v3, :cond_b

    #@63
    .line 606
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@65
    if-nez v3, :cond_a

    #@67
    .line 607
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@69
    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;)V

    #@6c
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@6e
    .line 609
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@70
    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@72
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@74
    invoke-interface {v3, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@77
    .line 616
    :cond_b
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@79
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@7c
    .line 617
    if-eqz v0, :cond_f

    #@7e
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@80
    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@82
    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    #@85
    move-result v3

    #@86
    if-eqz v3, :cond_f

    #@88
    .line 629
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    #@8a
    .line 636
    :cond_c
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@8c
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@8f
    .line 640
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@91
    if-eqz v3, :cond_d

    #@93
    .line 641
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@95
    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@97
    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    #@9a
    .line 642
    iput-object v8, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@9c
    .line 645
    :cond_d
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@9e
    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@a0
    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@a2
    invoke-interface {v0, v3, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@a5
    move-result v3

    #@a6
    if-nez v3, :cond_11

    #@a8
    .line 646
    if-eqz v1, :cond_e

    #@aa
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@ac
    if-eqz v3, :cond_e

    #@ae
    .line 649
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@b0
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@b2
    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@b5
    .line 651
    :cond_e
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@b7
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@ba
    .line 652
    return v5

    #@bb
    .line 619
    :cond_f
    invoke-virtual {p1, v8}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@be
    .line 621
    if-eqz v1, :cond_10

    #@c0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@c2
    if-eqz v3, :cond_10

    #@c4
    .line 623
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@c6
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@c8
    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@cb
    .line 626
    :cond_10
    return v5

    #@cc
    .line 657
    :cond_11
    if-eqz p2, :cond_13

    #@ce
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@d1
    move-result v3

    #@d2
    .line 656
    :goto_1
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@d5
    move-result-object v2

    #@d6
    .line 658
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    #@d9
    move-result v3

    #@da
    if-eq v3, v4, :cond_14

    #@dc
    move v3, v4

    #@dd
    :goto_2
    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    #@df
    .line 659
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@e1
    iget-boolean v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    #@e3
    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    #@e6
    .line 660
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@e8
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@eb
    .line 664
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_12
    iput-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@ed
    .line 665
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@ef
    .line 666
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@f1
    .line 668
    return v4

    #@f2
    .line 657
    :cond_13
    const/4 v3, -0x1

    #@f3
    goto :goto_1

    #@f4
    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v3, v5

    #@f5
    .line 658
    goto :goto_2
.end method

.method public reportActivityRelaunched()V
    .locals 1

    #@0
    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportActivityRelaunched()V

    #@15
    .line 719
    :cond_0
    return-void
.end method

.method public requestFeature(I)Z
    .locals 6
    .param p1, "featureId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/16 v4, 0x8

    #@3
    const/4 v3, 0x0

    #@4
    .line 335
    iget-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 336
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@a
    const-string/jumbo v3, "requestFeature() must be called before adding content"

    #@d
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    #@14
    move-result v0

    #@15
    .line 339
    .local v0, "features":I
    shl-int v2, v5, p1

    #@17
    or-int v1, v0, v2

    #@19
    .line 340
    .local v1, "newFeatures":I
    and-int/lit16 v2, v1, 0x80

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 341
    and-int/lit16 v2, v1, -0x34c2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 344
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@23
    .line 345
    const-string/jumbo v3, "You cannot combine custom titles with other title features"

    #@26
    .line 344
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 347
    :cond_1
    and-int/lit8 v2, v0, 0x2

    #@2c
    if-eqz v2, :cond_2

    #@2e
    if-ne p1, v4, :cond_2

    #@30
    .line 348
    return v3

    #@31
    .line 350
    :cond_2
    and-int/lit16 v2, v0, 0x100

    #@33
    if-eqz v2, :cond_3

    #@35
    if-ne p1, v5, :cond_3

    #@37
    .line 352
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    #@3a
    .line 355
    :cond_3
    and-int/lit16 v2, v0, 0x100

    #@3c
    if-eqz v2, :cond_4

    #@3e
    const/16 v2, 0xb

    #@40
    if-ne p1, v2, :cond_4

    #@42
    .line 356
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@44
    .line 357
    const-string/jumbo v3, "You cannot combine swipe dismissal and the action bar."

    #@47
    .line 356
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2

    #@4b
    .line 359
    :cond_4
    and-int/lit16 v2, v0, 0x800

    #@4d
    if-eqz v2, :cond_5

    #@4f
    if-ne p1, v4, :cond_5

    #@51
    .line 360
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@53
    .line 361
    const-string/jumbo v3, "You cannot combine swipe dismissal and the action bar."

    #@56
    .line 360
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@59
    throw v2

    #@5a
    .line 364
    :cond_5
    const/4 v2, 0x5

    #@5b
    if-ne p1, v2, :cond_6

    #@5d
    .line 365
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@64
    move-result-object v2

    #@65
    const-string/jumbo v3, "android.hardware.type.watch"

    #@68
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@6b
    move-result v2

    #@6c
    .line 364
    if-eqz v2, :cond_6

    #@6e
    .line 366
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@70
    const-string/jumbo v3, "You cannot use indeterminate progress on a watch."

    #@73
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@76
    throw v2

    #@77
    .line 368
    :cond_6
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    #@7a
    move-result v2

    #@7b
    return v2
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 2099
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 2100
    return-void

    #@6
    .line 2104
    :cond_0
    const-string/jumbo v5, "android:views"

    #@9
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@c
    move-result-object v4

    #@d
    .line 2105
    .local v4, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_1

    #@f
    .line 2106
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@11
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@14
    .line 2110
    :cond_1
    const-string/jumbo v5, "android:focusedViewId"

    #@17
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1a
    move-result v1

    #@1b
    .line 2111
    .local v1, "focusedViewId":I
    if-eq v1, v6, :cond_2

    #@1d
    .line 2112
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1f
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@22
    move-result-object v2

    #@23
    .line 2113
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_5

    #@25
    .line 2114
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    #@28
    .line 2123
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_2
    :goto_0
    const-string/jumbo v5, "android:Panels"

    #@2b
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@2e
    move-result-object v3

    #@2f
    .line 2124
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_3

    #@31
    .line 2125
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    #@34
    .line 2128
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@36
    if-eqz v5, :cond_4

    #@38
    .line 2130
    const-string/jumbo v5, "android:ActionBar"

    #@3b
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@3e
    move-result-object v0

    #@3f
    .line 2131
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_6

    #@41
    .line 2132
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->doPendingInvalidatePanelMenu()V

    #@44
    .line 2133
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@46
    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    #@49
    .line 2098
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_4
    :goto_1
    return-void

    #@4a
    .line 2116
    .end local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v2    # "needsFocus":Landroid/view/View;
    :cond_5
    const-string/jumbo v5, "PhoneWindow"

    #@4d
    .line 2117
    new-instance v6, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v7, "Previously focused view reported id "

    #@55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    .line 2118
    const-string/jumbo v7, " during save, but can\'t be found during restore."

    #@60
    .line 2117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v6

    #@68
    .line 2116
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    goto :goto_0

    #@6c
    .line 2135
    .end local v2    # "needsFocus":Landroid/view/View;
    .restart local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6
    const-string/jumbo v5, "PhoneWindow"

    #@6f
    const-string/jumbo v6, "Missing saved instance states for action bar views! State will not be restored."

    #@72
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    goto :goto_1
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 7

    #@0
    .prologue
    .line 2065
    new-instance v2, Landroid/os/Bundle;

    #@2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 2066
    .local v2, "outState":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@7
    if-nez v5, :cond_0

    #@9
    .line 2067
    return-object v2

    #@a
    .line 2070
    :cond_0
    new-instance v4, Landroid/util/SparseArray;

    #@c
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    #@f
    .line 2071
    .local v4, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@11
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@14
    .line 2072
    const-string/jumbo v5, "android:views"

    #@17
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@1a
    .line 2075
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1c
    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    #@1f
    move-result-object v1

    #@20
    .line 2076
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_1

    #@22
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    #@25
    move-result v5

    #@26
    const/4 v6, -0x1

    #@27
    if-eq v5, v6, :cond_1

    #@29
    .line 2077
    const-string/jumbo v5, "android:focusedViewId"

    #@2c
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    #@2f
    move-result v6

    #@30
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@33
    .line 2081
    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    #@35
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@38
    .line 2082
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    #@3b
    .line 2083
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@3e
    move-result v5

    #@3f
    if-lez v5, :cond_2

    #@41
    .line 2084
    const-string/jumbo v5, "android:Panels"

    #@44
    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@47
    .line 2087
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@49
    if-eqz v5, :cond_3

    #@4b
    .line 2088
    new-instance v0, Landroid/util/SparseArray;

    #@4d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@50
    .line 2089
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@52
    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    #@55
    .line 2090
    const-string/jumbo v5, "android:ActionBar"

    #@58
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@5b
    .line 2093
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_3
    return-object v2
.end method

.method sendCloseSystemWindows()V
    .locals 2

    #@0
    .prologue
    .line 3703
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    #@8
    .line 3702
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3707
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    #@7
    .line 3706
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 3207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@6
    .line 3206
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allowExitTransitionOverlap"    # Z

    #@0
    .prologue
    .line 3217
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@6
    .line 3216
    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 3782
    invoke-super {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@3
    .line 3783
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3784
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    #@c
    .line 3781
    :cond_0
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1452
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-ne p1, v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 1453
    :cond_0
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@b
    .line 1454
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    .line 1455
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1456
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@13
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    #@16
    .line 1458
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 1459
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@1c
    if-eqz p1, :cond_3

    #@1e
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(I)V

    #@21
    .line 1451
    :cond_2
    return-void

    #@22
    .line 1459
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@24
    goto :goto_0
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 2852
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 2853
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    #@7
    .line 2854
    const/4 v1, 0x0

    #@8
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@b
    .line 2851
    return-void
.end method

.method public final setChildInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 2859
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    #@4
    .line 2858
    return-void
.end method

.method public final setClipToOutline(Z)V
    .locals 1
    .param p1, "clipToOutline"    # Z

    #@0
    .prologue
    .line 1444
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    #@2
    .line 1445
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1446
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    #@b
    .line 1443
    :cond_0
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .locals 0
    .param p1, "container"    # Landroid/view/Window;

    #@0
    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    #@3
    .line 329
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "layoutResID"    # I

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    .line 401
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@4
    if-nez v2, :cond_2

    #@6
    .line 402
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@9
    .line 407
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_3

    #@f
    .line 408
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@11
    .line 409
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@14
    move-result-object v3

    #@15
    .line 408
    invoke-static {v2, p1, v3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    #@18
    move-result-object v1

    #@19
    .line 410
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    #@1c
    .line 414
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1e
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    #@21
    .line 415
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@24
    move-result-object v0

    #@25
    .line 416
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    #@27
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_4

    #@2d
    .line 419
    :cond_1
    :goto_2
    const/4 v2, 0x1

    #@2e
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    #@30
    .line 397
    return-void

    #@31
    .line 403
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_0

    #@37
    .line 404
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@39
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    #@3c
    goto :goto_0

    #@3d
    .line 412
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@3f
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@41
    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@44
    goto :goto_1

    #@45
    .line 417
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    #@48
    goto :goto_2
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 424
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@9
    .line 423
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    .line 432
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@4
    if-nez v2, :cond_2

    #@6
    .line 433
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@9
    .line 438
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_3

    #@f
    .line 439
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 440
    new-instance v1, Landroid/transition/Scene;

    #@14
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@16
    invoke-direct {v1, v2, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@19
    .line 441
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    #@1c
    .line 445
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1e
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    #@21
    .line 446
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@24
    move-result-object v0

    #@25
    .line 447
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    #@27
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_4

    #@2d
    .line 450
    :cond_1
    :goto_2
    const/4 v2, 0x1

    #@2e
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    #@30
    .line 428
    return-void

    #@31
    .line 434
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_0

    #@37
    .line 435
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@39
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    #@3c
    goto :goto_0

    #@3d
    .line 443
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@3f
    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@42
    goto :goto_1

    #@43
    .line 448
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    #@46
    goto :goto_2
.end method

.method public setDecorCaptionShade(I)V
    .locals 1
    .param p1, "decorCaptionShade"    # I

    #@0
    .prologue
    .line 3770
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    #@2
    .line 3771
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3772
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionShade()V

    #@b
    .line 3769
    :cond_0
    return-void
.end method

.method public setDefaultIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1728
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1729
    return-void

    #@7
    .line 1731
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    #@9
    .line 1732
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@b
    if-eqz v0, :cond_2

    #@d
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@f
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1733
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@17
    and-int/lit8 v0, v0, 0x4

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1734
    :cond_1
    if-eqz p1, :cond_3

    #@1d
    .line 1735
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@1f
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    #@22
    .line 1736
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@24
    and-int/lit8 v0, v0, -0x5

    #@26
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@28
    .line 1727
    :cond_2
    :goto_0
    return-void

    #@29
    .line 1738
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@2b
    .line 1739
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    #@36
    move-result-object v1

    #@37
    .line 1738
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@3a
    .line 1740
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@3c
    or-int/lit8 v0, v0, 0x4

    #@3e
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@40
    goto :goto_0
.end method

.method public setDefaultLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1756
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1757
    return-void

    #@7
    .line 1759
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    #@9
    .line 1760
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@f
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 1755
    :cond_1
    :goto_0
    return-void

    #@16
    .line 1761
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@18
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    #@1b
    goto :goto_0
.end method

.method protected setDefaultWindowFormat(I)V
    .locals 0
    .param p1, "format"    # I

    #@0
    .prologue
    .line 3699
    invoke-super {p0, p1}, Landroid/view/Window;->setDefaultWindowFormat(I)V

    #@3
    .line 3698
    return-void
.end method

.method public final setElevation(F)V
    .locals 4
    .param p1, "elevation"    # F

    #@0
    .prologue
    .line 1428
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    #@2
    .line 1429
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v0

    #@6
    .line 1430
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1431
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@c
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    #@f
    .line 1432
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@11
    const/4 v2, 0x1

    #@12
    const/4 v3, 0x0

    #@13
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    #@16
    .line 1434
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@19
    .line 1427
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 3123
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    #@2
    .line 3122
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 3133
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    #@2
    .line 3132
    return-void
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1515
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 1516
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    #@7
    if-eq v1, p2, :cond_0

    #@9
    .line 1517
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    #@b
    .line 1518
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@f
    .line 1514
    :cond_0
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1496
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@5
    move-result-object v0

    #@6
    .line 1497
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    #@8
    .line 1498
    const/4 v1, 0x0

    #@9
    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    #@b
    .line 1499
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    #@d
    if-eq v1, p2, :cond_0

    #@f
    .line 1500
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    #@11
    .line 1501
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@14
    .line 1495
    :cond_0
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    #@0
    .prologue
    .line 1507
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 1508
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    #@7
    if-eq v1, p2, :cond_0

    #@9
    .line 1509
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    #@b
    .line 1510
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@f
    .line 1506
    :cond_0
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1466
    if-eqz p2, :cond_1

    #@4
    .line 1467
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@8
    move-result-object v0

    #@9
    .line 1468
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    #@b
    if-eq v1, p2, :cond_0

    #@d
    .line 1469
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    #@f
    .line 1470
    iput-object v3, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    #@11
    .line 1471
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v1

    #@19
    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    #@1b
    .line 1472
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@1e
    .line 1465
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 1475
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@22
    goto :goto_0
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1481
    if-eqz p2, :cond_1

    #@4
    .line 1482
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@8
    move-result-object v0

    #@9
    .line 1483
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    #@f
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1480
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :goto_0
    return-void

    #@16
    .line 1484
    .restart local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_0
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    #@18
    .line 1485
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    #@1a
    .line 1486
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    #@20
    .line 1487
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@23
    goto :goto_0

    #@24
    .line 1490
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@27
    goto :goto_0
.end method

.method public final setFeatureInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1526
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    #@4
    .line 1523
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1718
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    #@2
    .line 1719
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@8
    .line 1720
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@a
    and-int/lit8 v0, v0, -0x5

    #@c
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@e
    .line 1721
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1722
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@14
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    #@17
    .line 1717
    :cond_0
    return-void
.end method

.method public setIsStartingWindow(Z)V
    .locals 0
    .param p1, "isStartingWindow"    # Z

    #@0
    .prologue
    .line 3749
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    #@2
    .line 3748
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    #@0
    .prologue
    .line 1767
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    #@7
    .line 1766
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1747
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    #@2
    .line 1748
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@8
    .line 1749
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1750
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@e
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    #@11
    .line 1746
    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    #@0
    .prologue
    .line 3113
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@2
    .line 3112
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3740
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    #@3
    .line 3741
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    #@6
    .line 3742
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3743
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@10
    .line 3744
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->updateNavigationGuardColor()V

    #@15
    .line 3739
    :cond_0
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 3138
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    #@2
    .line 3137
    return-void
.end method

.method public setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 3765
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 3764
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 3128
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    #@2
    .line 3127
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 3143
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@2
    .line 3142
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 3153
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    #@2
    .line 3152
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 3158
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@2
    .line 3157
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 3148
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@2
    .line 3147
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 1
    .param p1, "sharedElementsUseOverlay"    # Z

    #@0
    .prologue
    .line 3241
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    #@6
    .line 3240
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3726
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    #@3
    .line 3727
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    #@6
    .line 3728
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3729
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@10
    .line 3725
    :cond_0
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    #@0
    .prologue
    .line 3754
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    #@2
    .line 3755
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 3756
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    .line 3757
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 3758
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    #@13
    .line 3753
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 529
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    #@4
    .line 528
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "updateAccessibilityTitle"    # Z

    #@0
    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 534
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@6
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@9
    .line 538
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@b
    .line 539
    if-eqz p2, :cond_1

    #@d
    .line 540
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@10
    move-result-object v0

    #@11
    .line 541
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    #@13
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 542
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    #@1f
    .line 543
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@26
    .line 532
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void

    #@27
    .line 535
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@29
    if-eqz v1, :cond_0

    #@2b
    .line 536
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@2d
    invoke-interface {v1, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@30
    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@9
    .line 554
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    #@b
    .line 550
    return-void
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 3
    .param p1, "fadeDurationMillis"    # J

    #@0
    .prologue
    .line 3233
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 3234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "negative durations are not allowed"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 3236
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    #@11
    .line 3232
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    #@0
    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    #@2
    .line 387
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    #@0
    .prologue
    .line 373
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    #@2
    .line 372
    return-void
.end method

.method public setUiOptions(II)V
    .locals 2
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 378
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    #@2
    not-int v1, p2

    #@3
    and-int/2addr v0, v1

    #@4
    and-int v1, p1, p2

    #@6
    or-int/2addr v0, v1

    #@7
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    #@9
    .line 377
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 3103
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    #@2
    .line 3102
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    #@0
    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@2
    .line 496
    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    #@0
    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setFocusable(Z)V

    #@5
    .line 1792
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    #@0
    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    #@2
    .line 492
    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 953
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 954
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 955
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@c
    .line 952
    :goto_0
    return-void

    #@d
    .line 957
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    #@10
    goto :goto_0
.end method

.method protected final updateDrawable(IZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    #@0
    .prologue
    .line 1539
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 1540
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_0

    #@7
    .line 1541
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@a
    .line 1538
    :cond_0
    return-void
.end method
