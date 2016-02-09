.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$DecorView;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$ColorViewState;,
        Lcom/android/internal/policy/PhoneWindow$1;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field static final FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final SWEEP_OPEN_MENU:Z = false

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

.field private mBackgroundFallbackResource:I

.field private mBackgroundResource:I

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClipToOutline:Z

.field private mClosingActionMenu:Z

.field private mContentParent:Landroid/view/ViewGroup;

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mContentScene:Landroid/transition/Scene;

.field private mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

.field private mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

.field private mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field private mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mForcedNavigationBarColor:Z

.field private mForcedStatusBarColor:Z

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field mIconRes:I

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloating:Z

.field private mIsStartingWindow:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field mLogoRes:I

.field private mMediaController:Landroid/media/session/MediaController;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field private mNavigationBarColor:I

.field private mOutsets:Landroid/graphics/Rect;

.field private mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private mReenterTransition:Landroid/transition/Transition;

.field mResourcesSetFlags:I

.field private mReturnTransition:Landroid/transition/Transition;

.field private mRightIconView:Landroid/widget/ImageView;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementExitTransition:Landroid/transition/Transition;

.field private mSharedElementReenterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field private mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field private mStatusBarColor:I

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextColor:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTransitionManager:Landroid/transition/TransitionManager;

.field private mUiOptions:I

.field private mVolumeControlStreamType:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    #@2
    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/policy/PhoneWindow;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/policy/PhoneWindow;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/policy/PhoneWindow;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    #@0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
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

.method static synthetic -wrap4(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/policy/PhoneWindow;I)V
    .locals 0
    .param p1, "format"    # I

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 147
    new-instance v0, Landroid/transition/TransitionSet;

    #@2
    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@7
    .line 302
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    #@9
    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    #@c
    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    #@e
    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 305
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    #@5
    .line 153
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    #@7
    const/4 v1, 0x6

    #@8
    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;I)V

    #@b
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    #@d
    .line 155
    new-instance v0, Landroid/util/TypedValue;

    #@f
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    #@14
    .line 156
    new-instance v0, Landroid/util/TypedValue;

    #@16
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    #@1b
    .line 229
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@1d
    .line 230
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@1f
    .line 239
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    #@21
    .line 241
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    #@23
    .line 242
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    #@25
    .line 243
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    #@27
    .line 244
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    #@29
    .line 245
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    #@2b
    .line 247
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@2d
    .line 249
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    #@2f
    .line 251
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    #@31
    .line 257
    const/high16 v0, -0x80000000

    #@33
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    #@35
    .line 263
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    #@37
    .line 267
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$1;

    #@39
    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    #@3c
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@3e
    .line 279
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    #@40
    .line 280
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@42
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    #@44
    .line 281
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    #@46
    .line 282
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@48
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    #@4a
    .line 283
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@4c
    .line 284
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4e
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@50
    .line 285
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    #@52
    .line 286
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@54
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@56
    .line 289
    const-wide/16 v0, -0x1

    #@58
    iput-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    #@5a
    .line 293
    new-instance v0, Landroid/graphics/Rect;

    #@5c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5f
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;

    #@61
    .line 306
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@64
    move-result-object v0

    #@65
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@67
    .line 304
    return-void
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 4394
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@3
    move-result-object v0

    #@4
    .line 4395
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_0

    #@6
    .line 4396
    return-void

    #@7
    .line 4399
    :cond_0
    if-nez p3, :cond_2

    #@9
    .line 4401
    if-nez p2, :cond_1

    #@b
    .line 4402
    if-ltz p1, :cond_1

    #@d
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@f
    array-length v1, v1

    #@10
    if-ge p1, v1, :cond_1

    #@12
    .line 4403
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@14
    aget-object p2, v1, p1

    #@16
    .line 4407
    :cond_1
    if-eqz p2, :cond_2

    #@18
    .line 4409
    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1a
    .line 4414
    :cond_2
    if-eqz p2, :cond_3

    #@1c
    iget-boolean v1, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@1e
    if-eqz v1, :cond_5

    #@20
    .line 4417
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_4

    #@26
    .line 4418
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@29
    .line 4393
    :cond_4
    return-void

    #@2a
    .line 4415
    :cond_5
    return-void
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .locals 1
    .param p0, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@0
    .prologue
    .line 666
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@3
    .line 669
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@6
    .line 671
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    #@9
    .line 661
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1061
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1062
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    #@a
    .line 1063
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 1060
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
    .line 1072
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@4
    .line 1074
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1075
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    #@d
    .line 1076
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit p0

    #@11
    .line 1071
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
    .line 4304
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4305
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    #@6
    return-object v0

    #@7
    .line 4307
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@9
    if-nez v0, :cond_1

    #@b
    if-eqz p1, :cond_1

    #@d
    .line 4308
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@10
    .line 4310
    :cond_1
    const v0, 0x10203ac

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/widget/ProgressBar;

    #@19
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    #@1b
    .line 4311
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 4312
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    #@21
    const/4 v1, 0x4

    #@22
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@25
    .line 4314
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
    .line 4136
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
    .line 4137
    if-nez p2, :cond_0

    #@d
    .line 4138
    return-object v5

    #@e
    .line 4140
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v4, "The feature has not been requested"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 4144
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
    .line 4145
    :cond_2
    add-int/lit8 v3, p1, 0x1

    #@20
    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@22
    .line 4146
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_3

    #@24
    .line 4147
    array-length v3, v0

    #@25
    invoke-static {v0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 4149
    :cond_3
    move-object v0, v1

    #@29
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@2b
    .line 4152
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_4
    aget-object v2, v0, p1

    #@2d
    .line 4153
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_5

    #@2f
    .line 4154
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@31
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    #@34
    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    aput-object v2, v0, p1

    #@36
    .line 4156
    :cond_5
    return-object v2
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    #@0
    .prologue
    .line 4318
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4319
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@6
    return-object v0

    #@7
    .line 4321
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@9
    if-nez v0, :cond_1

    #@b
    if-eqz p1, :cond_1

    #@d
    .line 4322
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@10
    .line 4324
    :cond_1
    const v0, 0x10203ad

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/widget/ProgressBar;

    #@19
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@1b
    .line 4325
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 4326
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@21
    const/4 v1, 0x4

    #@22
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@25
    .line 4328
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    #@27
    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    #@0
    .prologue
    .line 1847
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1848
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    .line 1849
    const-string/jumbo v1, "keyguard"

    #@b
    .line 1848
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/app/KeyguardManager;

    #@11
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@13
    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@15
    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    #@0
    .prologue
    .line 4286
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4287
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    #@6
    return-object v0

    #@7
    .line 4289
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 4290
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@e
    .line 4292
    :cond_1
    const v0, 0x102003e

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
    .line 1295
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
    .line 1296
    :catch_0
    move-exception v0

    #@8
    .line 1297
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneWindow"

    #@b
    const-string/jumbo v2, "Couldn\'t getOptionsPanelGravity; using default"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 1298
    const/16 v1, 0x51

    #@13
    return v1
.end method

.method private getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    #@0
    .prologue
    .line 4168
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4
    move-result-object v0

    #@5
    return-object v0
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
    .line 4183
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
    .line 4184
    if-nez p2, :cond_0

    #@d
    .line 4185
    return-object v5

    #@e
    .line 4187
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v4, "The feature has not been requested"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 4191
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
    .line 4192
    :cond_2
    add-int/lit8 v3, p1, 0x1

    #@20
    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@22
    .line 4193
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    #@24
    .line 4194
    array-length v3, v0

    #@25
    invoke-static {v0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 4196
    :cond_3
    move-object v0, v1

    #@29
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@2b
    .line 4199
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    aget-object v2, v0, p1

    #@2d
    .line 4200
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_5

    #@2f
    .line 4201
    if-eqz p3, :cond_6

    #@31
    move-object v2, p3

    #@32
    :goto_0
    aput-object v2, v0, p1

    #@34
    .line 4205
    :cond_5
    return-object v2

    #@35
    .line 4203
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
    .line 4332
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4333
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    #@6
    return-object v0

    #@7
    .line 4335
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 4336
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@e
    .line 4338
    :cond_1
    const v0, 0x1020040

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
    .line 4109
    if-eq p1, p2, :cond_0

    #@3
    .line 4110
    return-object p1

    #@4
    .line 4112
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@b
    move-result v2

    #@c
    .line 4113
    .local v2, "transitionId":I
    move-object v1, p2

    #@d
    .line 4114
    .local v1, "transition":Landroid/transition/Transition;
    if-eq v2, v4, :cond_1

    #@f
    const/high16 v3, 0x10f0000

    #@11
    if-eq v2, v3, :cond_1

    #@13
    .line 4115
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@16
    move-result-object v3

    #@17
    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    #@1a
    move-result-object v0

    #@1b
    .line 4116
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    #@1e
    move-result-object v1

    #@1f
    .line 4117
    instance-of v3, v1, Landroid/transition/TransitionSet;

    #@21
    if-eqz v3, :cond_1

    #@23
    move-object v3, v1

    #@24
    .line 4118
    check-cast v3, Landroid/transition/TransitionSet;

    #@26
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_1

    #@2c
    .line 4119
    const/4 v1, 0x0

    #@2d
    .line 4122
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "transition":Landroid/transition/Transition;
    :cond_1
    return-object v1
.end method

.method private getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 3

    #@0
    .prologue
    .line 1706
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1707
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@9
    move-result-object v0

    #@a
    .line 1708
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@c
    .line 1709
    return-object v0

    #@d
    .line 1712
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
    .line 1629
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@4
    move-result v1

    #@5
    .line 1630
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
    .line 1631
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    #@12
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@15
    .line 1632
    and-int/lit8 v2, v1, 0x20

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 1633
    if-eqz p2, :cond_0

    #@1b
    .line 1634
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_0

    #@21
    .line 1635
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    #@24
    .line 1636
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@27
    .line 1638
    :cond_0
    and-int/lit8 v2, v1, 0x4

    #@29
    if-eqz v2, :cond_1

    #@2b
    if-eqz p1, :cond_1

    #@2d
    .line 1639
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_1

    #@33
    .line 1640
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    #@36
    .line 1641
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@39
    .line 1628
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
    .line 3972
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@9
    if-nez v7, :cond_0

    #@b
    .line 3973
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@e
    move-result-object v7

    #@f
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@11
    .line 3974
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@13
    const/high16 v8, 0x40000

    #@15
    invoke-virtual {v7, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setDescendantFocusability(I)V

    #@18
    .line 3975
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@1a
    invoke-virtual {v7, v12}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setIsRootNamespace(Z)V

    #@1d
    .line 3976
    iget-boolean v7, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@1f
    if-nez v7, :cond_0

    #@21
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@23
    if-eqz v7, :cond_0

    #@25
    .line 3977
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@27
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@29
    invoke-virtual {v7, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@2c
    .line 3980
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@2e
    if-nez v7, :cond_e

    #@30
    .line 3981
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@32
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    #@35
    move-result-object v7

    #@36
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@38
    .line 3984
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@3a
    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->makeOptionalFitsSystemWindows()V

    #@3d
    .line 3986
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@3f
    .line 3987
    const v8, 0x10203ae

    #@42
    .line 3986
    invoke-virtual {v7, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Lcom/android/internal/widget/DecorContentParent;

    #@48
    .line 3989
    .local v0, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    if-eqz v0, :cond_13

    #@4a
    .line 3990
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@4c
    .line 3991
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@4e
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@51
    move-result-object v8

    #@52
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    #@55
    .line 3992
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@57
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    #@5a
    move-result-object v7

    #@5b
    if-nez v7, :cond_1

    #@5d
    .line 3993
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@5f
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@61
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@64
    .line 3996
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@67
    move-result v3

    #@68
    .line 3997
    .local v3, "localFeatures":I
    const/4 v1, 0x0

    #@69
    .local v1, "i":I
    :goto_0
    if-ge v1, v13, :cond_3

    #@6b
    .line 3998
    shl-int v7, v12, v1

    #@6d
    and-int/2addr v7, v3

    #@6e
    if-eqz v7, :cond_2

    #@70
    .line 3999
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@72
    invoke-interface {v7, v1}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    #@75
    .line 3997
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@77
    goto :goto_0

    #@78
    .line 4003
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@7a
    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    #@7c
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    #@7f
    .line 4005
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@81
    and-int/lit8 v7, v7, 0x1

    #@83
    if-nez v7, :cond_f

    #@85
    .line 4006
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    #@87
    if-eqz v7, :cond_4

    #@89
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@8b
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    #@8e
    move-result v7

    #@8f
    if-eqz v7, :cond_f

    #@91
    .line 4008
    :cond_4
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@93
    and-int/lit8 v7, v7, 0x1

    #@95
    if-nez v7, :cond_5

    #@97
    .line 4009
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    #@99
    if-nez v7, :cond_5

    #@9b
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@9d
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    #@a0
    move-result v7

    #@a1
    if-eqz v7, :cond_10

    #@a3
    .line 4014
    :cond_5
    :goto_1
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@a5
    and-int/lit8 v7, v7, 0x2

    #@a7
    if-nez v7, :cond_11

    #@a9
    .line 4015
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    #@ab
    if-eqz v7, :cond_6

    #@ad
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@af
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    #@b2
    move-result v7

    #@b3
    if-eqz v7, :cond_11

    #@b5
    .line 4024
    :cond_6
    :goto_2
    invoke-direct {p0, v9, v9}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@b8
    move-result-object v4

    #@b9
    .line 4025
    .local v4, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@bc
    move-result v7

    #@bd
    if-nez v7, :cond_8

    #@bf
    if-eqz v4, :cond_7

    #@c1
    iget-object v7, v4, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@c3
    if-nez v7, :cond_8

    #@c5
    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    #@c7
    if-eqz v7, :cond_12

    #@c9
    .line 4049
    .end local v1    # "i":I
    .end local v3    # "localFeatures":I
    .end local v4    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@cb
    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@ce
    move-result-object v7

    #@cf
    if-nez v7, :cond_9

    #@d1
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@d3
    if-eqz v7, :cond_9

    #@d5
    .line 4050
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@d7
    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@d9
    invoke-virtual {v7, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    #@dc
    .line 4055
    :cond_9
    invoke-virtual {p0, v13}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@df
    move-result v7

    #@e0
    if-eqz v7, :cond_e

    #@e2
    .line 4056
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    #@e4
    if-nez v7, :cond_a

    #@e6
    .line 4057
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@e9
    move-result-object v7

    #@ea
    .line 4058
    const/16 v8, 0x1b

    #@ec
    .line 4057
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@ef
    move-result v6

    #@f0
    .line 4060
    .local v6, "transitionRes":I
    if-eqz v6, :cond_16

    #@f2
    .line 4061
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@f5
    move-result-object v7

    #@f6
    invoke-static {v7}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    #@f9
    move-result-object v2

    #@fa
    .line 4063
    .local v2, "inflater":Landroid/transition/TransitionInflater;
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@fc
    .line 4062
    invoke-virtual {v2, v6, v7}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    #@ff
    move-result-object v7

    #@100
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    #@102
    .line 4069
    .end local v2    # "inflater":Landroid/transition/TransitionInflater;
    .end local v6    # "transitionRes":I
    :cond_a
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    #@104
    .line 4070
    const/16 v8, 0x1c

    #@106
    .line 4069
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@109
    move-result-object v7

    #@10a
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    #@10c
    .line 4071
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    #@10e
    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@110
    .line 4072
    const/16 v9, 0x28

    #@112
    .line 4071
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@115
    move-result-object v7

    #@116
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    #@118
    .line 4073
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    #@11a
    .line 4074
    const/16 v8, 0x1d

    #@11c
    .line 4073
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@11f
    move-result-object v7

    #@120
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    #@122
    .line 4075
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    #@124
    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@126
    .line 4076
    const/16 v9, 0x29

    #@128
    .line 4075
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@12b
    move-result-object v7

    #@12c
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    #@12e
    .line 4077
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@130
    .line 4078
    const/16 v8, 0x1e

    #@132
    .line 4077
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@135
    move-result-object v7

    #@136
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@138
    .line 4079
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@13a
    .line 4080
    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@13c
    .line 4081
    const/16 v9, 0x2a

    #@13e
    .line 4079
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@141
    move-result-object v7

    #@142
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@144
    .line 4082
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    #@146
    .line 4083
    const/16 v8, 0x1f

    #@148
    .line 4082
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@14b
    move-result-object v7

    #@14c
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    #@14e
    .line 4084
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@150
    .line 4085
    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@152
    .line 4086
    const/16 v9, 0x2b

    #@154
    .line 4084
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@157
    move-result-object v7

    #@158
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@15a
    .line 4087
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@15c
    if-nez v7, :cond_b

    #@15e
    .line 4088
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@161
    move-result-object v7

    #@162
    .line 4089
    const/16 v8, 0x21

    #@164
    .line 4088
    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@167
    move-result v7

    #@168
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16b
    move-result-object v7

    #@16c
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@16e
    .line 4091
    :cond_b
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@170
    if-nez v7, :cond_c

    #@172
    .line 4092
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@175
    move-result-object v7

    #@176
    .line 4093
    const/16 v8, 0x20

    #@178
    .line 4092
    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@17b
    move-result v7

    #@17c
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@17f
    move-result-object v7

    #@180
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@182
    .line 4095
    :cond_c
    iget-wide v8, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    #@184
    const-wide/16 v10, 0x0

    #@186
    cmp-long v7, v8, v10

    #@188
    if-gez v7, :cond_d

    #@18a
    .line 4096
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@18d
    move-result-object v7

    #@18e
    .line 4097
    const/16 v8, 0x25

    #@190
    .line 4098
    const/16 v9, 0x12c

    #@192
    .line 4096
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@195
    move-result v7

    #@196
    int-to-long v8, v7

    #@197
    iput-wide v8, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    #@199
    .line 4100
    :cond_d
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    #@19b
    if-nez v7, :cond_e

    #@19d
    .line 4101
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@1a0
    move-result-object v7

    #@1a1
    .line 4102
    const/16 v8, 0x2c

    #@1a3
    .line 4101
    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1a6
    move-result v7

    #@1a7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1aa
    move-result-object v7

    #@1ab
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    #@1ad
    .line 3971
    .end local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_e
    return-void

    #@1ae
    .line 4007
    .restart local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .restart local v1    # "i":I
    .restart local v3    # "localFeatures":I
    :cond_f
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@1b0
    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    #@1b2
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    #@1b5
    goto/16 :goto_1

    #@1b7
    .line 4010
    :cond_10
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@1b9
    .line 4011
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@1bc
    move-result-object v8

    #@1bd
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1c0
    move-result-object v8

    #@1c1
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    #@1c4
    move-result-object v8

    #@1c5
    .line 4010
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@1c8
    .line 4012
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@1ca
    or-int/lit8 v7, v7, 0x4

    #@1cc
    iput v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@1ce
    goto/16 :goto_1

    #@1d0
    .line 4016
    :cond_11
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@1d2
    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    #@1d4
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    #@1d7
    goto/16 :goto_2

    #@1d9
    .line 4026
    .restart local v4    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_12
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    #@1dc
    goto/16 :goto_3

    #@1de
    .line 4029
    .end local v1    # "i":I
    .end local v3    # "localFeatures":I
    .end local v4    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_13
    const v7, 0x1020016

    #@1e1
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@1e4
    move-result-object v7

    #@1e5
    check-cast v7, Landroid/widget/TextView;

    #@1e7
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@1e9
    .line 4030
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@1eb
    if-eqz v7, :cond_8

    #@1ed
    .line 4031
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@1ef
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@1f1
    invoke-virtual {v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getLayoutDirection()I

    #@1f4
    move-result v8

    #@1f5
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutDirection(I)V

    #@1f8
    .line 4032
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@1fb
    move-result v7

    #@1fc
    and-int/lit8 v7, v7, 0x2

    #@1fe
    if-eqz v7, :cond_15

    #@200
    .line 4034
    const v7, 0x1020041

    #@203
    .line 4033
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@206
    move-result-object v5

    #@207
    .line 4035
    .local v5, "titleContainer":Landroid/view/View;
    if-eqz v5, :cond_14

    #@209
    .line 4036
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    #@20c
    .line 4040
    :goto_5
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@20e
    instance-of v7, v7, Landroid/widget/FrameLayout;

    #@210
    if-eqz v7, :cond_8

    #@212
    .line 4041
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@214
    check-cast v7, Landroid/widget/FrameLayout;

    #@216
    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@219
    goto/16 :goto_3

    #@21b
    .line 4038
    :cond_14
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@21d
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    #@220
    goto :goto_5

    #@221
    .line 4044
    .end local v5    # "titleContainer":Landroid/view/View;
    :cond_15
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@223
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@225
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@228
    goto/16 :goto_3

    #@22a
    .line 4065
    .restart local v6    # "transitionRes":I
    :cond_16
    new-instance v7, Landroid/transition/TransitionManager;

    #@22c
    invoke-direct {v7}, Landroid/transition/TransitionManager;-><init>()V

    #@22f
    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    #@231
    goto/16 :goto_4
.end method

.method private launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 4430
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@4
    move-result-object v1

    #@5
    .line 4431
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_1

    #@d
    .line 4432
    :cond_0
    const/4 v4, 0x0

    #@e
    .line 4448
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
    .line 4449
    const/4 v7, 0x4

    #@21
    .line 4448
    if-ne v6, v7, :cond_3

    #@23
    .line 4451
    new-instance v0, Landroid/os/Bundle;

    #@25
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@28
    .line 4452
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    #@2b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    #@2e
    move-result v7

    #@2f
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@32
    .line 4453
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
    .line 4454
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@42
    move-result v7

    #@43
    .line 4453
    invoke-virtual {v6, v9, v7, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    #@46
    move-result v6

    #@47
    return v6

    #@48
    .line 4434
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v6, "search"

    #@4b
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@4e
    .line 4435
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    #@51
    move-result v2

    #@52
    .line 4436
    .local v2, "deviceId":I
    const/4 v5, 0x0

    #@53
    .line 4437
    .local v5, "searchEvent":Landroid/view/SearchEvent;
    if-eqz v2, :cond_2

    #@55
    .line 4438
    new-instance v5, Landroid/view/SearchEvent;

    #@57
    .end local v5    # "searchEvent":Landroid/view/SearchEvent;
    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    #@5a
    move-result-object v6

    #@5b
    invoke-direct {v5, v6}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    #@5e
    .line 4441
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
    .line 4442
    .end local v4    # "result":Z
    :catch_0
    move-exception v3

    #@64
    .line 4443
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
    .line 4444
    const-string/jumbo v8, " method onSearchRequested(SearchEvent); fa"

    #@89
    .line 4443
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
    .line 4445
    invoke-interface {v1}, Landroid/view/Window$Callback;->onSearchRequested()Z

    #@97
    move-result v4

    #@98
    .restart local v4    # "result":Z
    goto/16 :goto_0

    #@9a
    .line 4456
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
    .line 4128
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
    .line 4127
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 4129
    :catch_0
    move-exception v0

    #@14
    .line 4130
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
    .line 4132
    return-object v4
.end method

.method private openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 689
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
    .line 690
    :cond_0
    return-void

    #@d
    .line 695
    :cond_1
    move-object/from16 v0, p1

    #@f
    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@11
    if-nez v4, :cond_4

    #@13
    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@16
    move-result-object v13

    #@17
    .line 697
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@1e
    move-result-object v12

    #@1f
    .line 698
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    #@21
    and-int/lit8 v4, v4, 0xf

    #@23
    .line 699
    const/4 v5, 0x4

    #@24
    .line 698
    if-ne v4, v5, :cond_2

    #@26
    const/4 v15, 0x1

    #@27
    .line 700
    .local v15, "isXLarge":Z
    :goto_0
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2a
    move-result-object v4

    #@2b
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2d
    .line 701
    const/16 v5, 0xb

    #@2f
    .line 700
    if-lt v4, v5, :cond_3

    #@31
    const/4 v14, 0x1

    #@32
    .line 703
    .local v14, "isHoneycombApp":Z
    :goto_1
    if-eqz v15, :cond_4

    #@34
    if-eqz v14, :cond_4

    #@36
    .line 704
    return-void

    #@37
    .line 698
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_2
    const/4 v15, 0x0

    #@38
    .restart local v15    # "isXLarge":Z
    goto :goto_0

    #@39
    .line 700
    :cond_3
    const/4 v14, 0x0

    #@3a
    .restart local v14    # "isHoneycombApp":Z
    goto :goto_1

    #@3b
    .line 708
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@3e
    move-result-object v11

    #@3f
    .line 709
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
    .line 715
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    #@52
    move-result-object v18

    #@53
    .line 716
    .local v18, "wm":Landroid/view/WindowManager;
    if-nez v18, :cond_7

    #@55
    .line 717
    return-void

    #@56
    .line 711
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
    .line 712
    return-void

    #@5f
    .line 721
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :cond_7
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@62
    move-result v4

    #@63
    if-nez v4, :cond_8

    #@65
    .line 722
    return-void

    #@66
    .line 725
    :cond_8
    const/4 v3, -0x2

    #@67
    .line 726
    .local v3, "width":I
    move-object/from16 v0, p1

    #@69
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@6b
    if-eqz v4, :cond_9

    #@6d
    move-object/from16 v0, p1

    #@6f
    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@71
    if-eqz v4, :cond_12

    #@73
    .line 727
    :cond_9
    move-object/from16 v0, p1

    #@75
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@77
    if-nez v4, :cond_b

    #@79
    .line 729
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    #@7c
    move-result v4

    #@7d
    if-eqz v4, :cond_a

    #@7f
    move-object/from16 v0, p1

    #@81
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@83
    if-nez v4, :cond_c

    #@85
    .line 730
    :cond_a
    return-void

    #@86
    .line 731
    :cond_b
    move-object/from16 v0, p1

    #@88
    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@8a
    if-eqz v4, :cond_c

    #@8c
    move-object/from16 v0, p1

    #@8e
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@90
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    #@93
    move-result v4

    #@94
    if-lez v4, :cond_c

    #@96
    .line 733
    move-object/from16 v0, p1

    #@98
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@9a
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeAllViews()V

    #@9d
    .line 737
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
    .line 741
    move-object/from16 v0, p1

    #@ab
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@ad
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b0
    move-result-object v16

    #@b1
    .line 742
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v16, :cond_d

    #@b3
    .line 743
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
    .line 747
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
    .line 750
    move-object/from16 v0, p1

    #@c5
    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    #@c7
    .line 751
    .local v10, "backgroundResId":I
    const/4 v3, -0x1

    #@c8
    .line 756
    :goto_2
    move-object/from16 v0, p1

    #@ca
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@cc
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@cf
    move-result-object v5

    #@d0
    invoke-virtual {v5, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@d3
    move-result-object v5

    #@d4
    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    #@d7
    .line 759
    move-object/from16 v0, p1

    #@d9
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@db
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@de
    move-result-object v17

    #@df
    .line 760
    .local v17, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v17, :cond_e

    #@e1
    move-object/from16 v0, v17

    #@e3
    instance-of v4, v0, Landroid/view/ViewGroup;

    #@e5
    if-eqz v4, :cond_e

    #@e7
    .line 761
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
    .line 763
    :cond_e
    move-object/from16 v0, p1

    #@f4
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@f6
    move-object/from16 v0, p1

    #@f8
    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@fa
    move-object/from16 v0, v16

    #@fc
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@ff
    .line 769
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
    .line 770
    move-object/from16 v0, p1

    #@10b
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@10d
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    #@110
    .line 783
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
    .line 785
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    #@117
    .line 787
    move-object/from16 v0, p1

    #@119
    iget v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    #@11b
    move-object/from16 v0, p1

    #@11d
    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    #@11f
    .line 790
    move-object/from16 v0, p1

    #@121
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@123
    iget v9, v4, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    #@125
    .line 786
    const/4 v4, -0x2

    #@126
    .line 787
    const/16 v7, 0x3eb

    #@128
    .line 788
    const/high16 v8, 0x820000

    #@12a
    .line 785
    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    #@12d
    .line 792
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    #@12f
    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    #@131
    if-eqz v4, :cond_14

    #@133
    .line 793
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    #@136
    move-result v4

    #@137
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@139
    .line 794
    sget-object v4, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    #@13b
    move-object/from16 v0, p0

    #@13d
    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    #@140
    .line 799
    :goto_4
    move-object/from16 v0, p1

    #@142
    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    #@144
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@146
    .line 801
    move-object/from16 v0, p1

    #@148
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@14a
    move-object/from16 v0, v18

    #@14c
    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@14f
    .line 802
    const/4 v4, 0x1

    #@150
    move-object/from16 v0, p1

    #@152
    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@154
    .line 685
    return-void

    #@155
    .line 738
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_10
    return-void

    #@156
    .line 754
    .restart local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_11
    move-object/from16 v0, p1

    #@158
    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    #@15a
    .restart local v10    # "backgroundResId":I
    goto/16 :goto_2

    #@15c
    .line 772
    .end local v10    # "backgroundResId":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    #@15f
    move-result v4

    #@160
    if-nez v4, :cond_13

    #@162
    .line 773
    const/4 v3, -0x1

    #@163
    goto :goto_3

    #@164
    .line 774
    :cond_13
    move-object/from16 v0, p1

    #@166
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@168
    if-eqz v4, :cond_f

    #@16a
    .line 777
    move-object/from16 v0, p1

    #@16c
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@16e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@171
    move-result-object v16

    #@172
    .line 778
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
    .line 779
    const/4 v3, -0x1

    #@17c
    goto :goto_3

    #@17d
    .line 796
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

.method private openPanelsAfterRestore()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2122
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@3
    .line 2124
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    #@5
    .line 2125
    return-void

    #@6
    .line 2129
    :cond_0
    array-length v3, v1

    #@7
    add-int/lit8 v0, v3, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@b
    .line 2130
    aget-object v2, v1, v0

    #@d
    .line 2134
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    #@f
    .line 2135
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    #@12
    .line 2136
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@14
    if-nez v3, :cond_1

    #@16
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 2137
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    #@1c
    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@1e
    .line 2138
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    #@21
    .line 2129
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@23
    goto :goto_0

    #@24
    .line 2121
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    return-void
.end method

.method private performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
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
    .line 1087
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    if-nez p1, :cond_1

    #@a
    .line 1088
    :cond_0
    return v2

    #@b
    .line 1091
    :cond_1
    const/4 v0, 0x0

    #@c
    .line 1095
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
    .line 1097
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1c
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    #@1f
    move-result v0

    #@20
    .line 1100
    .end local v0    # "handled":Z
    :cond_3
    if-eqz v0, :cond_4

    #@22
    .line 1102
    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@24
    .line 1105
    and-int/lit8 v1, p4, 0x1

    #@26
    if-nez v1, :cond_4

    #@28
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@2a
    if-nez v1, :cond_4

    #@2c
    .line 1106
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@2f
    .line 1110
    :cond_4
    return v0
.end method

.method private registerSwipeCallbacks()V
    .locals 2

    #@0
    .prologue
    .line 4343
    const v1, 0x1020002

    #@3
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/widget/SwipeDismissLayout;

    #@9
    .line 4344
    .local v0, "swipeDismiss":Lcom/android/internal/widget/SwipeDismissLayout;
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$2;

    #@b
    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$2;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V

    #@11
    .line 4351
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$3;

    #@13
    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$3;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    #@16
    .line 4350
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V

    #@19
    .line 4341
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
    .line 1162
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
    .line 1163
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
    .line 1164
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@20
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    #@23
    move-result v3

    #@24
    .line 1162
    if-eqz v3, :cond_5

    #@26
    .line 1165
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@29
    move-result-object v0

    #@2a
    .line 1166
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
    .line 1186
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@36
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    #@39
    .line 1187
    invoke-direct {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@3c
    move-result-object v2

    #@3d
    .line 1188
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
    .line 1192
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    :goto_0
    return-void

    #@48
    .line 1167
    :cond_2
    if-eqz v0, :cond_1

    #@4a
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@4d
    move-result v3

    #@4e
    if-nez v3, :cond_1

    #@50
    .line 1169
    iget-boolean v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@52
    if-eqz v3, :cond_3

    #@54
    .line 1170
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@56
    and-int/lit8 v3, v3, 0x1

    #@58
    if-eqz v3, :cond_3

    #@5a
    .line 1171
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@5c
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@5e
    invoke-virtual {v3, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@61
    .line 1172
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@63
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    #@66
    .line 1175
    :cond_3
    invoke-direct {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@69
    move-result-object v2

    #@6a
    .line 1179
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
    .line 1180
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@76
    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@78
    invoke-interface {v0, v5, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@7b
    move-result v3

    #@7c
    .line 1179
    if-eqz v3, :cond_1

    #@7e
    .line 1181
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@80
    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    #@83
    .line 1182
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@85
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    #@88
    goto :goto_0

    #@89
    .line 1189
    :cond_4
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@8b
    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@8e
    goto :goto_0

    #@8f
    .line 1195
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    invoke-direct {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@92
    move-result-object v2

    #@93
    .line 1197
    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_6

    #@95
    .line 1198
    return-void

    #@96
    .line 1202
    :cond_6
    if-eqz p1, :cond_8

    #@98
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@9a
    if-eqz v3, :cond_7

    #@9c
    const/4 v1, 0x0

    #@9d
    .line 1204
    :goto_1
    const/4 v3, 0x1

    #@9e
    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@a0
    .line 1205
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@a3
    .line 1208
    iput-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@a5
    .line 1210
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    #@a8
    .line 1161
    return-void

    #@a9
    .line 1202
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
    .line 2098
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
    .line 2099
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@c
    move-result v0

    #@d
    .line 2100
    .local v0, "curFeatureId":I
    invoke-direct {p0, v0, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@10
    move-result-object v2

    #@11
    .line 2101
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    #@13
    .line 2098
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@15
    goto :goto_0

    #@16
    .line 2106
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroid/os/Parcelable;

    #@1c
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@1f
    .line 2107
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    #@22
    goto :goto_1

    #@23
    .line 2095
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
    .line 2078
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@2
    .line 2079
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    #@4
    .line 2080
    return-void

    #@5
    .line 2083
    :cond_0
    array-length v2, v1

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "curFeatureId":I
    :goto_0
    if-ltz v0, :cond_2

    #@a
    .line 2084
    aget-object v2, v1, v0

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 2085
    aget-object v2, v1, v0

    #@10
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@17
    .line 2083
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 2077
    :cond_2
    return-void
.end method

.method public static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5068
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 5070
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 5067
    :cond_0
    :goto_0
    return-void

    #@e
    .line 5071
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
    .line 1616
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@4
    move-result v0

    #@5
    .line 1617
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1618
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
    .line 1619
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@15
    .line 1622
    :cond_0
    and-int/lit8 v1, v0, 0x4

    #@17
    if-eqz v1, :cond_1

    #@19
    if-eqz p1, :cond_1

    #@1b
    .line 1623
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    #@1e
    move-result v1

    #@1f
    const/16 v2, 0x2710

    #@21
    if-ge v1, v2, :cond_1

    #@23
    .line 1624
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@26
    .line 1615
    :cond_1
    return-void
.end method

.method private transitionTo(Landroid/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;

    #@0
    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 451
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    #@7
    .line 455
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    #@9
    .line 449
    return-void

    #@a
    .line 453
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
    .line 4229
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 4230
    return-void

    #@5
    .line 4233
    :cond_0
    const/4 v2, 0x1

    #@6
    shl-int v1, v2, p1

    #@8
    .line 4235
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
    .line 4239
    :cond_1
    const/4 v0, 0x0

    #@12
    .line 4240
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_3

    #@14
    .line 4241
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    #@16
    .line 4242
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    #@18
    .line 4243
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    #@1a
    .line 4244
    :cond_2
    if-nez v0, :cond_3

    #@1c
    .line 4245
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    #@1e
    .line 4247
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
    .line 4248
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@28
    move-result-object v2

    #@29
    if-eqz v2, :cond_5

    #@2b
    .line 4249
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isActive()Z

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_4

    #@31
    if-eqz p3, :cond_5

    #@33
    .line 4250
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@3a
    .line 4226
    :cond_5
    :goto_0
    return-void

    #@3b
    .line 4236
    :cond_6
    return-void

    #@3c
    .line 4253
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
    .line 4256
    :cond_8
    iput-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    #@4a
    .line 4257
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    #@4c
    iput v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    #@4e
    .line 4258
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
    .line 4266
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 4267
    return-void

    #@5
    .line 4270
    :cond_0
    const/4 v1, 0x1

    #@6
    shl-int v0, v1, p1

    #@8
    .line 4272
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
    .line 4276
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@14
    move-result v1

    #@15
    and-int/2addr v1, v0

    #@16
    if-nez v1, :cond_4

    #@18
    .line 4277
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 4278
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    #@25
    .line 4262
    :cond_2
    :goto_0
    return-void

    #@26
    .line 4273
    :cond_3
    return-void

    #@27
    .line 4281
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
    const/4 v6, 0x1

    #@5
    const/4 v7, 0x0

    #@6
    .line 1539
    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    #@9
    move-result-object v0

    #@a
    .line 1540
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    #@d
    move-result-object v2

    #@e
    .line 1542
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@11
    move-result v1

    #@12
    .line 1543
    .local v1, "features":I
    const/4 v5, -0x1

    #@13
    if-ne p1, v5, :cond_6

    #@15
    .line 1544
    and-int/lit8 v5, v1, 0x4

    #@17
    if-eqz v5, :cond_1

    #@19
    .line 1545
    if-eqz v2, :cond_4

    #@1b
    .line 1546
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    #@1e
    move-result v3

    #@1f
    .line 1547
    .local v3, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_0

    #@25
    if-ge v3, v8, :cond_3

    #@27
    .line 1548
    :cond_0
    const/4 v4, 0x0

    #@28
    .line 1549
    .local v4, "visibility":I
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@2b
    .line 1554
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_1
    :goto_1
    and-int/lit8 v5, v1, 0x20

    #@2d
    if-eqz v5, :cond_2

    #@2f
    .line 1555
    if-eqz v0, :cond_5

    #@31
    .line 1556
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@34
    .line 1538
    :cond_2
    :goto_2
    return-void

    #@35
    .line 1548
    .restart local v3    # "level":I
    :cond_3
    const/4 v4, 0x4

    #@36
    .restart local v4    # "visibility":I
    goto :goto_0

    #@37
    .line 1551
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_4
    const-string/jumbo v5, "PhoneWindow"

    #@3a
    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    #@3d
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    goto :goto_1

    #@41
    .line 1558
    :cond_5
    const-string/jumbo v5, "PhoneWindow"

    #@44
    const-string/jumbo v6, "Circular progress bar not located in current window decor"

    #@47
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_2

    #@4b
    .line 1561
    :cond_6
    const/4 v5, -0x2

    #@4c
    if-ne p1, v5, :cond_a

    #@4e
    .line 1562
    and-int/lit8 v5, v1, 0x4

    #@50
    if-eqz v5, :cond_7

    #@52
    .line 1563
    if-eqz v2, :cond_8

    #@54
    .line 1564
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@57
    .line 1569
    :cond_7
    :goto_3
    and-int/lit8 v5, v1, 0x20

    #@59
    if-eqz v5, :cond_2

    #@5b
    .line 1570
    if-eqz v0, :cond_9

    #@5d
    .line 1571
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@60
    goto :goto_2

    #@61
    .line 1566
    :cond_8
    const-string/jumbo v5, "PhoneWindow"

    #@64
    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    #@67
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    goto :goto_3

    #@6b
    .line 1573
    :cond_9
    const-string/jumbo v5, "PhoneWindow"

    #@6e
    const-string/jumbo v6, "Circular progress bar not located in current window decor"

    #@71
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    goto :goto_2

    #@75
    .line 1576
    :cond_a
    const/4 v5, -0x3

    #@76
    if-ne p1, v5, :cond_c

    #@78
    .line 1577
    if-eqz v2, :cond_b

    #@7a
    .line 1578
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@7d
    goto :goto_2

    #@7e
    .line 1580
    :cond_b
    const-string/jumbo v5, "PhoneWindow"

    #@81
    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    #@84
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    goto :goto_2

    #@88
    .line 1582
    :cond_c
    const/4 v5, -0x4

    #@89
    if-ne p1, v5, :cond_e

    #@8b
    .line 1583
    if-eqz v2, :cond_d

    #@8d
    .line 1584
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@90
    goto :goto_2

    #@91
    .line 1586
    :cond_d
    const-string/jumbo v5, "PhoneWindow"

    #@94
    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    #@97
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9a
    goto :goto_2

    #@9b
    .line 1588
    :cond_e
    if-ltz p1, :cond_11

    #@9d
    if-gt p1, v8, :cond_11

    #@9f
    .line 1592
    if-eqz v2, :cond_f

    #@a1
    .line 1593
    add-int/lit8 v5, p1, 0x0

    #@a3
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@a6
    .line 1598
    :goto_4
    if-ge p1, v8, :cond_10

    #@a8
    .line 1599
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    #@ab
    goto :goto_2

    #@ac
    .line 1595
    :cond_f
    const-string/jumbo v5, "PhoneWindow"

    #@af
    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    #@b2
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b5
    goto :goto_4

    #@b6
    .line 1601
    :cond_10
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    #@b9
    goto/16 :goto_2

    #@bb
    .line 1603
    :cond_11
    const/16 v5, 0x4e20

    #@bd
    if-gt v5, p1, :cond_2

    #@bf
    const/16 v5, 0x7530

    #@c1
    if-gt p1, v5, :cond_2

    #@c3
    .line 1604
    if-eqz v2, :cond_12

    #@c5
    .line 1605
    add-int/lit16 v5, p1, -0x4e20

    #@c7
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    #@ca
    .line 1610
    :goto_5
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    #@cd
    goto/16 :goto_2

    #@cf
    .line 1607
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
    .line 434
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 435
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@7
    .line 437
    :cond_0
    const/16 v1, 0xc

    #@9
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 439
    const-string/jumbo v1, "PhoneWindow"

    #@12
    const-string/jumbo v2, "addContentView does not support content transitions"

    #@15
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 441
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1a
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@1d
    .line 442
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1f
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestApplyInsets()V

    #@22
    .line 443
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@25
    move-result-object v0

    #@26
    .line 444
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    #@28
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_3

    #@2e
    .line 433
    :cond_2
    :goto_0
    return-void

    #@2f
    .line 445
    :cond_3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    #@32
    goto :goto_0
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 1

    #@0
    .prologue
    .line 3968
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    #@3
    .line 3967
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 874
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 875
    return-void

    #@5
    .line 878
    :cond_0
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    #@8
    .line 879
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@a
    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    #@d
    .line 880
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@10
    move-result-object v0

    #@11
    .line 881
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    #@13
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 884
    :cond_1
    :goto_0
    const/4 v1, 0x0

    #@1a
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    #@1c
    .line 873
    return-void

    #@1d
    .line 882
    :cond_2
    const/16 v1, 0x8

    #@1f
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@22
    goto :goto_0
.end method

.method public final closeAllPanels()V
    .locals 6

    #@0
    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    #@3
    move-result-object v4

    #@4
    .line 1040
    .local v4, "wm":Landroid/view/ViewManager;
    if-nez v4, :cond_0

    #@6
    .line 1041
    return-void

    #@7
    .line 1044
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@9
    .line 1045
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_2

    #@b
    array-length v0, v3

    #@c
    .line 1046
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@f
    .line 1047
    aget-object v2, v3, v1

    #@11
    .line 1048
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    #@13
    .line 1049
    const/4 v5, 0x1

    #@14
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@17
    .line 1046
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_1

    #@1a
    .line 1045
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v0, 0x0

    #@1b
    .restart local v0    # "N":I
    goto :goto_0

    #@1c
    .line 1053
    .restart local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    #@1f
    .line 1038
    return-void
.end method

.method public final closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 808
    if-nez p1, :cond_0

    #@3
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@9
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    #@c
    move-result v0

    #@d
    .line 808
    if-eqz v0, :cond_0

    #@f
    .line 810
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
    .line 812
    :cond_0
    const/4 v0, 0x6

    #@1e
    if-ne p1, v0, :cond_2

    #@20
    .line 813
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    #@23
    .line 807
    :goto_0
    return-void

    #@24
    .line 811
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@26
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    #@29
    goto :goto_0

    #@2a
    .line 815
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

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
    .line 832
    if-eqz p2, :cond_0

    #@4
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@6
    if-nez v1, :cond_0

    #@8
    .line 833
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
    .line 832
    if-eqz v1, :cond_0

    #@14
    .line 834
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@16
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    #@19
    .line 835
    return-void

    #@1a
    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    #@1d
    move-result-object v0

    #@1e
    .line 839
    .local v0, "wm":Landroid/view/ViewManager;
    if-eqz v0, :cond_2

    #@20
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 840
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 841
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2a
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    #@2d
    .line 843
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 844
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    #@33
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    #@36
    .line 848
    :cond_1
    if-eqz p2, :cond_2

    #@38
    .line 849
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@3a
    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    #@3d
    .line 853
    :cond_2
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@3f
    .line 854
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@41
    .line 855
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@43
    .line 858
    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@45
    .line 860
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@47
    if-eqz v1, :cond_3

    #@49
    .line 863
    const/4 v1, 0x1

    #@4a
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@4c
    .line 864
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@4e
    .line 867
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@50
    if-ne v1, p1, :cond_4

    #@52
    .line 868
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@54
    .line 869
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@56
    .line 830
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
    .line 4297
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@4
    .line 4298
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 4299
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@e
    .line 4296
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
    .line 915
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@6
    move-result-object v1

    #@7
    .line 916
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    #@9
    .line 917
    return-void

    #@a
    .line 919
    :cond_0
    const/4 v0, 0x0

    #@b
    .line 920
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 921
    new-instance v0, Landroid/os/Bundle;

    #@11
    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@14
    .line 922
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@16
    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    #@19
    .line 923
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    #@1c
    move-result v2

    #@1d
    if-lez v2, :cond_1

    #@1f
    .line 924
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@21
    .line 927
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@23
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@26
    .line 928
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@28
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    #@2b
    .line 930
    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    :cond_2
    iput-boolean v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    #@2d
    .line 931
    iput-boolean v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    #@2f
    .line 934
    const/16 v2, 0x8

    #@31
    if-eq p1, v2, :cond_3

    #@33
    if-nez p1, :cond_4

    #@35
    .line 935
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@37
    if-eqz v2, :cond_4

    #@39
    .line 936
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@3c
    move-result-object v1

    #@3d
    .line 937
    if-eqz v1, :cond_4

    #@3f
    .line 938
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@41
    .line 939
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@44
    .line 914
    :cond_4
    return-void
.end method

.method doPendingInvalidatePanelMenu()V
    .locals 2

    #@0
    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 909
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@6
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 910
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@d
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@10
    .line 907
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
    .line 1135
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@3
    .line 1136
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_0

    #@5
    array-length v0, v3

    #@6
    .line 1137
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@9
    .line 1138
    aget-object v2, v3, v1

    #@b
    .line 1139
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    #@d
    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@f
    if-ne v4, p1, :cond_1

    #@11
    .line 1140
    return-object v2

    #@12
    .line 1136
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    const/4 v0, 0x0

    #@13
    .restart local v0    # "N":I
    goto :goto_0

    #@14
    .line 1137
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_1

    #@17
    .line 1143
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    return-object v5
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .locals 3

    #@0
    .prologue
    .line 3630
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const/4 v2, -0x1

    #@7
    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    #@a
    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 24
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@0
    .prologue
    .line 3651
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    #@3
    move-result-object v3

    #@4
    .line 3663
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v21, 0x4

    #@6
    const/16 v22, 0x0

    #@8
    move/from16 v0, v21

    #@a
    move/from16 v1, v22

    #@c
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f
    move-result v21

    #@10
    move/from16 v0, v21

    #@12
    move-object/from16 v1, p0

    #@14
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@16
    .line 3665
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@19
    move-result v21

    #@1a
    move/from16 v0, v21

    #@1c
    not-int v0, v0

    #@1d
    move/from16 v21, v0

    #@1f
    .line 3664
    const v22, 0x10100

    #@22
    and-int v8, v22, v21

    #@24
    .line 3666
    .local v8, "flagsToUpdate":I
    move-object/from16 v0, p0

    #@26
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@28
    move/from16 v21, v0

    #@2a
    if-eqz v21, :cond_23

    #@2c
    .line 3667
    const/16 v21, -0x2

    #@2e
    const/16 v22, -0x2

    #@30
    move-object/from16 v0, p0

    #@32
    move/from16 v1, v21

    #@34
    move/from16 v2, v22

    #@36
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    #@39
    .line 3668
    const/16 v21, 0x0

    #@3b
    move-object/from16 v0, p0

    #@3d
    move/from16 v1, v21

    #@3f
    invoke-virtual {v0, v1, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@42
    .line 3673
    :goto_0
    const/16 v21, 0x3

    #@44
    const/16 v22, 0x0

    #@46
    move/from16 v0, v21

    #@48
    move/from16 v1, v22

    #@4a
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4d
    move-result v21

    #@4e
    if-eqz v21, :cond_24

    #@50
    .line 3674
    const/16 v21, 0x1

    #@52
    move-object/from16 v0, p0

    #@54
    move/from16 v1, v21

    #@56
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@59
    .line 3680
    :cond_0
    :goto_1
    const/16 v21, 0x11

    #@5b
    const/16 v22, 0x0

    #@5d
    move/from16 v0, v21

    #@5f
    move/from16 v1, v22

    #@61
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@64
    move-result v21

    #@65
    if-eqz v21, :cond_1

    #@67
    .line 3681
    const/16 v21, 0x9

    #@69
    move-object/from16 v0, p0

    #@6b
    move/from16 v1, v21

    #@6d
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@70
    .line 3684
    :cond_1
    const/16 v21, 0x10

    #@72
    const/16 v22, 0x0

    #@74
    move/from16 v0, v21

    #@76
    move/from16 v1, v22

    #@78
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@7b
    move-result v21

    #@7c
    if-eqz v21, :cond_2

    #@7e
    .line 3685
    const/16 v21, 0xa

    #@80
    move-object/from16 v0, p0

    #@82
    move/from16 v1, v21

    #@84
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@87
    .line 3688
    :cond_2
    const/16 v21, 0x19

    #@89
    const/16 v22, 0x0

    #@8b
    move/from16 v0, v21

    #@8d
    move/from16 v1, v22

    #@8f
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@92
    move-result v21

    #@93
    if-eqz v21, :cond_3

    #@95
    .line 3689
    const/16 v21, 0xb

    #@97
    move-object/from16 v0, p0

    #@99
    move/from16 v1, v21

    #@9b
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@9e
    .line 3692
    :cond_3
    const/16 v21, 0x9

    #@a0
    const/16 v22, 0x0

    #@a2
    move/from16 v0, v21

    #@a4
    move/from16 v1, v22

    #@a6
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a9
    move-result v21

    #@aa
    if-eqz v21, :cond_4

    #@ac
    .line 3693
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@af
    move-result v21

    #@b0
    move/from16 v0, v21

    #@b2
    not-int v0, v0

    #@b3
    move/from16 v21, v0

    #@b5
    move/from16 v0, v21

    #@b7
    and-int/lit16 v0, v0, 0x400

    #@b9
    move/from16 v21, v0

    #@bb
    const/16 v22, 0x400

    #@bd
    move-object/from16 v0, p0

    #@bf
    move/from16 v1, v22

    #@c1
    move/from16 v2, v21

    #@c3
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@c6
    .line 3696
    :cond_4
    const/16 v21, 0x17

    #@c8
    .line 3697
    const/16 v22, 0x0

    #@ca
    .line 3696
    move/from16 v0, v21

    #@cc
    move/from16 v1, v22

    #@ce
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d1
    move-result v21

    #@d2
    if-eqz v21, :cond_5

    #@d4
    .line 3699
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@d7
    move-result v21

    #@d8
    move/from16 v0, v21

    #@da
    not-int v0, v0

    #@db
    move/from16 v21, v0

    #@dd
    .line 3698
    const/high16 v22, 0x4000000

    #@df
    and-int v21, v21, v22

    #@e1
    const/high16 v22, 0x4000000

    #@e3
    move-object/from16 v0, p0

    #@e5
    move/from16 v1, v22

    #@e7
    move/from16 v2, v21

    #@e9
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@ec
    .line 3702
    :cond_5
    const/16 v21, 0x18

    #@ee
    .line 3703
    const/16 v22, 0x0

    #@f0
    .line 3702
    move/from16 v0, v21

    #@f2
    move/from16 v1, v22

    #@f4
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f7
    move-result v21

    #@f8
    if-eqz v21, :cond_6

    #@fa
    .line 3705
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@fd
    move-result v21

    #@fe
    move/from16 v0, v21

    #@100
    not-int v0, v0

    #@101
    move/from16 v21, v0

    #@103
    .line 3704
    const/high16 v22, 0x8000000

    #@105
    and-int v21, v21, v22

    #@107
    const/high16 v22, 0x8000000

    #@109
    move-object/from16 v0, p0

    #@10b
    move/from16 v1, v22

    #@10d
    move/from16 v2, v21

    #@10f
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@112
    .line 3708
    :cond_6
    const/16 v21, 0x16

    #@114
    const/16 v22, 0x0

    #@116
    move/from16 v0, v21

    #@118
    move/from16 v1, v22

    #@11a
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@11d
    move-result v21

    #@11e
    if-eqz v21, :cond_7

    #@120
    .line 3709
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@123
    move-result v21

    #@124
    move/from16 v0, v21

    #@126
    not-int v0, v0

    #@127
    move/from16 v21, v0

    #@129
    const/high16 v22, 0x2000000

    #@12b
    and-int v21, v21, v22

    #@12d
    const/high16 v22, 0x2000000

    #@12f
    move-object/from16 v0, p0

    #@131
    move/from16 v1, v22

    #@133
    move/from16 v2, v21

    #@135
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@138
    .line 3712
    :cond_7
    const/16 v21, 0xe

    #@13a
    const/16 v22, 0x0

    #@13c
    move/from16 v0, v21

    #@13e
    move/from16 v1, v22

    #@140
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@143
    move-result v21

    #@144
    if-eqz v21, :cond_8

    #@146
    .line 3713
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@149
    move-result v21

    #@14a
    move/from16 v0, v21

    #@14c
    not-int v0, v0

    #@14d
    move/from16 v21, v0

    #@14f
    const/high16 v22, 0x100000

    #@151
    and-int v21, v21, v22

    #@153
    const/high16 v22, 0x100000

    #@155
    move-object/from16 v0, p0

    #@157
    move/from16 v1, v22

    #@159
    move/from16 v2, v21

    #@15b
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@15e
    .line 3717
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@161
    move-result-object v21

    #@162
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@165
    move-result-object v21

    #@166
    move-object/from16 v0, v21

    #@168
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@16a
    move/from16 v21, v0

    #@16c
    .line 3718
    const/16 v22, 0xb

    #@16e
    .line 3717
    move/from16 v0, v21

    #@170
    move/from16 v1, v22

    #@172
    if-lt v0, v1, :cond_25

    #@174
    const/16 v21, 0x1

    #@176
    .line 3716
    :goto_2
    const/16 v22, 0x12

    #@178
    move/from16 v0, v22

    #@17a
    move/from16 v1, v21

    #@17c
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@17f
    move-result v21

    #@180
    if-eqz v21, :cond_9

    #@182
    .line 3719
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@185
    move-result v21

    #@186
    move/from16 v0, v21

    #@188
    not-int v0, v0

    #@189
    move/from16 v21, v0

    #@18b
    const/high16 v22, 0x800000

    #@18d
    and-int v21, v21, v22

    #@18f
    const/high16 v22, 0x800000

    #@191
    move-object/from16 v0, p0

    #@193
    move/from16 v1, v22

    #@195
    move/from16 v2, v21

    #@197
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@19a
    .line 3722
    :cond_9
    move-object/from16 v0, p0

    #@19c
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    #@19e
    move-object/from16 v21, v0

    #@1a0
    const/16 v22, 0x13

    #@1a2
    move/from16 v0, v22

    #@1a4
    move-object/from16 v1, v21

    #@1a6
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@1a9
    .line 3723
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    #@1ad
    move-object/from16 v21, v0

    #@1af
    const/16 v22, 0x14

    #@1b1
    move/from16 v0, v22

    #@1b3
    move-object/from16 v1, v21

    #@1b5
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@1b8
    .line 3724
    const/16 v21, 0x31

    #@1ba
    move/from16 v0, v21

    #@1bc
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1bf
    move-result v21

    #@1c0
    if-eqz v21, :cond_b

    #@1c2
    .line 3725
    move-object/from16 v0, p0

    #@1c4
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@1c6
    move-object/from16 v21, v0

    #@1c8
    if-nez v21, :cond_a

    #@1ca
    new-instance v21, Landroid/util/TypedValue;

    #@1cc
    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    #@1cf
    move-object/from16 v0, v21

    #@1d1
    move-object/from16 v1, p0

    #@1d3
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@1d5
    .line 3727
    :cond_a
    move-object/from16 v0, p0

    #@1d7
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@1d9
    move-object/from16 v21, v0

    #@1db
    .line 3726
    const/16 v22, 0x31

    #@1dd
    move/from16 v0, v22

    #@1df
    move-object/from16 v1, v21

    #@1e1
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@1e4
    .line 3729
    :cond_b
    const/16 v21, 0x33

    #@1e6
    move/from16 v0, v21

    #@1e8
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1eb
    move-result v21

    #@1ec
    if-eqz v21, :cond_d

    #@1ee
    .line 3730
    move-object/from16 v0, p0

    #@1f0
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@1f2
    move-object/from16 v21, v0

    #@1f4
    if-nez v21, :cond_c

    #@1f6
    new-instance v21, Landroid/util/TypedValue;

    #@1f8
    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    #@1fb
    move-object/from16 v0, v21

    #@1fd
    move-object/from16 v1, p0

    #@1ff
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@201
    .line 3732
    :cond_c
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@205
    move-object/from16 v21, v0

    #@207
    .line 3731
    const/16 v22, 0x33

    #@209
    move/from16 v0, v22

    #@20b
    move-object/from16 v1, v21

    #@20d
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@210
    .line 3734
    :cond_d
    const/16 v21, 0x34

    #@212
    move/from16 v0, v21

    #@214
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@217
    move-result v21

    #@218
    if-eqz v21, :cond_f

    #@21a
    .line 3735
    move-object/from16 v0, p0

    #@21c
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@21e
    move-object/from16 v21, v0

    #@220
    if-nez v21, :cond_e

    #@222
    new-instance v21, Landroid/util/TypedValue;

    #@224
    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    #@227
    move-object/from16 v0, v21

    #@229
    move-object/from16 v1, p0

    #@22b
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@22d
    .line 3737
    :cond_e
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@231
    move-object/from16 v21, v0

    #@233
    .line 3736
    const/16 v22, 0x34

    #@235
    move/from16 v0, v22

    #@237
    move-object/from16 v1, v21

    #@239
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@23c
    .line 3739
    :cond_f
    const/16 v21, 0x32

    #@23e
    move/from16 v0, v21

    #@240
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@243
    move-result v21

    #@244
    if-eqz v21, :cond_11

    #@246
    .line 3740
    move-object/from16 v0, p0

    #@248
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@24a
    move-object/from16 v21, v0

    #@24c
    if-nez v21, :cond_10

    #@24e
    new-instance v21, Landroid/util/TypedValue;

    #@250
    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    #@253
    move-object/from16 v0, v21

    #@255
    move-object/from16 v1, p0

    #@257
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@259
    .line 3742
    :cond_10
    move-object/from16 v0, p0

    #@25b
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@25d
    move-object/from16 v21, v0

    #@25f
    .line 3741
    const/16 v22, 0x32

    #@261
    move/from16 v0, v22

    #@263
    move-object/from16 v1, v21

    #@265
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    #@268
    .line 3744
    :cond_11
    const/16 v21, 0x1a

    #@26a
    const/16 v22, 0x0

    #@26c
    move/from16 v0, v21

    #@26e
    move/from16 v1, v22

    #@270
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@273
    move-result v21

    #@274
    if-eqz v21, :cond_12

    #@276
    .line 3745
    const/16 v21, 0xc

    #@278
    move-object/from16 v0, p0

    #@27a
    move/from16 v1, v21

    #@27c
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@27f
    .line 3747
    :cond_12
    const/16 v21, 0x2d

    #@281
    const/16 v22, 0x0

    #@283
    move/from16 v0, v21

    #@285
    move/from16 v1, v22

    #@287
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@28a
    move-result v21

    #@28b
    if-eqz v21, :cond_13

    #@28d
    .line 3748
    const/16 v21, 0xd

    #@28f
    move-object/from16 v0, p0

    #@291
    move/from16 v1, v21

    #@293
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@296
    .line 3751
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@299
    move-result-object v6

    #@29a
    .line 3752
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@29d
    move-result-object v21

    #@29e
    move-object/from16 v0, v21

    #@2a0
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@2a2
    move/from16 v20, v0

    #@2a4
    .line 3753
    .local v20, "targetSdk":I
    const/16 v21, 0xb

    #@2a6
    move/from16 v0, v20

    #@2a8
    move/from16 v1, v21

    #@2aa
    if-ge v0, v1, :cond_26

    #@2ac
    const/16 v17, 0x1

    #@2ae
    .line 3754
    .local v17, "targetPreHoneycomb":Z
    :goto_3
    const/16 v21, 0xe

    #@2b0
    move/from16 v0, v20

    #@2b2
    move/from16 v1, v21

    #@2b4
    if-ge v0, v1, :cond_27

    #@2b6
    const/16 v18, 0x1

    #@2b8
    .line 3755
    .local v18, "targetPreIcs":Z
    :goto_4
    const/16 v21, 0x15

    #@2ba
    move/from16 v0, v20

    #@2bc
    move/from16 v1, v21

    #@2be
    if-ge v0, v1, :cond_28

    #@2c0
    const/16 v19, 0x1

    #@2c2
    .line 3756
    .local v19, "targetPreL":Z
    :goto_5
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2c5
    move-result-object v21

    #@2c6
    .line 3757
    const v22, 0x1120009

    #@2c9
    .line 3756
    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@2cc
    move-result v16

    #@2cd
    .line 3758
    .local v16, "targetHcNeedsOptions":Z
    const/16 v21, 0x8

    #@2cf
    move-object/from16 v0, p0

    #@2d1
    move/from16 v1, v21

    #@2d3
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@2d6
    move-result v21

    #@2d7
    if-eqz v21, :cond_29

    #@2d9
    const/16 v21, 0x1

    #@2db
    move-object/from16 v0, p0

    #@2dd
    move/from16 v1, v21

    #@2df
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@2e2
    move-result v12

    #@2e3
    .line 3760
    :goto_6
    if-nez v17, :cond_14

    #@2e5
    if-eqz v18, :cond_2a

    #@2e7
    if-eqz v16, :cond_2a

    #@2e9
    if-eqz v12, :cond_2a

    #@2eb
    .line 3761
    :cond_14
    const/16 v21, 0x1

    #@2ed
    move-object/from16 v0, p0

    #@2ef
    move/from16 v1, v21

    #@2f1
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    #@2f4
    .line 3768
    :goto_7
    move-object/from16 v0, p0

    #@2f6
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@2f8
    move/from16 v21, v0

    #@2fa
    if-nez v21, :cond_15

    #@2fc
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@2ff
    move-result v21

    #@300
    if-eqz v21, :cond_15

    #@302
    .line 3769
    if-nez v19, :cond_15

    #@304
    .line 3770
    const/16 v21, 0x22

    #@306
    .line 3771
    const/16 v22, 0x0

    #@308
    .line 3769
    move/from16 v0, v21

    #@30a
    move/from16 v1, v22

    #@30c
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@30f
    move-result v21

    #@310
    if-eqz v21, :cond_15

    #@312
    .line 3773
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@315
    move-result v21

    #@316
    move/from16 v0, v21

    #@318
    not-int v0, v0

    #@319
    move/from16 v21, v0

    #@31b
    const/high16 v22, -0x80000000

    #@31d
    and-int v21, v21, v22

    #@31f
    .line 3772
    const/high16 v22, -0x80000000

    #@321
    move-object/from16 v0, p0

    #@323
    move/from16 v1, v22

    #@325
    move/from16 v2, v21

    #@327
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@32a
    .line 3776
    :cond_15
    move-object/from16 v0, p0

    #@32c
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    #@32e
    move/from16 v21, v0

    #@330
    if-nez v21, :cond_16

    #@332
    .line 3777
    const/16 v21, 0x23

    #@334
    const/high16 v22, -0x1000000

    #@336
    move/from16 v0, v21

    #@338
    move/from16 v1, v22

    #@33a
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@33d
    move-result v21

    #@33e
    move/from16 v0, v21

    #@340
    move-object/from16 v1, p0

    #@342
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    #@344
    .line 3779
    :cond_16
    move-object/from16 v0, p0

    #@346
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    #@348
    move/from16 v21, v0

    #@34a
    if-nez v21, :cond_17

    #@34c
    .line 3780
    const/16 v21, 0x24

    #@34e
    const/high16 v22, -0x1000000

    #@350
    move/from16 v0, v21

    #@352
    move/from16 v1, v22

    #@354
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@357
    move-result v21

    #@358
    move/from16 v0, v21

    #@35a
    move-object/from16 v1, p0

    #@35c
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    #@35e
    .line 3782
    :cond_17
    const/16 v21, 0x2e

    #@360
    const/16 v22, 0x0

    #@362
    move/from16 v0, v21

    #@364
    move/from16 v1, v22

    #@366
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@369
    move-result v21

    #@36a
    if-eqz v21, :cond_18

    #@36c
    .line 3784
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getSystemUiVisibility()I

    #@36f
    move-result v21

    #@370
    move/from16 v0, v21

    #@372
    or-int/lit16 v0, v0, 0x2000

    #@374
    move/from16 v21, v0

    #@376
    .line 3783
    move-object/from16 v0, p1

    #@378
    move/from16 v1, v21

    #@37a
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setSystemUiVisibility(I)V

    #@37d
    .line 3787
    :cond_18
    move-object/from16 v0, p0

    #@37f
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    #@381
    move/from16 v21, v0

    #@383
    if-nez v21, :cond_19

    #@385
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@388
    move-result-object v21

    #@389
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@38c
    move-result-object v21

    #@38d
    move-object/from16 v0, v21

    #@38f
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@391
    move/from16 v21, v0

    #@393
    .line 3788
    const/16 v22, 0xb

    #@395
    .line 3787
    move/from16 v0, v21

    #@397
    move/from16 v1, v22

    #@399
    if-lt v0, v1, :cond_1a

    #@39b
    .line 3790
    :cond_19
    const/16 v21, 0x15

    #@39d
    .line 3791
    const/16 v22, 0x0

    #@39f
    .line 3789
    move/from16 v0, v21

    #@3a1
    move/from16 v1, v22

    #@3a3
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3a6
    move-result v21

    #@3a7
    if-eqz v21, :cond_1a

    #@3a9
    .line 3792
    const/16 v21, 0x1

    #@3ab
    move-object/from16 v0, p0

    #@3ad
    move/from16 v1, v21

    #@3af
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    #@3b2
    .line 3796
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3b5
    move-result-object v13

    #@3b6
    .line 3798
    .local v13, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->hasSoftInputMode()Z

    #@3b9
    move-result v21

    #@3ba
    if-nez v21, :cond_1b

    #@3bc
    .line 3801
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@3be
    move/from16 v21, v0

    #@3c0
    .line 3800
    const/16 v22, 0xd

    #@3c2
    .line 3799
    move/from16 v0, v22

    #@3c4
    move/from16 v1, v21

    #@3c6
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3c9
    move-result v21

    #@3ca
    move/from16 v0, v21

    #@3cc
    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@3ce
    .line 3805
    :cond_1b
    move-object/from16 v0, p0

    #@3d0
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@3d2
    move/from16 v21, v0

    #@3d4
    .line 3804
    const/16 v22, 0xb

    #@3d6
    move/from16 v0, v22

    #@3d8
    move/from16 v1, v21

    #@3da
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3dd
    move-result v21

    #@3de
    if-eqz v21, :cond_1d

    #@3e0
    .line 3807
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    #@3e3
    move-result v21

    #@3e4
    and-int/lit8 v21, v21, 0x2

    #@3e6
    if-nez v21, :cond_1c

    #@3e8
    .line 3808
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3ea
    move/from16 v21, v0

    #@3ec
    or-int/lit8 v21, v21, 0x2

    #@3ee
    move/from16 v0, v21

    #@3f0
    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3f2
    .line 3810
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->haveDimAmount()Z

    #@3f5
    move-result v21

    #@3f6
    if-nez v21, :cond_1d

    #@3f8
    .line 3812
    const/16 v21, 0x0

    #@3fa
    const/high16 v22, 0x3f000000    # 0.5f

    #@3fc
    .line 3811
    move/from16 v0, v21

    #@3fe
    move/from16 v1, v22

    #@400
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@403
    move-result v21

    #@404
    move/from16 v0, v21

    #@406
    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@408
    .line 3816
    :cond_1d
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@40a
    move/from16 v21, v0

    #@40c
    if-nez v21, :cond_1e

    #@40e
    .line 3818
    const/16 v21, 0x8

    #@410
    const/16 v22, 0x0

    #@412
    .line 3817
    move/from16 v0, v21

    #@414
    move/from16 v1, v22

    #@416
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@419
    move-result v21

    #@41a
    move/from16 v0, v21

    #@41c
    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@41e
    .line 3823
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@421
    move-result-object v21

    #@422
    if-nez v21, :cond_22

    #@424
    .line 3824
    move-object/from16 v0, p0

    #@426
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@428
    move-object/from16 v21, v0

    #@42a
    if-nez v21, :cond_21

    #@42c
    .line 3825
    move-object/from16 v0, p0

    #@42e
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@430
    move/from16 v21, v0

    #@432
    if-nez v21, :cond_1f

    #@434
    .line 3827
    const/16 v21, 0x1

    #@436
    const/16 v22, 0x0

    #@438
    .line 3826
    move/from16 v0, v21

    #@43a
    move/from16 v1, v22

    #@43c
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@43f
    move-result v21

    #@440
    move/from16 v0, v21

    #@442
    move-object/from16 v1, p0

    #@444
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@446
    .line 3829
    :cond_1f
    move-object/from16 v0, p0

    #@448
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    #@44a
    move/from16 v21, v0

    #@44c
    if-nez v21, :cond_20

    #@44e
    .line 3830
    const/16 v21, 0x2

    #@450
    const/16 v22, 0x0

    #@452
    move/from16 v0, v21

    #@454
    move/from16 v1, v22

    #@456
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@459
    move-result v21

    #@45a
    move/from16 v0, v21

    #@45c
    move-object/from16 v1, p0

    #@45e
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    #@460
    .line 3833
    :cond_20
    const/16 v21, 0x2f

    #@462
    const/16 v22, 0x0

    #@464
    .line 3832
    move/from16 v0, v21

    #@466
    move/from16 v1, v22

    #@468
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@46b
    move-result v21

    #@46c
    move/from16 v0, v21

    #@46e
    move-object/from16 v1, p0

    #@470
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@472
    .line 3840
    :cond_21
    const/16 v21, 0x0

    #@474
    const/16 v22, 0x26

    #@476
    move/from16 v0, v22

    #@478
    move/from16 v1, v21

    #@47a
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@47d
    move-result v21

    #@47e
    move/from16 v0, v21

    #@480
    move-object/from16 v1, p0

    #@482
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    #@484
    .line 3841
    const/16 v21, 0x27

    #@486
    const/16 v22, 0x0

    #@488
    move/from16 v0, v21

    #@48a
    move/from16 v1, v22

    #@48c
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@48f
    move-result v21

    #@490
    move/from16 v0, v21

    #@492
    move-object/from16 v1, p0

    #@494
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    #@496
    .line 3842
    const/16 v21, 0x7

    #@498
    const/16 v22, 0x0

    #@49a
    move/from16 v0, v21

    #@49c
    move/from16 v1, v22

    #@49e
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@4a1
    move-result v21

    #@4a2
    move/from16 v0, v21

    #@4a4
    move-object/from16 v1, p0

    #@4a6
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    #@4a8
    .line 3848
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    #@4ab
    move-result v7

    #@4ac
    .line 3850
    .local v7, "features":I
    and-int/lit16 v0, v7, 0x800

    #@4ae
    move/from16 v21, v0

    #@4b0
    if-eqz v21, :cond_2b

    #@4b2
    .line 3851
    const v11, 0x10900cb

    #@4b5
    .line 3907
    .local v11, "layoutResource":I
    :goto_8
    move-object/from16 v0, p0

    #@4b7
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@4b9
    move-object/from16 v21, v0

    #@4bb
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startChanging()V

    #@4be
    .line 3909
    move-object/from16 v0, p0

    #@4c0
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@4c2
    move-object/from16 v21, v0

    #@4c4
    const/16 v22, 0x0

    #@4c6
    move-object/from16 v0, v21

    #@4c8
    move-object/from16 v1, v22

    #@4ca
    invoke-virtual {v0, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@4cd
    move-result-object v10

    #@4ce
    .line 3910
    .local v10, "in":Landroid/view/View;
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    #@4d0
    const/16 v22, -0x1

    #@4d2
    const/16 v23, -0x1

    #@4d4
    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@4d7
    move-object/from16 v0, p1

    #@4d9
    move-object/from16 v1, v21

    #@4db
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@4de
    .line 3911
    check-cast v10, Landroid/view/ViewGroup;

    #@4e0
    .end local v10    # "in":Landroid/view/View;
    move-object/from16 v0, p0

    #@4e2
    iput-object v10, v0, Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;

    #@4e4
    .line 3913
    const v21, 0x1020002

    #@4e7
    move-object/from16 v0, p0

    #@4e9
    move/from16 v1, v21

    #@4eb
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@4ee
    move-result-object v5

    #@4ef
    check-cast v5, Landroid/view/ViewGroup;

    #@4f1
    .line 3914
    .local v5, "contentParent":Landroid/view/ViewGroup;
    if-nez v5, :cond_35

    #@4f3
    .line 3915
    new-instance v21, Ljava/lang/RuntimeException;

    #@4f5
    const-string/jumbo v22, "Window couldn\'t find content container view"

    #@4f8
    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4fb
    throw v21

    #@4fc
    .line 3670
    .end local v5    # "contentParent":Landroid/view/ViewGroup;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "features":I
    .end local v11    # "layoutResource":I
    .end local v13    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "targetHcNeedsOptions":Z
    .end local v17    # "targetPreHoneycomb":Z
    .end local v18    # "targetPreIcs":Z
    .end local v19    # "targetPreL":Z
    .end local v20    # "targetSdk":I
    :cond_23
    const v21, 0x10100

    #@4ff
    move-object/from16 v0, p0

    #@501
    move/from16 v1, v21

    #@503
    invoke-virtual {v0, v1, v8}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    #@506
    goto/16 :goto_0

    #@508
    .line 3675
    :cond_24
    const/16 v21, 0xf

    #@50a
    const/16 v22, 0x0

    #@50c
    move/from16 v0, v21

    #@50e
    move/from16 v1, v22

    #@510
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@513
    move-result v21

    #@514
    if-eqz v21, :cond_0

    #@516
    .line 3677
    const/16 v21, 0x8

    #@518
    move-object/from16 v0, p0

    #@51a
    move/from16 v1, v21

    #@51c
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@51f
    goto/16 :goto_1

    #@521
    .line 3717
    :cond_25
    const/16 v21, 0x0

    #@523
    goto/16 :goto_2

    #@525
    .line 3753
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v20    # "targetSdk":I
    :cond_26
    const/16 v17, 0x0

    #@527
    .restart local v17    # "targetPreHoneycomb":Z
    goto/16 :goto_3

    #@529
    .line 3754
    :cond_27
    const/16 v18, 0x0

    #@52b
    .restart local v18    # "targetPreIcs":Z
    goto/16 :goto_4

    #@52d
    .line 3755
    :cond_28
    const/16 v19, 0x0

    #@52f
    .restart local v19    # "targetPreL":Z
    goto/16 :goto_5

    #@531
    .line 3758
    .restart local v16    # "targetHcNeedsOptions":Z
    :cond_29
    const/4 v12, 0x1

    #@532
    .local v12, "noActionBar":Z
    goto/16 :goto_6

    #@534
    .line 3763
    .end local v12    # "noActionBar":Z
    :cond_2a
    const/16 v21, 0x2

    #@536
    move-object/from16 v0, p0

    #@538
    move/from16 v1, v21

    #@53a
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    #@53d
    goto/16 :goto_7

    #@53f
    .line 3852
    .restart local v7    # "features":I
    .restart local v13    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2b
    and-int/lit8 v21, v7, 0x18

    #@541
    if-eqz v21, :cond_2d

    #@543
    .line 3853
    move-object/from16 v0, p0

    #@545
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@547
    move/from16 v21, v0

    #@549
    if-eqz v21, :cond_2c

    #@54b
    .line 3854
    new-instance v15, Landroid/util/TypedValue;

    #@54d
    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    #@550
    .line 3855
    .local v15, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@553
    move-result-object v21

    #@554
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@557
    move-result-object v21

    #@558
    .line 3856
    const v22, 0x116002a

    #@55b
    const/16 v23, 0x1

    #@55d
    .line 3855
    move-object/from16 v0, v21

    #@55f
    move/from16 v1, v22

    #@561
    move/from16 v2, v23

    #@563
    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@566
    .line 3857
    iget v11, v15, Landroid/util/TypedValue;->resourceId:I

    #@568
    .line 3862
    .end local v15    # "res":Landroid/util/TypedValue;
    .restart local v11    # "layoutResource":I
    :goto_9
    const/16 v21, 0x8

    #@56a
    move-object/from16 v0, p0

    #@56c
    move/from16 v1, v21

    #@56e
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    #@571
    goto/16 :goto_8

    #@573
    .line 3859
    .end local v11    # "layoutResource":I
    :cond_2c
    const v11, 0x10900cd

    #@576
    .restart local v11    # "layoutResource":I
    goto :goto_9

    #@577
    .line 3864
    .end local v11    # "layoutResource":I
    :cond_2d
    and-int/lit8 v21, v7, 0x24

    #@579
    if-eqz v21, :cond_2e

    #@57b
    .line 3865
    and-int/lit16 v0, v7, 0x100

    #@57d
    move/from16 v21, v0

    #@57f
    if-nez v21, :cond_2e

    #@581
    .line 3868
    const v11, 0x10900c8

    #@584
    .line 3865
    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    #@586
    .line 3870
    .end local v11    # "layoutResource":I
    :cond_2e
    and-int/lit16 v0, v7, 0x80

    #@588
    move/from16 v21, v0

    #@58a
    if-eqz v21, :cond_30

    #@58c
    .line 3873
    move-object/from16 v0, p0

    #@58e
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@590
    move/from16 v21, v0

    #@592
    if-eqz v21, :cond_2f

    #@594
    .line 3874
    new-instance v15, Landroid/util/TypedValue;

    #@596
    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    #@599
    .line 3875
    .restart local v15    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@59c
    move-result-object v21

    #@59d
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@5a0
    move-result-object v21

    #@5a1
    .line 3876
    const v22, 0x116002b

    #@5a4
    const/16 v23, 0x1

    #@5a6
    .line 3875
    move-object/from16 v0, v21

    #@5a8
    move/from16 v1, v22

    #@5aa
    move/from16 v2, v23

    #@5ac
    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@5af
    .line 3877
    iget v11, v15, Landroid/util/TypedValue;->resourceId:I

    #@5b1
    .line 3882
    .end local v15    # "res":Landroid/util/TypedValue;
    .restart local v11    # "layoutResource":I
    :goto_a
    const/16 v21, 0x8

    #@5b3
    move-object/from16 v0, p0

    #@5b5
    move/from16 v1, v21

    #@5b7
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    #@5ba
    goto/16 :goto_8

    #@5bc
    .line 3879
    .end local v11    # "layoutResource":I
    :cond_2f
    const v11, 0x10900c7

    #@5bf
    .restart local v11    # "layoutResource":I
    goto :goto_a

    #@5c0
    .line 3883
    .end local v11    # "layoutResource":I
    :cond_30
    and-int/lit8 v21, v7, 0x2

    #@5c2
    if-nez v21, :cond_33

    #@5c4
    .line 3886
    move-object/from16 v0, p0

    #@5c6
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@5c8
    move/from16 v21, v0

    #@5ca
    if-eqz v21, :cond_31

    #@5cc
    .line 3887
    new-instance v15, Landroid/util/TypedValue;

    #@5ce
    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    #@5d1
    .line 3888
    .restart local v15    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@5d4
    move-result-object v21

    #@5d5
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@5d8
    move-result-object v21

    #@5d9
    .line 3889
    const v22, 0x116002c

    #@5dc
    const/16 v23, 0x1

    #@5de
    .line 3888
    move-object/from16 v0, v21

    #@5e0
    move/from16 v1, v22

    #@5e2
    move/from16 v2, v23

    #@5e4
    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@5e7
    .line 3890
    iget v11, v15, Landroid/util/TypedValue;->resourceId:I

    #@5e9
    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    #@5eb
    .line 3891
    .end local v11    # "layoutResource":I
    .end local v15    # "res":Landroid/util/TypedValue;
    :cond_31
    and-int/lit16 v0, v7, 0x100

    #@5ed
    move/from16 v21, v0

    #@5ef
    if-eqz v21, :cond_32

    #@5f1
    .line 3893
    const/16 v21, 0x30

    #@5f3
    .line 3894
    const v22, 0x10900c6

    #@5f6
    .line 3892
    move/from16 v0, v21

    #@5f8
    move/from16 v1, v22

    #@5fa
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@5fd
    move-result v11

    #@5fe
    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    #@600
    .line 3896
    .end local v11    # "layoutResource":I
    :cond_32
    const v11, 0x10900cc

    #@603
    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    #@605
    .line 3899
    .end local v11    # "layoutResource":I
    :cond_33
    and-int/lit16 v0, v7, 0x400

    #@607
    move/from16 v21, v0

    #@609
    if-eqz v21, :cond_34

    #@60b
    .line 3900
    const v11, 0x10900ca

    #@60e
    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    #@610
    .line 3903
    .end local v11    # "layoutResource":I
    :cond_34
    const v11, 0x10900c9

    #@613
    .restart local v11    # "layoutResource":I
    goto/16 :goto_8

    #@615
    .line 3918
    .restart local v5    # "contentParent":Landroid/view/ViewGroup;
    :cond_35
    and-int/lit8 v21, v7, 0x20

    #@617
    if-eqz v21, :cond_36

    #@619
    .line 3919
    const/16 v21, 0x0

    #@61b
    move-object/from16 v0, p0

    #@61d
    move/from16 v1, v21

    #@61f
    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    #@622
    move-result-object v14

    #@623
    .line 3920
    .local v14, "progress":Landroid/widget/ProgressBar;
    if-eqz v14, :cond_36

    #@625
    .line 3921
    const/16 v21, 0x1

    #@627
    move/from16 v0, v21

    #@629
    invoke-virtual {v14, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@62c
    .line 3925
    .end local v14    # "progress":Landroid/widget/ProgressBar;
    :cond_36
    and-int/lit16 v0, v7, 0x800

    #@62e
    move/from16 v21, v0

    #@630
    if-eqz v21, :cond_37

    #@632
    .line 3926
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks()V

    #@635
    .line 3931
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    #@638
    move-result-object v21

    #@639
    if-nez v21, :cond_3a

    #@63b
    .line 3933
    move-object/from16 v0, p0

    #@63d
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@63f
    move/from16 v21, v0

    #@641
    if-eqz v21, :cond_3b

    #@643
    .line 3934
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@646
    move-result-object v21

    #@647
    move-object/from16 v0, p0

    #@649
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@64b
    move/from16 v22, v0

    #@64d
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@650
    move-result-object v4

    #@651
    .line 3938
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    :goto_b
    move-object/from16 v0, p0

    #@653
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@655
    move-object/from16 v21, v0

    #@657
    move-object/from16 v0, v21

    #@659
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    #@65c
    .line 3941
    move-object/from16 v0, p0

    #@65e
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    #@660
    move/from16 v21, v0

    #@662
    if-eqz v21, :cond_3c

    #@664
    .line 3942
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@667
    move-result-object v21

    #@668
    move-object/from16 v0, p0

    #@66a
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    #@66c
    move/from16 v22, v0

    #@66e
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@671
    move-result-object v9

    #@672
    .line 3946
    :goto_c
    move-object/from16 v0, p0

    #@674
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@676
    move-object/from16 v21, v0

    #@678
    move-object/from16 v0, v21

    #@67a
    invoke-virtual {v0, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    #@67d
    .line 3948
    move-object/from16 v0, p0

    #@67f
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@681
    move-object/from16 v21, v0

    #@683
    move-object/from16 v0, p0

    #@685
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    #@687
    move/from16 v22, v0

    #@689
    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    #@68c
    .line 3949
    move-object/from16 v0, p0

    #@68e
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@690
    move-object/from16 v21, v0

    #@692
    move-object/from16 v0, p0

    #@694
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    #@696
    move/from16 v22, v0

    #@698
    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setClipToOutline(Z)V

    #@69b
    .line 3951
    move-object/from16 v0, p0

    #@69d
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@69f
    move-object/from16 v21, v0

    #@6a1
    if-eqz v21, :cond_38

    #@6a3
    .line 3952
    move-object/from16 v0, p0

    #@6a5
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@6a7
    move-object/from16 v21, v0

    #@6a9
    move-object/from16 v0, p0

    #@6ab
    move-object/from16 v1, v21

    #@6ad
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    #@6b0
    .line 3955
    :cond_38
    move-object/from16 v0, p0

    #@6b2
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    #@6b4
    move/from16 v21, v0

    #@6b6
    if-nez v21, :cond_39

    #@6b8
    .line 3956
    move-object/from16 v0, p0

    #@6ba
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    #@6bc
    move/from16 v21, v0

    #@6be
    move/from16 v0, v21

    #@6c0
    move-object/from16 v1, p0

    #@6c2
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    #@6c4
    .line 3958
    :cond_39
    move-object/from16 v0, p0

    #@6c6
    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    #@6c8
    move/from16 v21, v0

    #@6ca
    move-object/from16 v0, p0

    #@6cc
    move/from16 v1, v21

    #@6ce
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitleColor(I)V

    #@6d1
    .line 3961
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3a
    move-object/from16 v0, p0

    #@6d3
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@6d5
    move-object/from16 v21, v0

    #@6d7
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/PhoneWindow$DecorView;->finishChanging()V

    #@6da
    .line 3963
    return-object v5

    #@6db
    .line 3936
    :cond_3b
    move-object/from16 v0, p0

    #@6dd
    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@6df
    .restart local v4    # "background":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_b

    #@6e1
    .line 3944
    :cond_3c
    const/4 v9, 0x0

    #@6e2
    .local v9, "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_c
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    #@0
    .prologue
    .line 4570
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
    .line 4580
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
    .line 1855
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1856
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
    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    #@15
    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    #@0
    .prologue
    .line 374
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
    .line 460
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findFocus()Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public final getDecorView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1969
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@7
    .line 1971
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@9
    return-object v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 4521
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 4532
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@2
    return-object v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    #@0
    .prologue
    .line 4476
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@2
    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    #@0
    .prologue
    .line 5092
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    #@2
    return v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 4537
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
    .line 4538
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 4526
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
    .line 4527
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 4543
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 4554
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 4559
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@2
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 4560
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    .line 4559
    :goto_0
    return-object v0

    #@b
    .line 4560
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 4548
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@2
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 4549
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    .line 4548
    :goto_0
    return-object v0

    #@b
    .line 4549
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    #@0
    .prologue
    .line 4604
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
    .line 5078
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    #@2
    return v0
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 4

    #@0
    .prologue
    .line 4585
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
    .line 4586
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    #@d
    goto :goto_0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    #@2
    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    #@0
    .prologue
    .line 4466
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
    .line 1326
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1327
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@9
    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@b
    .line 1328
    return v5

    #@c
    .line 1331
    :cond_0
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@e
    if-nez v2, :cond_1

    #@10
    .line 1332
    return v4

    #@11
    .line 1335
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    #@13
    if-nez v2, :cond_2

    #@15
    .line 1336
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    #@17
    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;)V

    #@1a
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    #@1c
    .line 1339
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_4

    #@22
    .line 1340
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
    .line 1343
    check-cast v2, Landroid/view/View;

    #@2f
    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@31
    .line 1345
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    #@33
    if-eqz v2, :cond_5

    #@35
    .line 1347
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    #@38
    move-result v0

    #@39
    .line 1348
    .local v0, "defaultAnimations":I
    if-eqz v0, :cond_3

    #@3b
    .line 1349
    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    #@3d
    .line 1351
    :cond_3
    return v5

    #@3e
    .line 1341
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
    .restart local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    goto :goto_0

    #@49
    .line 1353
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
    .line 1273
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@6
    move-result-object v3

    #@7
    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@9
    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    #@c
    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@e
    .line 1274
    const/16 v2, 0x51

    #@10
    iput v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    #@12
    .line 1275
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p1, v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    #@19
    .line 1276
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v2

    #@1d
    .line 1277
    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    #@1f
    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    #@21
    .line 1276
    const/4 v5, 0x0

    #@22
    .line 1277
    const/4 v6, 0x0

    #@23
    .line 1276
    invoke-virtual {v2, v5, v3, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@26
    move-result-object v0

    #@27
    .line 1278
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x26

    #@29
    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@2c
    move-result v1

    #@2d
    .line 1279
    .local v1, "elevation":F
    cmpl-float v2, v1, v7

    #@2f
    if-eqz v2, :cond_0

    #@31
    .line 1280
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@33
    invoke-virtual {v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    #@36
    .line 1282
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@39
    .line 1284
    const/4 v2, 0x1

    #@3a
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
    .line 1223
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    .line 1226
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
    .line 1227
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@15
    if-eqz v6, :cond_3

    #@17
    .line 1228
    new-instance v4, Landroid/util/TypedValue;

    #@19
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    #@1c
    .line 1229
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1f
    move-result-object v0

    #@20
    .line 1230
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010431

    #@23
    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@26
    .line 1232
    const/4 v5, 0x0

    #@27
    .line 1233
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    #@29
    if-eqz v6, :cond_4

    #@2b
    .line 1234
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@32
    move-result-object v5

    #@33
    .line 1235
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@36
    .line 1236
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    #@38
    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@3b
    .line 1237
    invoke-virtual {v5, v10, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@3e
    .line 1244
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    #@40
    if-eqz v6, :cond_2

    #@42
    .line 1245
    if-nez v5, :cond_1

    #@44
    .line 1246
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@4b
    move-result-object v5

    #@4c
    .line 1247
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@4f
    .line 1249
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    #@51
    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@54
    .line 1252
    :cond_2
    if-eqz v5, :cond_3

    #@56
    .line 1253
    new-instance v2, Landroid/view/ContextThemeWrapper;

    #@58
    invoke-direct {v2, v1, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@5b
    .line 1254
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
    .line 1258
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    #@65
    invoke-direct {v3, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@68
    .line 1259
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@6b
    .line 1260
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@6e
    .line 1262
    return v8

    #@6f
    .line 1240
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
    .line 1702
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    #@7
    .line 1701
    return-void
.end method

.method public invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 899
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@3
    shl-int v1, v2, p1

    #@5
    or-int/2addr v0, v1

    #@6
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    #@8
    .line 901
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@a
    if-nez v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 902
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@12
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    #@17
    .line 903
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    #@19
    .line 898
    :cond_0
    return-void
.end method

.method public isFloating()Z
    .locals 1

    #@0
    .prologue
    .line 474
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
    .line 4222
    invoke-direct {p0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 4223
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

.method protected onActive()V
    .locals 0

    #@0
    .prologue
    .line 1963
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 624
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@3
    if-nez v2, :cond_3

    #@5
    .line 625
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@8
    move-result-object v0

    #@9
    .line 626
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    #@b
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@d
    if-eqz v2, :cond_3

    #@f
    .line 627
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@11
    if-eqz v2, :cond_4

    #@13
    .line 629
    new-instance v1, Landroid/os/Bundle;

    #@15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@18
    .line 630
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 631
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@1e
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    #@21
    .line 633
    :cond_0
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 634
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@27
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    #@2a
    .line 639
    :cond_1
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    #@2d
    .line 642
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    #@30
    .line 645
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@32
    if-eqz v2, :cond_2

    #@34
    .line 646
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@36
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    #@39
    .line 648
    :cond_2
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@3b
    if-eqz v2, :cond_3

    #@3d
    .line 649
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@3f
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    #@42
    .line 622
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .end local v1    # "state":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    #@43
    .line 655
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
    .line 1484
    const/4 v1, 0x3

    #@1
    if-ne p1, v1, :cond_0

    #@3
    .line 1485
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    #@6
    move-result-object v0

    #@7
    .line 1492
    .local v0, "view":Landroid/widget/ImageView;
    :goto_0
    if-eqz p2, :cond_2

    #@9
    .line 1493
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@c
    .line 1494
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    .line 1495
    const/4 v1, 0x0

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@13
    .line 1482
    :goto_1
    return-void

    #@14
    .line 1486
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x4

    #@15
    if-ne p1, v1, :cond_1

    #@17
    .line 1487
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    #@1a
    move-result-object v0

    #@1b
    .restart local v0    # "view":Landroid/widget/ImageView;
    goto :goto_0

    #@1c
    .line 1489
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_1
    return-void

    #@1d
    .line 1497
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
    .line 1509
    const/4 v1, 0x2

    #@1
    if-eq p1, v1, :cond_0

    #@3
    const/4 v1, 0x5

    #@4
    if-ne p1, v1, :cond_2

    #@6
    .line 1510
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateProgressBars(I)V

    #@9
    .line 1508
    :cond_1
    :goto_0
    return-void

    #@a
    .line 1511
    :cond_2
    const/4 v1, 0x7

    #@b
    if-ne p1, v1, :cond_1

    #@d
    .line 1512
    const v1, 0x1020041

    #@10
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/widget/FrameLayout;

    #@16
    .line 1513
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1

    #@18
    .line 1514
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
    .line 1773
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@4
    if-eqz v3, :cond_1

    #@6
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@8
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@b
    move-result-object v1

    #@c
    .line 1777
    :goto_0
    sparse-switch p2, :sswitch_data_0

    #@f
    .line 1843
    :cond_0
    return v2

    #@10
    .line 1773
    :cond_1
    const/4 v1, 0x0

    #@11
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    goto :goto_0

    #@12
    .line 1781
    .end local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    const/4 v0, 0x0

    #@13
    .line 1782
    .local v0, "direction":I
    sparse-switch p2, :sswitch_data_1

    #@16
    .line 1795
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 1796
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@1c
    invoke-virtual {v2, v0, v5}, Landroid/media/session/MediaController;->adjustVolume(II)V

    #@1f
    .line 1803
    :goto_2
    return v5

    #@20
    .line 1784
    :sswitch_1
    const/4 v0, 0x1

    #@21
    .line 1785
    goto :goto_1

    #@22
    .line 1787
    :sswitch_2
    const/4 v0, -0x1

    #@23
    .line 1788
    goto :goto_1

    #@24
    .line 1790
    :sswitch_3
    const/16 v0, 0x65

    #@26
    .line 1791
    goto :goto_1

    #@27
    .line 1798
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@2e
    move-result-object v2

    #@2f
    .line 1799
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    #@31
    .line 1800
    const/16 v4, 0x1011

    #@33
    .line 1798
    invoke-virtual {v2, v3, v0, v4}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    #@36
    goto :goto_2

    #@37
    .line 1818
    .end local v0    # "direction":I
    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@39
    if-eqz v3, :cond_3

    #@3b
    .line 1819
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@3d
    invoke-virtual {v3, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_3

    #@43
    .line 1820
    return v5

    #@44
    .line 1823
    :cond_3
    return v2

    #@45
    .line 1827
    :sswitch_5
    if-gez p1, :cond_4

    #@47
    move p1, v2

    #@48
    .end local p1    # "featureId":I
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    #@4b
    .line 1828
    return v5

    #@4c
    .line 1832
    .restart local p1    # "featureId":I
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@4f
    move-result v3

    #@50
    if-gtz v3, :cond_0

    #@52
    .line 1833
    if-ltz p1, :cond_0

    #@54
    .line 1835
    if-eqz v1, :cond_5

    #@56
    .line 1836
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@59
    .line 1838
    :cond_5
    return v5

    #@5a
    .line 1777
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
    .line 1782
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
    .line 951
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v0

    #@5
    .line 953
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 955
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@d
    .line 957
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@10
    move-result-object v1

    #@11
    .line 958
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    #@13
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 963
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    return v3

    #@18
    .line 959
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
    const/4 v6, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 1869
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@6
    if-eqz v4, :cond_2

    #@8
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@a
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@d
    move-result-object v0

    #@e
    .line 1870
    :goto_0
    if-eqz v0, :cond_0

    #@10
    .line 1871
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@13
    .line 1876
    :cond_0
    sparse-switch p2, :sswitch_data_0

    #@16
    .line 1959
    :cond_1
    return v3

    #@17
    .line 1869
    :cond_2
    const/4 v0, 0x0

    #@18
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    goto :goto_0

    #@19
    .line 1879
    .end local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    const/16 v1, 0x1014

    #@1b
    .line 1883
    .local v1, "flags":I
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@1d
    if-eqz v4, :cond_3

    #@1f
    .line 1884
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@21
    invoke-virtual {v4, v3, v7}, Landroid/media/session/MediaController;->adjustVolume(II)V

    #@24
    .line 1889
    :goto_1
    return v6

    #@25
    .line 1886
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@28
    move-result-object v4

    #@29
    invoke-static {v4}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@2c
    move-result-object v4

    #@2d
    .line 1887
    iget v5, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    #@2f
    .line 1886
    invoke-virtual {v4, v5, v3, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    #@32
    goto :goto_1

    #@33
    .line 1896
    .end local v1    # "flags":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    #@36
    move-result-object v3

    #@37
    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    #@39
    invoke-virtual {v3, p3, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    #@3c
    .line 1897
    return v6

    #@3d
    .line 1912
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@3f
    if-eqz v4, :cond_4

    #@41
    .line 1913
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@43
    invoke-virtual {v4, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_4

    #@49
    .line 1914
    return v6

    #@4a
    .line 1917
    :cond_4
    return v3

    #@4b
    .line 1921
    :sswitch_3
    if-gez p1, :cond_5

    #@4d
    move p1, v3

    #@4e
    .end local p1    # "featureId":I
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    #@51
    .line 1923
    return v6

    #@52
    .line 1927
    .restart local p1    # "featureId":I
    :sswitch_4
    if-ltz p1, :cond_1

    #@54
    .line 1928
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    #@57
    move-result v4

    #@58
    if-eqz v4, :cond_1

    #@5a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    #@5d
    move-result v4

    #@5e
    if-nez v4, :cond_1

    #@60
    .line 1929
    if-nez p1, :cond_6

    #@62
    .line 1930
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@65
    move-result-object v2

    #@66
    .line 1931
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_6

    #@68
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    #@6a
    if-eqz v3, :cond_6

    #@6c
    .line 1934
    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    #@6f
    .line 1935
    return v6

    #@70
    .line 1938
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    #@73
    .line 1939
    return v6

    #@74
    .line 1949
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    #@7b
    move-result v4

    #@7c
    if-nez v4, :cond_1

    #@7e
    .line 1952
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_7

    #@84
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    #@87
    move-result v3

    #@88
    if-eqz v3, :cond_8

    #@8a
    .line 1955
    :cond_7
    :goto_2
    return v6

    #@8b
    .line 1953
    :cond_8
    invoke-direct {p0, p3}, Lcom/android/internal/policy/PhoneWindow;->launchDefaultSearch(Landroid/view/KeyEvent;)Z

    #@8e
    goto :goto_2

    #@8f
    .line 1876
    nop

    #@90
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
    .line 973
    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@3
    if-eqz v4, :cond_5

    #@5
    .line 974
    iput v6, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@7
    .line 976
    invoke-direct {p0, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@a
    move-result-object v3

    #@b
    .line 978
    .local v3, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_0

    #@11
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@13
    if-eqz v4, :cond_1

    #@15
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@17
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get3(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    #@1a
    move-result-object v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 980
    :cond_0
    return-void

    #@1e
    .line 979
    :cond_1
    if-eqz v3, :cond_0

    #@20
    .line 983
    const/4 v1, 0x0

    #@21
    .line 984
    .local v1, "playSoundEffect":Z
    if-nez p1, :cond_2

    #@23
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 985
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@29
    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    #@2c
    move-result v4

    #@2d
    .line 984
    if-eqz v4, :cond_2

    #@2f
    .line 986
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@32
    move-result-object v4

    #@33
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_6

    #@3d
    .line 995
    :cond_2
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@3f
    if-nez v4, :cond_3

    #@41
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@43
    if-eqz v4, :cond_8

    #@45
    .line 999
    :cond_3
    iget-boolean v1, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@47
    .line 1002
    .local v1, "playSoundEffect":Z
    const/4 v4, 0x1

    #@48
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@4b
    .line 1025
    .end local v1    # "playSoundEffect":Z
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    #@4d
    .line 1026
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@50
    move-result-object v4

    #@51
    .line 1027
    const-string/jumbo v5, "audio"

    #@54
    .line 1026
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Landroid/media/AudioManager;

    #@5a
    .line 1028
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_a

    #@5c
    .line 1029
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    #@5f
    .line 971
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    :goto_1
    return-void

    #@60
    .line 987
    .local v1, "playSoundEffect":Z
    .restart local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@62
    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    #@65
    move-result v4

    #@66
    if-nez v4, :cond_7

    #@68
    .line 988
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@6b
    move-result v4

    #@6c
    if-nez v4, :cond_4

    #@6e
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@71
    move-result v4

    #@72
    if-eqz v4, :cond_4

    #@74
    .line 989
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@76
    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    #@79
    move-result v1

    #@7a
    .local v1, "playSoundEffect":Z
    goto :goto_0

    #@7b
    .line 992
    .local v1, "playSoundEffect":Z
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@7d
    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    #@80
    move-result v1

    #@81
    .local v1, "playSoundEffect":Z
    goto :goto_0

    #@82
    .line 1004
    .local v1, "playSoundEffect":Z
    :cond_8
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@84
    if-eqz v4, :cond_4

    #@86
    .line 1005
    const/4 v2, 0x1

    #@87
    .line 1006
    .local v2, "show":Z
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    #@89
    if-eqz v4, :cond_9

    #@8b
    .line 1009
    iput-boolean v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@8d
    .line 1010
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@90
    move-result v2

    #@91
    .line 1013
    .end local v2    # "show":Z
    :cond_9
    if-eqz v2, :cond_4

    #@93
    .line 1015
    const v4, 0xc351

    #@96
    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(II)I

    #@99
    .line 1018
    invoke-direct {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    #@9c
    .line 1020
    const/4 v1, 0x1

    #@9d
    goto :goto_0

    #@9e
    .line 1031
    .end local v1    # "playSoundEffect":Z
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_a
    const-string/jumbo v4, "PhoneWindow"

    #@a1
    const-string/jumbo v5, "Couldn\'t get audio manager"

    #@a4
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    goto :goto_1
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@3
    move-result-object v0

    #@4
    .line 1148
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 1154
    :cond_0
    const/4 v2, 0x0

    #@d
    return v2

    #@e
    .line 1149
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@15
    move-result-object v1

    #@16
    .line 1150
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    #@18
    .line 1151
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
    .line 1158
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    #@4
    .line 1157
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1303
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4
    move-result-object v1

    #@5
    .line 1304
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    #@7
    return-void

    #@8
    .line 1306
    :cond_0
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 1307
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@e
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    #@14
    .line 1308
    :goto_0
    if-eqz v0, :cond_1

    #@16
    .line 1309
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    #@19
    move-result v3

    #@1a
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@1c
    .line 1310
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    #@1f
    move-result-object v2

    #@20
    .line 1311
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_1

    #@22
    .line 1312
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@24
    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@27
    .line 1302
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_1
    return-void

    #@28
    .line 1307
    :cond_2
    const/4 v0, 0x0

    #@29
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 676
    if-nez p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 677
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@8
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    #@b
    move-result v0

    #@c
    .line 676
    if-eqz v0, :cond_0

    #@e
    .line 678
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
    .line 681
    :cond_0
    const/4 v0, 0x1

    #@1d
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    #@24
    .line 675
    :goto_0
    return-void

    #@25
    .line 679
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@27
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    #@2a
    goto :goto_0
.end method

.method public final peekDecorView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1359
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
    .line 1116
    invoke-direct {p0, p1, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@5
    move-result-object v1

    #@6
    .line 1117
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
    .line 1118
    return v4

    #@14
    .line 1120
    :cond_0
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@16
    if-nez v2, :cond_1

    #@18
    .line 1121
    return v4

    #@19
    .line 1124
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1b
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    #@1e
    move-result v0

    #@1f
    .line 1127
    .local v0, "res":Z
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@21
    if-nez v2, :cond_2

    #@23
    .line 1128
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@26
    .line 1131
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
    .line 1082
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    #@8
    move-result v0

    #@9
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
    .line 517
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 518
    return v5

    #@a
    .line 522
    :cond_0
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 523
    return v4

    #@f
    .line 526
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@11
    if-eqz v3, :cond_2

    #@13
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@15
    if-eq v3, p1, :cond_2

    #@17
    .line 528
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@19
    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@1c
    .line 531
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@1f
    move-result-object v0

    #@20
    .line 533
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    #@22
    .line 534
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@24
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    #@27
    move-result-object v3

    #@28
    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@2a
    .line 538
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
    const/4 v1, 0x1

    #@35
    .line 540
    .local v1, "isActionBarMenu":Z
    :goto_0
    if-eqz v1, :cond_5

    #@37
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@39
    if-eqz v3, :cond_5

    #@3b
    .line 543
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@3d
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    #@40
    .line 546
    :cond_5
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    #@42
    if-nez v3, :cond_12

    #@44
    .line 548
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@46
    if-eqz v3, :cond_6

    #@48
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    #@4a
    if-eqz v3, :cond_c

    #@4c
    .line 549
    :cond_6
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4e
    if-nez v3, :cond_9

    #@50
    .line 550
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
    .line 551
    :cond_7
    return v5

    #@5b
    .line 538
    .end local v1    # "isActionBarMenu":Z
    :cond_8
    const/4 v1, 0x0

    #@5c
    .restart local v1    # "isActionBarMenu":Z
    goto :goto_0

    #@5d
    .line 555
    :cond_9
    if-eqz v1, :cond_b

    #@5f
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@61
    if-eqz v3, :cond_b

    #@63
    .line 556
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@65
    if-nez v3, :cond_a

    #@67
    .line 557
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@69
    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;)V

    #@6c
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@6e
    .line 559
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@70
    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@72
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@74
    invoke-interface {v3, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@77
    .line 566
    :cond_b
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@79
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@7c
    .line 567
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
    .line 579
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    #@8a
    .line 586
    :cond_c
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@8c
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@8f
    .line 590
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@91
    if-eqz v3, :cond_d

    #@93
    .line 591
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@95
    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@97
    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    #@9a
    .line 592
    iput-object v8, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    #@9c
    .line 595
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
    .line 596
    if-eqz v1, :cond_e

    #@aa
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@ac
    if-eqz v3, :cond_e

    #@ae
    .line 599
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@b0
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@b2
    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@b5
    .line 601
    :cond_e
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@b7
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@ba
    .line 602
    return v5

    #@bb
    .line 569
    :cond_f
    invoke-virtual {p1, v8}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@be
    .line 571
    if-eqz v1, :cond_10

    #@c0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@c2
    if-eqz v3, :cond_10

    #@c4
    .line 573
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@c6
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    #@c8
    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@cb
    .line 576
    :cond_10
    return v5

    #@cc
    .line 607
    :cond_11
    if-eqz p2, :cond_13

    #@ce
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@d1
    move-result v3

    #@d2
    .line 606
    :goto_1
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@d5
    move-result-object v2

    #@d6
    .line 608
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
    .line 609
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@e1
    iget-boolean v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    #@e3
    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    #@e6
    .line 610
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@e8
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@eb
    .line 614
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_12
    iput-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@ed
    .line 615
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@ef
    .line 616
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@f1
    .line 618
    return v4

    #@f2
    .line 607
    :cond_13
    const/4 v3, -0x1

    #@f3
    goto :goto_1

    #@f4
    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v3, v5

    #@f5
    .line 608
    goto :goto_2
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
    .line 316
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 317
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@a
    const-string/jumbo v3, "requestFeature() must be called before adding content"

    #@d
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    #@14
    move-result v0

    #@15
    .line 320
    .local v0, "features":I
    shl-int v2, v5, p1

    #@17
    or-int v1, v0, v2

    #@19
    .line 321
    .local v1, "newFeatures":I
    and-int/lit16 v2, v1, 0x80

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 322
    and-int/lit16 v2, v1, -0x34c2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 325
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@23
    .line 326
    const-string/jumbo v3, "You cannot combine custom titles with other title features"

    #@26
    .line 325
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 328
    :cond_1
    and-int/lit8 v2, v0, 0x2

    #@2c
    if-eqz v2, :cond_2

    #@2e
    if-ne p1, v4, :cond_2

    #@30
    .line 329
    return v3

    #@31
    .line 331
    :cond_2
    and-int/lit16 v2, v0, 0x100

    #@33
    if-eqz v2, :cond_3

    #@35
    if-ne p1, v5, :cond_3

    #@37
    .line 333
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    #@3a
    .line 336
    :cond_3
    and-int/lit16 v2, v0, 0x100

    #@3c
    if-eqz v2, :cond_4

    #@3e
    const/16 v2, 0xb

    #@40
    if-ne p1, v2, :cond_4

    #@42
    .line 337
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@44
    .line 338
    const-string/jumbo v3, "You cannot combine swipe dismissal and the action bar."

    #@47
    .line 337
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2

    #@4b
    .line 340
    :cond_4
    and-int/lit16 v2, v0, 0x800

    #@4d
    if-eqz v2, :cond_5

    #@4f
    if-ne p1, v4, :cond_5

    #@51
    .line 341
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@53
    .line 342
    const-string/jumbo v3, "You cannot combine swipe dismissal and the action bar."

    #@56
    .line 341
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@59
    throw v2

    #@5a
    .line 345
    :cond_5
    const/4 v2, 0x5

    #@5b
    if-ne p1, v2, :cond_6

    #@5d
    .line 346
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
    .line 345
    if-eqz v2, :cond_6

    #@6e
    .line 347
    new-instance v2, Landroid/util/AndroidRuntimeException;

    #@70
    const-string/jumbo v3, "You cannot use indeterminate progress on a watch."

    #@73
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@76
    throw v2

    #@77
    .line 349
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
    .line 2028
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 2029
    return-void

    #@6
    .line 2033
    :cond_0
    const-string/jumbo v5, "android:views"

    #@9
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@c
    move-result-object v4

    #@d
    .line 2034
    .local v4, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_1

    #@f
    .line 2035
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@11
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@14
    .line 2039
    :cond_1
    const-string/jumbo v5, "android:focusedViewId"

    #@17
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1a
    move-result v1

    #@1b
    .line 2040
    .local v1, "focusedViewId":I
    if-eq v1, v6, :cond_2

    #@1d
    .line 2041
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1f
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@22
    move-result-object v2

    #@23
    .line 2042
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_5

    #@25
    .line 2043
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    #@28
    .line 2052
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_2
    :goto_0
    const-string/jumbo v5, "android:Panels"

    #@2b
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@2e
    move-result-object v3

    #@2f
    .line 2053
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_3

    #@31
    .line 2054
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    #@34
    .line 2057
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@36
    if-eqz v5, :cond_4

    #@38
    .line 2059
    const-string/jumbo v5, "android:ActionBar"

    #@3b
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@3e
    move-result-object v0

    #@3f
    .line 2060
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_6

    #@41
    .line 2061
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->doPendingInvalidatePanelMenu()V

    #@44
    .line 2062
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@46
    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    #@49
    .line 2027
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_4
    :goto_1
    return-void

    #@4a
    .line 2045
    .end local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v2    # "needsFocus":Landroid/view/View;
    :cond_5
    const-string/jumbo v5, "PhoneWindow"

    #@4d
    .line 2046
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
    .line 2047
    const-string/jumbo v7, " during save, but can\'t be found during restore."

    #@60
    .line 2046
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v6

    #@68
    .line 2045
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    goto :goto_0

    #@6c
    .line 2064
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
    .line 1987
    new-instance v2, Landroid/os/Bundle;

    #@2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 1988
    .local v2, "outState":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@7
    if-nez v5, :cond_0

    #@9
    .line 1989
    return-object v2

    #@a
    .line 1992
    :cond_0
    new-instance v4, Landroid/util/SparseArray;

    #@c
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    #@f
    .line 1993
    .local v4, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@11
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@14
    .line 1994
    const-string/jumbo v5, "android:views"

    #@17
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@1a
    .line 1997
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1c
    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    #@1f
    move-result-object v1

    #@20
    .line 1998
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_1

    #@22
    .line 1999
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    #@25
    move-result v5

    #@26
    const/4 v6, -0x1

    #@27
    if-eq v5, v6, :cond_1

    #@29
    .line 2000
    const-string/jumbo v5, "android:focusedViewId"

    #@2c
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    #@2f
    move-result v6

    #@30
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@33
    .line 2010
    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    #@35
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@38
    .line 2011
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    #@3b
    .line 2012
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@3e
    move-result v5

    #@3f
    if-lez v5, :cond_2

    #@41
    .line 2013
    const-string/jumbo v5, "android:Panels"

    #@44
    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@47
    .line 2016
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@49
    if-eqz v5, :cond_3

    #@4b
    .line 2017
    new-instance v0, Landroid/util/SparseArray;

    #@4d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@50
    .line 2018
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@52
    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    #@55
    .line 2019
    const-string/jumbo v5, "android:ActionBar"

    #@58
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@5b
    .line 2022
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_3
    return-object v2
.end method

.method sendCloseSystemWindows()V
    .locals 2

    #@0
    .prologue
    .line 5060
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    #@8
    .line 5059
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5064
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    #@7
    .line 5063
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 4565
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@6
    .line 4564
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allowExitTransitionOverlap"    # Z

    #@0
    .prologue
    .line 4575
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@6
    .line 4574
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1381
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-ne p1, v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 1382
    :cond_0
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@b
    .line 1383
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    .line 1384
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1385
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@13
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    #@16
    .line 1387
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 1388
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@1c
    if-eqz p1, :cond_3

    #@1e
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    #@21
    .line 1380
    :cond_2
    return-void

    #@22
    .line 1388
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
    .line 4210
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 4211
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    #@7
    .line 4212
    const/4 v1, 0x0

    #@8
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@b
    .line 4209
    return-void
.end method

.method public final setChildInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 4217
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    #@4
    .line 4216
    return-void
.end method

.method public final setClipToOutline(Z)V
    .locals 1
    .param p1, "clipToOutline"    # Z

    #@0
    .prologue
    .line 1373
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    #@2
    .line 1374
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1375
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setClipToOutline(Z)V

    #@b
    .line 1372
    :cond_0
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .locals 0
    .param p1, "container"    # Landroid/view/Window;

    #@0
    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    #@3
    .line 310
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "layoutResID"    # I

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    .line 382
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@4
    if-nez v2, :cond_2

    #@6
    .line 383
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@9
    .line 388
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_3

    #@f
    .line 389
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@11
    .line 390
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    #@14
    move-result-object v3

    #@15
    .line 389
    invoke-static {v2, p1, v3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    #@18
    move-result-object v1

    #@19
    .line 391
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    #@1c
    .line 395
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1e
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    #@21
    .line 396
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@24
    move-result-object v0

    #@25
    .line 397
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    #@27
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_4

    #@2d
    .line 378
    :cond_1
    :goto_2
    return-void

    #@2e
    .line 384
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@31
    move-result v2

    #@32
    if-nez v2, :cond_0

    #@34
    .line 385
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@36
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    #@39
    goto :goto_0

    #@3a
    .line 393
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    #@3c
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@3e
    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@41
    goto :goto_1

    #@42
    .line 398
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    #@45
    goto :goto_2
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 404
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@9
    .line 403
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
    .line 412
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@4
    if-nez v2, :cond_2

    #@6
    .line 413
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    #@9
    .line 418
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_3

    #@f
    .line 419
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@12
    .line 420
    new-instance v1, Landroid/transition/Scene;

    #@14
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@16
    invoke-direct {v1, v2, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@19
    .line 421
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    #@1c
    .line 425
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@1e
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    #@21
    .line 426
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@24
    move-result-object v0

    #@25
    .line 427
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    #@27
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_4

    #@2d
    .line 408
    :cond_1
    :goto_2
    return-void

    #@2e
    .line 414
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@31
    move-result v2

    #@32
    if-nez v2, :cond_0

    #@34
    .line 415
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@36
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    #@39
    goto :goto_0

    #@3a
    .line 423
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@3c
    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3f
    goto :goto_1

    #@40
    .line 428
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    #@43
    goto :goto_2
.end method

.method public setDefaultIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1657
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1658
    return-void

    #@7
    .line 1660
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    #@9
    .line 1661
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
    .line 1662
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@17
    and-int/lit8 v0, v0, 0x4

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1663
    :cond_1
    if-eqz p1, :cond_3

    #@1d
    .line 1664
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@1f
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    #@22
    .line 1665
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@24
    and-int/lit8 v0, v0, -0x5

    #@26
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@28
    .line 1656
    :cond_2
    :goto_0
    return-void

    #@29
    .line 1667
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@2b
    .line 1668
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
    .line 1667
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@3a
    .line 1669
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
    .line 1685
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1686
    return-void

    #@7
    .line 1688
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    #@9
    .line 1689
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
    .line 1684
    :cond_1
    :goto_0
    return-void

    #@16
    .line 1690
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@18
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    #@1b
    goto :goto_0
.end method

.method public final setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    #@0
    .prologue
    .line 1364
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    #@2
    .line 1365
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1366
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    #@b
    .line 1368
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@12
    .line 1363
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 4481
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    #@2
    .line 4480
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 4491
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    #@2
    .line 4490
    return-void
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1444
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 1445
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    #@7
    if-eq v1, p2, :cond_0

    #@9
    .line 1446
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    #@b
    .line 1447
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@f
    .line 1443
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
    .line 1425
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@5
    move-result-object v0

    #@6
    .line 1426
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    #@8
    .line 1427
    const/4 v1, 0x0

    #@9
    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    #@b
    .line 1428
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    #@d
    if-eq v1, p2, :cond_0

    #@f
    .line 1429
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    #@11
    .line 1430
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@14
    .line 1424
    :cond_0
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    #@0
    .prologue
    .line 1436
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 1437
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    #@7
    if-eq v1, p2, :cond_0

    #@9
    .line 1438
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    #@b
    .line 1439
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@f
    .line 1435
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
    .line 1395
    if-eqz p2, :cond_1

    #@4
    .line 1396
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@8
    move-result-object v0

    #@9
    .line 1397
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    #@b
    if-eq v1, p2, :cond_0

    #@d
    .line 1398
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    #@f
    .line 1399
    iput-object v3, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    #@11
    .line 1400
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
    .line 1401
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@1e
    .line 1394
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 1404
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
    .line 1410
    if-eqz p2, :cond_1

    #@4
    .line 1411
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@8
    move-result-object v0

    #@9
    .line 1412
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
    .line 1409
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :goto_0
    return-void

    #@16
    .line 1413
    .restart local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_0
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    #@18
    .line 1414
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    #@1a
    .line 1415
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    #@20
    .line 1416
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@23
    goto :goto_0

    #@24
    .line 1419
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@27
    goto :goto_0
.end method

.method protected setFeatureFromAttrs(ILandroid/content/res/TypedArray;II)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "drawableAttr"    # I
    .param p4, "alphaAttr"    # I

    #@0
    .prologue
    .line 3635
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v1

    #@4
    .line 3636
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@6
    .line 3637
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    #@9
    .line 3638
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@c
    .line 3640
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x1

    #@11
    shl-int/2addr v3, p1

    #@12
    and-int/2addr v2, v3

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 3641
    const/4 v2, -0x1

    #@16
    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@19
    move-result v0

    #@1a
    .line 3642
    .local v0, "alpha":I
    if-ltz v0, :cond_1

    #@1c
    .line 3643
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawableAlpha(II)V

    #@1f
    .line 3634
    .end local v0    # "alpha":I
    :cond_1
    return-void
.end method

.method public final setFeatureInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1455
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    #@4
    .line 1452
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1647
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    #@2
    .line 1648
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@8
    .line 1649
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@a
    and-int/lit8 v0, v0, -0x5

    #@c
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@e
    .line 1650
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1651
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@14
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    #@17
    .line 1646
    :cond_0
    return-void
.end method

.method public setIsStartingWindow(Z)V
    .locals 0
    .param p1, "isStartingWindow"    # Z

    #@0
    .prologue
    .line 5105
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    #@2
    .line 5104
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    #@0
    .prologue
    .line 1696
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    #@7
    .line 1695
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1676
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    #@2
    .line 1677
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    #@8
    .line 1678
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1679
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@e
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    #@11
    .line 1675
    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    #@0
    .prologue
    .line 4471
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    #@2
    .line 4470
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5097
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    #@3
    .line 5098
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    #@6
    .line 5099
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 5100
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@10
    .line 5096
    :cond_0
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 4496
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    #@2
    .line 4495
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 4486
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    #@2
    .line 4485
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 4501
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@2
    .line 4500
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 4511
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    #@2
    .line 4510
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 4516
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    #@2
    .line 4515
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 4506
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@2
    .line 4505
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 1
    .param p1, "sharedElementsUseOverlay"    # Z

    #@0
    .prologue
    .line 4599
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    #@6
    .line 4598
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5083
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    #@3
    .line 5084
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    #@6
    .line 5085
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 5086
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@10
    .line 5082
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@9
    .line 495
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    #@b
    .line 489
    return-void

    #@c
    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@12
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    #@15
    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@9
    .line 504
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    #@b
    .line 500
    return-void
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 3
    .param p1, "fadeDurationMillis"    # J

    #@0
    .prologue
    .line 4591
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 4592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "negative durations are not allowed"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 4594
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    #@11
    .line 4590
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    #@0
    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    #@2
    .line 368
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    #@0
    .prologue
    .line 354
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    #@2
    .line 353
    return-void
.end method

.method public setUiOptions(II)V
    .locals 2
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 359
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
    .line 358
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 4461
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    #@2
    .line 4460
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

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
    .line 1727
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

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
    .line 1732
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

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
    .line 1737
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

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
    .line 1742
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

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
    .line 469
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    #@2
    .line 468
    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    #@0
    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setFocusable(Z)V

    #@5
    .line 1721
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    #@0
    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    #@2
    .line 464
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
    .line 889
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 890
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 891
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@c
    .line 888
    :goto_0
    return-void

    #@d
    .line 893
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
    .line 1468
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    #@4
    move-result-object v0

    #@5
    .line 1469
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_0

    #@7
    .line 1470
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    #@a
    .line 1467
    :cond_0
    return-void
.end method
