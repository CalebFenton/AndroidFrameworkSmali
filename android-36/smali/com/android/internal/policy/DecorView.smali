.class public Lcom/android/internal/policy/DecorView;
.super Landroid/widget/FrameLayout;
.source "DecorView.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorView$ColorViewState;,
        Lcom/android/internal/policy/DecorView$ColorViewAttributes;,
        Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;,
        Lcom/android/internal/policy/DecorView$AppJankStatsCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_MEASURE:Z = false

.field public static final blacklist DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0x14

.field public static final blacklist DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0x5

.field public static final blacklist NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final blacklist SCRIM_ALPHA:I = -0x34000000

.field private static final blacklist SCRIM_LIGHT:I = -0x19000001

.field public static final blacklist STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist SWEEP_OPEN_MENU:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DecorView"


# instance fields
.field private blacklist mAllowUpdateElevation:Z

.field private blacklist mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

.field private blacklist mApplyFloatingHorizontalInsets:Z

.field private blacklist mApplyFloatingVerticalInsets:Z

.field private blacklist mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private final blacklist mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private blacklist mBackgroundBlurRadius:I

.field private final blacklist mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private blacklist mBackgroundInsets:Landroid/graphics/Insets;

.field private final blacklist mBackgroundPadding:Landroid/graphics/Rect;

.field private final blacklist mBarEnterExitDuration:I

.field private blacklist mChanging:Z

.field blacklist mContentRoot:Landroid/view/ViewGroup;

.field private blacklist mCrossWindowBlurEnabled:Z

.field private blacklist mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mDefaultOpacity:I

.field private blacklist mDownY:I

.field private blacklist mDrawLegacyNavigationBarBackground:Z

.field private blacklist mDrawLegacyNavigationBarBackgroundHandled:Z

.field private final blacklist mDrawingBounds:Landroid/graphics/Rect;

.field private blacklist mElevationAdjustedForStack:Z

.field private blacklist mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final blacklist mFeatureId:I

.field private blacklist mFloatingActionMode:Landroid/view/ActionMode;

.field private blacklist mFloatingActionModeOriginatingView:Landroid/view/View;

.field private final blacklist mFloatingInsets:Landroid/graphics/Rect;

.field private blacklist mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field private blacklist mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final blacklist mForceWindowDrawsBarBackgrounds:Z

.field private final blacklist mFrameOffsets:Landroid/graphics/Rect;

.field private final blacklist mFramePadding:Landroid/graphics/Rect;

.field private final blacklist mHideInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mIsInPictureInPictureMode:Z

.field private blacklist mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private blacklist mLastBackgroundInsets:Landroid/graphics/Insets;

.field private greylist mLastBottomInset:I

.field private blacklist mLastForceConsumingOpaqueCaptionBar:Z

.field private blacklist mLastForceConsumingTypes:I

.field private blacklist mLastHasBottomStableInset:Z

.field private blacklist mLastHasLeftStableInset:Z

.field private blacklist mLastHasRightStableInset:Z

.field private blacklist mLastHasTopStableInset:Z

.field private blacklist mLastInsets:Landroid/view/WindowInsets;

.field private greylist mLastLeftInset:I

.field private blacklist mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private greylist mLastRightInset:I

.field private blacklist mLastSuppressScrimTypes:I

.field private blacklist mLastTopInset:I

.field private blacklist mLastWindowFlags:I

.field private final blacklist mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

.field blacklist mLogTag:Ljava/lang/String;

.field private blacklist mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final blacklist mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mOriginalBackgroundBlurRadius:I

.field private blacklist mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mPendingInsetsController:Landroid/view/PendingInsetsController;

.field private blacklist mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

.field blacklist mPrimaryActionMode:Landroid/view/ActionMode;

.field private blacklist mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private blacklist mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private blacklist mRootScrollY:I

.field private final blacklist mSemiTransparentBarColor:I

.field private final blacklist mShowInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private final blacklist mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mStatusGuard:Landroid/view/View;

.field private blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mWatchingForMenu:Z

.field private final blacklist mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

.field private greylist mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mWindowResizeCallbacksAdded:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$T1oWPG-yAGRzhCXXNpR4r2ULU4I(Lcom/android/internal/policy/DecorView;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->lambda$setBackgroundBlurRadius$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Z8KGxEYs87tmUmx9r045xREWzEU(Lcom/android/internal/policy/DecorView;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->lambda$new$0()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeAnim(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFloatingActionMode(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindow(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeAnim(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFloatingActionMode(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupFloatingActionModeViews(Lcom/android/internal/policy/DecorView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mendOnGoingFadeAnimation(Lcom/android/internal/policy/DecorView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    .line 145
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 150
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v7

    const/4 v8, 0x0

    const/high16 v1, 0x4000000

    const/16 v2, 0x30

    const/4 v3, 0x3

    const/4 v4, 0x5

    const-string v5, "android:status:background"

    const v6, 0x102002f

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView-IA;)V

    sput-object v0, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 152
    new-instance v1, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 157
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v8

    const/4 v9, 0x0

    const/high16 v2, 0x8000000

    const/16 v3, 0x50

    const/4 v5, 0x3

    const-string v6, "android:navigation:background"

    const v7, 0x1020030

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView-IA;)V

    sput-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 161
    new-instance v0, Lcom/android/internal/policy/DecorView$1;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorView$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureId"    # I
    .param p3, "window"    # Lcom/android/internal/policy/PhoneWindow;
    .param p4, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 296
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 182
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 187
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 189
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 191
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 193
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 214
    new-instance v1, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 216
    new-instance v1, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v2, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 225
    new-instance v1, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v1}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 227
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 228
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 230
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 232
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastInsets:Landroid/view/WindowInsets;

    .line 235
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 236
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 237
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 238
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 239
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 240
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 241
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingOpaqueCaptionBar:Z

    .line 242
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    .line 244
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 253
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 267
    const-string v2, "DecorView"

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 268
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 269
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 270
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 272
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    .line 273
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 274
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    .line 278
    new-instance v2, Landroid/view/PendingInsetsController;

    invoke-direct {v2}, Landroid/view/PendingInsetsController;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    .line 280
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    .line 281
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    .line 283
    new-instance v2, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 297
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 298
    const v2, 0x10c000e

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 300
    const v2, 0x10c000f

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_cf

    iget v2, p4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_cf

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_cf

    const/4 v0, 0x1

    goto :goto_d0

    :cond_cf
    nop

    :goto_d0
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x106037b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    .line 312
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 314
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    nop

    .line 319
    invoke-static {p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 320
    new-instance v1, Lcom/android/internal/policy/WearGestureInterceptionDetector;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;-><init>(Landroid/content/Context;Lcom/android/internal/policy/DecorView;)V

    goto :goto_fa

    .line 321
    :cond_f9
    nop

    :goto_fa
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    .line 322
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static blacklist calculateBarColor(IIIIIIZZ)I
    .registers 11
    .param p0, "flags"    # I
    .param p1, "translucentFlag"    # I
    .param p2, "semiTransparentBarColor"    # I
    .param p3, "barColor"    # I
    .param p4, "appearance"    # I
    .param p5, "lightAppearanceFlag"    # I
    .param p6, "ensuresContrast"    # Z
    .param p7, "movesBarColorToScrim"    # Z

    .line 1426
    and-int v0, p0, p1

    if-eqz v0, :cond_5

    .line 1427
    return p2

    .line 1428
    :cond_5
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_d

    .line 1429
    const/high16 v0, -0x1000000

    return v0

    .line 1430
    :cond_d
    const/4 v0, 0x0

    if-eqz p6, :cond_2e

    .line 1431
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 1432
    .local v1, "alpha":I
    if-nez v1, :cond_23

    .line 1433
    and-int v2, p4, p5

    if-eqz v2, :cond_1b

    const/4 v0, 0x1

    .line 1434
    .local v0, "light":Z
    :cond_1b
    if-eqz v0, :cond_21

    const v2, -0x19000001

    goto :goto_22

    :cond_21
    move v2, p2

    :goto_22
    return v2

    .line 1435
    .end local v0    # "light":Z
    :cond_23
    if-eqz p7, :cond_2d

    .line 1436
    const v0, 0xffffff

    and-int/2addr v0, p3

    const/high16 v2, -0x34000000    # -3.3554432E7f

    or-int/2addr v0, v2

    return v0

    .line 1435
    .end local v1    # "alpha":I
    :cond_2d
    goto :goto_31

    .line 1438
    :cond_2e
    if-eqz p7, :cond_31

    .line 1439
    return v0

    .line 1438
    :cond_31
    :goto_31
    nop

    .line 1441
    return p3
.end method

.method private blacklist calculateNavigationBarColor(I)I
    .registers 11
    .param p1, "appearance"    # I

    .line 1415
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    .line 1419
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v8, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    .line 1415
    const/high16 v2, 0x8000000

    const/16 v6, 0x10

    move v5, p1

    .end local p1    # "appearance":I
    .local v5, "appearance":I
    invoke-static/range {v1 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZZ)I

    move-result p1

    return p1
.end method

.method private blacklist calculateStatusBarColor(I)I
    .registers 11
    .param p1, "appearance"    # I

    .line 1406
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    .line 1410
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move v7, v0

    .line 1406
    const/high16 v2, 0x4000000

    const/16 v6, 0x8

    const/4 v8, 0x0

    move v5, p1

    .end local p1    # "appearance":I
    .local v5, "appearance":I
    invoke-static/range {v1 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZZ)I

    move-result p1

    return p1
.end method

.method private blacklist cleanupFloatingActionModeViews()V
    .registers 4

    .line 929
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 930
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 931
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 933
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 934
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_21

    .line 935
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 936
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 937
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 939
    :cond_21
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 941
    :cond_23
    return-void
.end method

.method private blacklist cleanupPrimaryActionMode()V
    .registers 2

    .line 919
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 920
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 923
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_15

    .line 924
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 926
    :cond_15
    return-void
.end method

.method private blacklist createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .registers 5
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .line 1944
    packed-switch p1, :pswitch_data_e

    .line 1947
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1949
    :pswitch_8
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .registers 6
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .line 2096
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2097
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2099
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    .line 2100
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 2101
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    .line 2103
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 2104
    new-instance v1, Lcom/android/internal/policy/DecorView$6;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/DecorView$6;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2112
    return-object v0
.end method

.method private blacklist createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 11
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1962
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 1963
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 1970
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 1971
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1973
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1974
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1975
    .local v4, "baseTheme":Landroid/content/res/Resources$Theme;
    const v5, 0x1010431

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1978
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_53

    .line 1979
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1980
    .local v5, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1981
    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1983
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1984
    .local v6, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1985
    .end local v5    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    goto :goto_55

    .line 1986
    .end local v6    # "actionBarContext":Landroid/content/Context;
    :cond_53
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .line 1989
    .restart local v6    # "actionBarContext":Landroid/content/Context;
    :goto_55
    new-instance v5, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1990
    new-instance v5, Landroid/widget/PopupWindow;

    const v7, 0x1120008

    invoke-direct {v5, v6, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 1992
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1994
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1995
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1997
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v7, 0x10102eb

    invoke-virtual {v5, v7, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1999
    iget v5, v0, Landroid/util/TypedValue;->data:I

    .line 2000
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1999
    invoke-static {v5, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v5

    .line 2001
    .local v5, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 2002
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2003
    new-instance v7, Lcom/android/internal/policy/DecorView$4;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 2032
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "height":I
    .end local v6    # "actionBarContext":Landroid/content/Context;
    goto :goto_b9

    .line 2033
    :cond_a4
    const v0, 0x10201ed

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2034
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_b9

    .line 2035
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2036
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 2040
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_b9
    :goto_b9
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_d5

    .line 2041
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 2042
    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2043
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v5, :cond_d1

    move v1, v3

    :cond_d1
    invoke-direct {v0, v2, v4, p1, v1}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 2045
    .local v0, "mode":Landroid/view/ActionMode;
    return-object v0

    .line 2047
    .end local v0    # "mode":Landroid/view/ActionMode;
    :cond_d5
    return-object v2
.end method

.method private blacklist dipToPx(F)F
    .registers 4
    .param p1, "dip"    # F

    .line 2297
    nop

    .line 2298
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2297
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private blacklist drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 2234
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-eqz v0, :cond_a

    move-object v2, p1

    goto :goto_2d

    .line 2237
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 2238
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_11

    .line 2239
    return-void

    .line 2241
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .end local p1    # "canvas":Landroid/graphics/RecordingCanvas;
    .local v2, "canvas":Landroid/graphics/RecordingCanvas;
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2243
    return-void

    .line 2234
    .end local v0    # "v":Landroid/view/View;
    .end local v2    # "canvas":Landroid/graphics/RecordingCanvas;
    .restart local p1    # "canvas":Landroid/graphics/RecordingCanvas;
    :cond_2c
    move-object v2, p1

    .line 2235
    .end local p1    # "canvas":Landroid/graphics/RecordingCanvas;
    .restart local v2    # "canvas":Landroid/graphics/RecordingCanvas;
    :goto_2d
    return-void
.end method

.method private blacklist drawableChanged()V
    .registers 11

    .line 1732
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    if-eqz v0, :cond_5

    .line 1733
    return-void

    .line 1737
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    goto :goto_11

    :cond_c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1738
    .local v0, "framePadding":Landroid/graphics/Rect;
    :goto_11
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    goto :goto_1d

    :cond_18
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1740
    .local v1, "backgroundPadding":Landroid/graphics/Rect;
    :goto_1d
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setPadding(IIII)V

    .line 1744
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    .line 1745
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 1747
    const/4 v2, -0x1

    .line 1748
    .local v2, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1749
    .local v3, "winConfig":Landroid/app/WindowConfiguration;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    .line 1752
    .local v4, "renderShadowsInCompositor":Z
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->hasWindowShadow()Z

    move-result v5

    if-eqz v5, :cond_53

    if-nez v4, :cond_53

    .line 1754
    const/4 v2, -0x3

    goto :goto_92

    .line 1761
    :cond_53
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1762
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1763
    .local v6, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_92

    .line 1764
    if-nez v6, :cond_64

    .line 1765
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_92

    .line 1766
    :cond_64
    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-gtz v7, :cond_91

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-gtz v7, :cond_91

    iget v7, v0, Landroid/graphics/Rect;->right:I

    if-gtz v7, :cond_91

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v7, :cond_91

    .line 1770
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    .line 1771
    .local v7, "fop":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v8

    .line 1774
    .local v8, "bop":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_8f

    if-ne v8, v9, :cond_82

    goto :goto_8f

    .line 1776
    :cond_82
    if-nez v7, :cond_86

    .line 1777
    move v2, v8

    goto :goto_90

    .line 1778
    :cond_86
    if-nez v8, :cond_8a

    .line 1779
    move v2, v7

    goto :goto_90

    .line 1781
    :cond_8a
    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    goto :goto_90

    .line 1775
    :cond_8f
    :goto_8f
    const/4 v2, -0x1

    .line 1783
    .end local v7    # "fop":I
    .end local v8    # "bop":I
    :goto_90
    goto :goto_92

    .line 1789
    :cond_91
    const/4 v2, -0x3

    .line 1799
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_92
    :goto_92
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 1800
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_9d

    .line 1801
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v2}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    .line 1803
    :cond_9d
    return-void
.end method

.method private blacklist endOnGoingFadeAnimation()V
    .registers 2

    .line 2051
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 2052
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2054
    :cond_9
    return-void
.end method

.method private blacklist getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I
    .registers 3
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 1445
    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_7

    .line 1446
    iget v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    return v0

    .line 1448
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getNavBarSize(III)I
    .registers 4
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I
    .param p2, "leftInset"    # I

    .line 1064
    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, p1

    goto :goto_11

    .line 1065
    :cond_8
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, p2

    goto :goto_11

    :cond_10
    move v0, p0

    .line 1064
    :goto_11
    return v0
.end method

.method public static blacklist getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .registers 11
    .param p0, "canvasWidth"    # I
    .param p1, "canvasHeight"    # I
    .param p2, "systemBarInsets"    # Landroid/graphics/Rect;
    .param p3, "outRect"    # Landroid/graphics/Rect;
    .param p4, "scale"    # F

    .line 1070
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    .line 1071
    .local v0, "bottomInset":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    .line 1072
    .local v1, "leftInset":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p4

    float-to-int v2, v2

    .line 1073
    .local v2, "rightInset":I
    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v3

    .line 1074
    .local v3, "size":I
    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_20

    .line 1075
    sub-int v4, p0, v3

    invoke-virtual {p3, v4, v5, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2f

    .line 1076
    :cond_20
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1077
    invoke-virtual {p3, v5, v5, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2f

    .line 1079
    :cond_2a
    sub-int v4, p1, v3

    invoke-virtual {p3, v5, v4, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1081
    :goto_2f
    return-void
.end method

.method private static blacklist getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .registers 4
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 2302
    const-string v0, ""

    if-nez p0, :cond_5

    .line 2303
    return-object v0

    .line 2305
    :cond_5
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2306
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1c

    .line 2307
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    .line 2309
    :cond_1c
    return-object v0
.end method

.method private blacklist initializeElevation()V
    .registers 2

    .line 2251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 2252
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2253
    return-void
.end method

.method private blacklist isFillingScreen(Landroid/content/res/Configuration;)Z
    .registers 7
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2167
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 2169
    .local v0, "isFullscreen":Z
    :goto_d
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v4

    or-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method public static blacklist isNavBarToLeftEdge(II)Z
    .registers 3
    .param p0, "bottomInset"    # I
    .param p1, "leftInset"    # I

    .line 1060
    if-nez p0, :cond_6

    if-lez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isNavBarToRightEdge(II)Z
    .registers 3
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I

    .line 1056
    if-nez p0, :cond_6

    if-lez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist isOutOfBounds(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 496
    const/4 v0, -0x5

    if-lt p1, v0, :cond_18

    if-lt p2, v0, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_18

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 496
    :goto_19
    return v0
.end method

.method private blacklist isOutOfInnerBounds(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 492
    if-ltz p1, :cond_13

    if-ltz p2, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private synthetic blacklist lambda$new$0()Z
    .registers 2

    .line 284
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurCorners()V

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$setBackgroundBlurRadius$1(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .line 1367
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    .line 1368
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 1369
    return-void
.end method

.method private static blacklist setColor(Landroid/view/View;IIZZ)V
    .registers 15
    .param p0, "v"    # Landroid/view/View;
    .param p1, "color"    # I
    .param p2, "dividerColor"    # I
    .param p3, "verticalBar"    # Z
    .param p4, "seascape"    # Z

    .line 1557
    if-eqz p2, :cond_9b

    .line 1558
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1559
    .local v0, "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, p3, :cond_40

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p4, :cond_21

    goto :goto_40

    .line 1572
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 1573
    .local v3, "d":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 1574
    .local v1, "inset":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1575
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_9a

    .line 1560
    .end local v1    # "inset":Landroid/graphics/drawable/InsetDrawable;
    .end local v3    # "d":Landroid/graphics/drawable/LayerDrawable;
    :cond_40
    :goto_40
    nop

    .line 1562
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1561
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 1560
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1564
    .local v3, "size":I
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1565
    if-eqz p3, :cond_64

    if-nez p4, :cond_64

    move v6, v3

    goto :goto_65

    :cond_64
    move v6, v2

    .line 1566
    :goto_65
    if-nez p3, :cond_69

    move v7, v3

    goto :goto_6a

    :cond_69
    move v7, v2

    .line 1567
    :goto_6a
    if-eqz p3, :cond_70

    if-eqz p4, :cond_70

    move v8, v3

    goto :goto_71

    :cond_70
    move v8, v2

    :goto_71
    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1568
    .local v4, "d":Landroid/graphics/drawable/InsetDrawable;
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v7, v6, v2

    aput-object v4, v6, v1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1570
    new-instance v1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1571
    .end local v3    # "size":I
    .end local v4    # "d":Landroid/graphics/drawable/InsetDrawable;
    nop

    .line 1577
    .end local v0    # "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    :goto_9a
    goto :goto_a2

    .line 1578
    :cond_9b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1579
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1581
    :goto_a2
    return-void
.end method

.method private blacklist setHandledActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 1954
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_a

    .line 1955
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    goto :goto_14

    .line 1956
    :cond_a
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 1957
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    .line 1959
    :cond_14
    :goto_14
    return-void
.end method

.method private blacklist setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 2116
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 2117
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2118
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2119
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2120
    return-void
.end method

.method private blacklist setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 2057
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 2058
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 2059
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2060
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 2061
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1b

    .line 2062
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4e

    .line 2064
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2065
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_56

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 2066
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/DecorView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$5;-><init>(Lcom/android/internal/policy/DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2078
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4e

    .line 2080
    :cond_41
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    .line 2081
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 2084
    :goto_4e
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 2086
    return-void

    :array_56
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .registers 10
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v0, :cond_12

    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 821
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 822
    .local v0, "callback":Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-nez v1, :cond_31

    .line 823
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 824
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_38

    .line 826
    :cond_31
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    .line 830
    :goto_38
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_48

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_48

    move v1, v2

    goto :goto_49

    :cond_48
    move v1, v3

    .line 831
    .local v1, "isPopup":Z
    :goto_49
    if-eqz v1, :cond_58

    .line 832
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object v4

    .local v4, "helper":Lcom/android/internal/view/menu/MenuHelper;
    goto :goto_64

    .line 834
    .end local v4    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    :cond_58
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v4

    .line 837
    .restart local v4    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    :goto_64
    if-eqz v4, :cond_71

    .line 841
    if-nez v1, :cond_6a

    move v5, v2

    goto :goto_6b

    :cond_6a
    move v5, v3

    :goto_6b
    invoke-virtual {v0, v5}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    .line 842
    invoke-interface {v4, v0}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 845
    :cond_71
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput-object v4, v5, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 846
    if-eqz v4, :cond_78

    goto :goto_79

    :cond_78
    move v2, v3

    :goto_79
    return v2
.end method

.method private blacklist startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 8
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 873
    new-instance v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    .line 874
    .local v0, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v1, 0x0

    .line 875
    .local v1, "mode":Landroid/view/ActionMode;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_32

    .line 877
    :try_start_16
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v0, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_20} :catch_22

    move-object v1, v2

    .line 888
    goto :goto_32

    .line 878
    :catch_22
    move-exception v2

    .line 880
    .local v2, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_32

    .line 882
    :try_start_25
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3
    :try_end_2f
    .catch Ljava/lang/AbstractMethodError; {:try_start_25 .. :try_end_2f} :catch_31

    move-object v1, v3

    .line 886
    goto :goto_32

    .line 884
    :catch_31
    move-exception v3

    .line 890
    .end local v2    # "ame":Ljava/lang/AbstractMethodError;
    :cond_32
    :goto_32
    if-eqz v1, :cond_53

    .line 891
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    if-nez v2, :cond_40

    .line 892
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 893
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    goto :goto_68

    .line 894
    :cond_40
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_68

    .line 895
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_50

    .line 896
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 898
    :cond_50
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_68

    .line 901
    :cond_53
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v1

    .line 902
    if-eqz v1, :cond_67

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 903
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_68

    .line 905
    :cond_67
    const/4 v1, 0x0

    .line 908
    :cond_68
    :goto_68
    if-eqz v1, :cond_85

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_85

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_85

    .line 910
    :try_start_7a
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_83
    .catch Ljava/lang/AbstractMethodError; {:try_start_7a .. :try_end_83} :catch_84

    .line 913
    goto :goto_85

    .line 911
    :catch_84
    move-exception v2

    .line 915
    :cond_85
    :goto_85
    return-object v1
.end method

.method private blacklist updateBackgroundBlurCorners()V
    .registers 5

    .line 1334
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v0, :cond_5

    return-void

    .line 1336
    :cond_5
    const/4 v0, 0x0

    .line 1339
    .local v0, "cornerRadius":F
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_24

    .line 1340
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    .line 1341
    .local v1, "outline":Landroid/graphics/Outline;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 1342
    iget v2, v1, Landroid/graphics/Outline;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    invoke-virtual {v1}, Landroid/graphics/Outline;->getRadius()F

    move-result v2

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    move v0, v2

    .line 1344
    .end local v1    # "outline":Landroid/graphics/Outline;
    :cond_24
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(F)V

    .line 1345
    return-void
.end method

.method private blacklist updateBackgroundBlurRadius()V
    .registers 3

    .line 1348
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1350
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1351
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    .line 1352
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    if-lez v0, :cond_2e

    .line 1353
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->createBackgroundBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 1354
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1357
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v0, :cond_39

    .line 1358
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    .line 1360
    :cond_39
    return-void
.end method

.method private blacklist updateBackgroundDrawable()V
    .registers 9

    .line 1293
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_8

    .line 1294
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 1297
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_1f

    .line 1300
    return-void

    .line 1303
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1304
    .local v0, "destDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v1, :cond_3a

    .line 1305
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    move-object v3, v0

    goto :goto_3b

    .line 1304
    :cond_3a
    move-object v3, v0

    .line 1309
    .end local v0    # "destDrawable":Landroid/graphics/drawable/Drawable;
    .local v3, "destDrawable":Landroid/graphics/drawable/Drawable;
    :goto_3b
    if-eqz v3, :cond_5f

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1310
    new-instance v1, Lcom/android/internal/policy/DecorView$2;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v4, v0, Landroid/graphics/Insets;->left:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v5, v0, Landroid/graphics/Insets;->top:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v6, v0, Landroid/graphics/Insets;->right:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v7, v0, Landroid/graphics/Insets;->bottom:I

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/DecorView$2;-><init>(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;IIII)V

    move-object v3, v1

    goto :goto_60

    .line 1309
    :cond_5f
    move-object v2, p0

    .line 1326
    :goto_60
    invoke-super {p0, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1328
    iget-object v0, v2, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iput-object v0, v2, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    .line 1329
    iget-object v0, v2, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iput-object v0, v2, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 1330
    iget-object v0, v2, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, v2, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1331
    return-void
.end method

.method private blacklist updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZI)V
    .registers 31
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "color"    # I
    .param p3, "dividerColor"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "seascape"    # Z
    .param p7, "sideMargin"    # I
    .param p8, "animate"    # Z
    .param p9, "force"    # Z
    .param p10, "requestedVisibleTypes"    # I

    .line 1467
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v8, v8, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    .line 1468
    .local v8, "type":I
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    and-int v10, p10, v8

    if-nez v10, :cond_22

    iget v10, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_20

    goto :goto_22

    :cond_20
    const/4 v10, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v10, 0x1

    :goto_23
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1470
    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1468
    invoke-virtual {v9, v10, v13, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(ZIZ)Z

    move-result v9

    iput-boolean v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 1471
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-boolean v10, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1472
    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1471
    invoke-virtual {v9, v10, v2, v13, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v9

    .line 1473
    .local v9, "show":Z
    if-eqz v9, :cond_47

    if-lez p4, :cond_47

    const/4 v10, 0x1

    goto :goto_48

    :cond_47
    const/4 v10, 0x0

    .line 1475
    .local v10, "showView":Z
    :goto_48
    const/4 v13, 0x0

    .line 1476
    .local v13, "visibilityChanged":Z
    iget-object v14, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1478
    .local v14, "view":Landroid/view/View;
    const/4 v15, -0x1

    if-eqz v4, :cond_51

    move/from16 v16, v15

    goto :goto_53

    :cond_51
    move/from16 v16, p4

    :goto_53
    move/from16 v17, v16

    .line 1479
    .local v17, "resolvedHeight":I
    if-eqz v4, :cond_59

    move/from16 v15, p4

    .line 1480
    .local v15, "resolvedWidth":I
    :cond_59
    if-eqz v4, :cond_65

    .line 1481
    iget-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    if-eqz v5, :cond_62

    iget v11, v11, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    goto :goto_69

    :cond_62
    iget v11, v11, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    goto :goto_69

    .line 1482
    :cond_65
    iget-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v11, v11, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    :goto_69
    nop

    .line 1484
    .local v11, "resolvedGravity":I
    if-nez v14, :cond_b3

    .line 1485
    if-eqz v10, :cond_ab

    .line 1486
    new-instance v12, Landroid/view/View;

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v12, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v14, v12

    iput-object v12, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1487
    invoke-static {v14, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 1488
    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    invoke-virtual {v14, v7}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1489
    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    invoke-virtual {v14, v7}, Landroid/view/View;->setId(I)V

    .line 1490
    const/4 v13, 0x1

    .line 1491
    const/4 v7, 0x4

    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1492
    const/4 v12, 0x0

    iput v12, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 1494
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v7, v17

    .end local v17    # "resolvedHeight":I
    .local v7, "resolvedHeight":I
    invoke-direct {v12, v15, v7, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1496
    .local v12, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_9d

    .line 1497
    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_9f

    .line 1499
    :cond_9d
    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1501
    :goto_9f
    invoke-virtual {v0, v14, v12}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1502
    invoke-direct {v0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 1503
    .end local v12    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v16, v8

    move/from16 v19, v10

    goto/16 :goto_11d

    .line 1485
    .end local v7    # "resolvedHeight":I
    .restart local v17    # "resolvedHeight":I
    :cond_ab
    move/from16 v7, v17

    .end local v17    # "resolvedHeight":I
    .restart local v7    # "resolvedHeight":I
    move/from16 v16, v8

    move/from16 v19, v10

    goto/16 :goto_11d

    .line 1505
    .end local v7    # "resolvedHeight":I
    .restart local v17    # "resolvedHeight":I
    :cond_b3
    move/from16 v7, v17

    .end local v17    # "resolvedHeight":I
    .restart local v7    # "resolvedHeight":I
    if-eqz v10, :cond_b9

    const/4 v12, 0x0

    goto :goto_ba

    :cond_b9
    const/4 v12, 0x4

    .line 1506
    .local v12, "vis":I
    :goto_ba
    iget v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    if-eq v6, v12, :cond_c1

    const/16 v16, 0x1

    goto :goto_c3

    :cond_c1
    const/16 v16, 0x0

    :goto_c3
    move/from16 v13, v16

    .line 1507
    iput v12, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 1508
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1509
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_d2

    const/16 v16, 0x0

    goto :goto_d4

    :cond_d2
    move/from16 v16, p7

    :goto_d4
    move/from16 v17, v16

    .line 1510
    .local v17, "rightMargin":I
    if-eqz v5, :cond_db

    move/from16 v16, p7

    goto :goto_dd

    :cond_db
    const/16 v16, 0x0

    :goto_dd
    move/from16 v18, v16

    .line 1511
    .local v18, "leftMargin":I
    move/from16 v16, v8

    .end local v8    # "type":I
    .local v16, "type":I
    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v8, v7, :cond_103

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v8, v15, :cond_103

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v8, v11, :cond_103

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v10

    move/from16 v10, v17

    .end local v17    # "rightMargin":I
    .local v10, "rightMargin":I
    .local v19, "showView":Z
    if-ne v8, v10, :cond_fe

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v12

    move/from16 v12, v18

    .end local v18    # "leftMargin":I
    .local v12, "leftMargin":I
    .local v17, "vis":I
    if-eq v8, v12, :cond_118

    goto :goto_10b

    .end local v17    # "vis":I
    .local v12, "vis":I
    .restart local v18    # "leftMargin":I
    :cond_fe
    move/from16 v17, v12

    move/from16 v12, v18

    .end local v18    # "leftMargin":I
    .local v12, "leftMargin":I
    .restart local v17    # "vis":I
    goto :goto_10b

    .end local v19    # "showView":Z
    .local v10, "showView":Z
    .local v12, "vis":I
    .local v17, "rightMargin":I
    .restart local v18    # "leftMargin":I
    :cond_103
    move/from16 v19, v10

    move/from16 v10, v17

    move/from16 v17, v12

    move/from16 v12, v18

    .line 1514
    .end local v18    # "leftMargin":I
    .local v10, "rightMargin":I
    .local v12, "leftMargin":I
    .local v17, "vis":I
    .restart local v19    # "showView":Z
    :goto_10b
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1515
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1516
    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1517
    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1518
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1519
    invoke-virtual {v14, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1521
    :cond_118
    if-eqz v19, :cond_11d

    .line 1522
    invoke-static {v14, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 1525
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "rightMargin":I
    .end local v12    # "leftMargin":I
    .end local v17    # "vis":I
    :cond_11d
    :goto_11d
    if-eqz v13, :cond_178

    .line 1526
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1527
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p8, :cond_16d

    .line 1528
    const/4 v8, 0x0

    if-eqz v19, :cond_14f

    .line 1529
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_13a

    .line 1530
    const/4 v12, 0x0

    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1531
    invoke-virtual {v14, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1533
    :cond_13a
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v8, v0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v8, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v3, v8

    .line 1534
    invoke-virtual {v6, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_178

    .line 1536
    :cond_14f
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v4, v4

    .line 1537
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/DecorView$3;

    invoke-direct {v4, v0, v1}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;)V

    .line 1538
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_178

    .line 1547
    :cond_16d
    const/4 v12, 0x0

    invoke-virtual {v14, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1548
    if-eqz v19, :cond_174

    goto :goto_175

    :cond_174
    const/4 v12, 0x4

    :goto_175
    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1551
    :cond_178
    :goto_178
    iput-boolean v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    .line 1552
    iput v2, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    .line 1553
    return-void
.end method

.method private blacklist updateColorViewTranslations()V
    .registers 5

    .line 1586
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 1587
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 1588
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_11

    int-to-float v3, v0

    goto :goto_12

    :cond_11
    move v3, v2

    :goto_12
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1590
    :cond_15
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_25

    .line 1591
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_22

    int-to-float v2, v0

    :cond_22
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1593
    :cond_25
    return-void
.end method

.method private blacklist updateElevation()V
    .registers 6

    .line 2256
    nop

    .line 2257
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2258
    .local v0, "windowingMode":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    .line 2260
    .local v1, "renderShadowsInCompositor":Z
    if-eqz v1, :cond_16

    .line 2261
    return-void

    .line 2263
    :cond_16
    const/4 v2, 0x0

    .line 2264
    .local v2, "elevation":F
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2267
    .local v3, "wasAdjustedForStack":Z
    const/4 v4, 0x5

    if-ne v0, v4, :cond_35

    .line 2268
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2269
    const/high16 v4, 0x41a00000    # 20.0f

    goto :goto_27

    :cond_25
    const/high16 v4, 0x40a00000    # 5.0f

    .line 2274
    .end local v2    # "elevation":F
    .local v4, "elevation":F
    :goto_27
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    if-nez v2, :cond_2d

    .line 2275
    const/high16 v4, 0x41a00000    # 20.0f

    .line 2278
    :cond_2d
    invoke-direct {p0, v4}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v2

    .line 2279
    .end local v4    # "elevation":F
    .restart local v2    # "elevation":F
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_38

    .line 2281
    :cond_35
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2286
    :goto_38
    if-nez v3, :cond_3e

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    if-eqz v4, :cond_4b

    :cond_3e
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_4b

    .line 2287
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    .line 2289
    :cond_4b
    return-void
.end method

.method private blacklist updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 19
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1596
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1598
    .local v2, "showStatusGuard":Z
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_118

    .line 1599
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_114

    .line 1601
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1602
    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1603
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v6, 0x0

    .line 1604
    .local v6, "mlpChanged":Z
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_f3

    .line 1605
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    if-nez v7, :cond_31

    .line 1606
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 1608
    :cond_31
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 1611
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v8, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 1612
    invoke-virtual {v8, v1, v7}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v8

    .line 1613
    .local v8, "innerInsets":Landroid/view/WindowInsets;
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v9

    .line 1614
    .local v9, "newTopMargin":I
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v10

    .line 1615
    .local v10, "newLeftMargin":I
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v11

    .line 1620
    .local v11, "newRightMargin":I
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v12

    .line 1621
    .local v12, "rootInsets":Landroid/view/WindowInsets;
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v13

    .line 1622
    .local v13, "newGuardLeftMargin":I
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1624
    .local v14, "newGuardRightMargin":I
    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v15, v9, :cond_5f

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v15, v10, :cond_5f

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v15, v11, :cond_66

    .line 1626
    :cond_5f
    const/4 v6, 0x1

    .line 1627
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1628
    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1629
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1632
    :cond_66
    if-lez v9, :cond_98

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v15, :cond_98

    .line 1633
    new-instance v15, Landroid/view/View;

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v15, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 1634
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1635
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v4, 0x33

    move/from16 v16, v2

    .end local v2    # "showStatusGuard":Z
    .local v16, "showStatusGuard":Z
    const/4 v2, -0x1

    invoke-direct {v5, v2, v15, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1637
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1638
    iput v14, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1639
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v4, v4, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_c2

    .line 1632
    .end local v16    # "showStatusGuard":Z
    .restart local v2    # "showStatusGuard":Z
    :cond_98
    move/from16 v16, v2

    .line 1640
    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v2, :cond_c2

    .line 1641
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 1642
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1643
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v5, :cond_b4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v4, v13, :cond_b4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eq v4, v14, :cond_c3

    .line 1645
    :cond_b4
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1646
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1647
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1648
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c3

    .line 1640
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_c2
    :goto_c2
    nop

    .line 1654
    :cond_c3
    :goto_c3
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    const/4 v4, 0x1

    if-eqz v2, :cond_ca

    move v2, v4

    goto :goto_cb

    :cond_ca
    const/4 v2, 0x0

    .line 1656
    .end local v16    # "showStatusGuard":Z
    .local v2, "showStatusGuard":Z
    :goto_cb
    if-eqz v2, :cond_d8

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_d8

    .line 1658
    invoke-direct {v0}, Lcom/android/internal/policy/DecorView;->updateStatusGuardColor()V

    .line 1665
    :cond_d8
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeaturesPrivate()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_e3

    goto :goto_e4

    :cond_e3
    const/4 v4, 0x0

    .line 1667
    .local v4, "nonOverlay":Z
    :goto_e4
    if-eqz v4, :cond_f1

    if-eqz v2, :cond_f1

    .line 1668
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v5, v15, v15}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1670
    .end local v4    # "nonOverlay":Z
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "innerInsets":Landroid/view/WindowInsets;
    .end local v9    # "newTopMargin":I
    .end local v10    # "newLeftMargin":I
    .end local v11    # "newRightMargin":I
    .end local v12    # "rootInsets":Landroid/view/WindowInsets;
    .end local v13    # "newGuardLeftMargin":I
    .end local v14    # "newGuardRightMargin":I
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .local v1, "insets":Landroid/view/WindowInsets;
    :cond_f1
    const/4 v15, 0x0

    goto :goto_10c

    .line 1672
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_f3
    move/from16 v16, v2

    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v2, :cond_106

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v2, :cond_106

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v2, :cond_102

    goto :goto_106

    :cond_102
    move/from16 v2, v16

    const/4 v15, 0x0

    goto :goto_10c

    .line 1673
    :cond_106
    :goto_106
    const/4 v6, 0x1

    .line 1674
    const/4 v15, 0x0

    iput v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v2, v16

    .line 1677
    .end local v16    # "showStatusGuard":Z
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .restart local v1    # "insets":Landroid/view/WindowInsets;
    .restart local v2    # "showStatusGuard":Z
    :goto_10c
    if-eqz v6, :cond_11d

    .line 1678
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11d

    .line 1599
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "mlpChanged":Z
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_114
    move/from16 v16, v2

    const/4 v15, 0x0

    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    goto :goto_11b

    .line 1598
    .end local v16    # "showStatusGuard":Z
    .restart local v2    # "showStatusGuard":Z
    :cond_118
    move/from16 v16, v2

    const/4 v15, 0x0

    .line 1682
    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    :goto_11b
    move/from16 v2, v16

    .end local v16    # "showStatusGuard":Z
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .restart local v1    # "insets":Landroid/view/WindowInsets;
    .restart local v2    # "showStatusGuard":Z
    :cond_11d
    :goto_11d
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v3, :cond_12c

    .line 1683
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v2, :cond_127

    move v4, v15

    goto :goto_129

    :cond_127
    const/16 v4, 0x8

    :goto_129
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1685
    :cond_12c
    return-object v1
.end method

.method private blacklist updateStatusGuardColor()V
    .registers 5

    .line 1689
    nop

    .line 1690
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1691
    .local v0, "lightStatusBar":Z
    :goto_c
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 1692
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v3, 0x1060228

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_23

    .line 1693
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v3, 0x1060227

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 1691
    :goto_23
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1694
    return-void
.end method


# virtual methods
.method blacklist clearContentView()V
    .registers 4

    .line 2183
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_22

    .line 2184
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2185
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1f

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1f

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eq v1, v2, :cond_1f

    .line 2187
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 2183
    .end local v1    # "v":Landroid/view/View;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2190
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 446
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    .line 447
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1d

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 446
    :goto_1d
    return v1
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 352
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 353
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 354
    .local v1, "action":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    move v4, v3

    goto :goto_f

    :cond_e
    move v4, v2

    .line 356
    .local v4, "isDown":Z
    :goto_f
    if-eqz v4, :cond_45

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_45

    .line 359
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-lez v5, :cond_2a

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eq v5, v0, :cond_2a

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    .line 361
    .local v5, "handled":Z
    if-eqz v5, :cond_2a

    .line 362
    return v3

    .line 368
    .end local v5    # "handled":Z
    :cond_2a
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v5, :cond_45

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iget-boolean v5, v5, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v5, :cond_45

    .line 369
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {v5, v6, v0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 370
    return v3

    .line 375
    :cond_45
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_66

    .line 376
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 377
    .local v2, "cb":Landroid/view/Window$Callback;
    if-eqz v2, :cond_5e

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_5e

    invoke-interface {v2, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_62

    .line 378
    :cond_5e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    :goto_62
    nop

    .line 379
    .restart local v5    # "handled":Z
    if-eqz v5, :cond_66

    .line 380
    return v3

    .line 384
    .end local v2    # "cb":Landroid/view/Window$Callback;
    .end local v5    # "handled":Z
    :cond_66
    if-eqz v4, :cond_75

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_81

    .line 385
    :cond_75
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v2

    .line 384
    :goto_81
    return v2
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 395
    .local v0, "handled":Z
    if-eqz v0, :cond_24

    .line 396
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v2, :cond_23

    .line 397
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iput-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 399
    :cond_23
    return v1

    .line 404
    .end local v0    # "handled":Z
    :cond_24
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 405
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3d

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3d

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_3d

    .line 406
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_41

    :cond_3d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 407
    .local v2, "handled":Z
    :goto_41
    if-eqz v2, :cond_44

    .line 408
    return v1

    .line 415
    :cond_44
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 416
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 417
    .local v3, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_67

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-nez v5, :cond_67

    .line 418
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v3, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 419
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v3, v6, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 421
    iput-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 422
    if-eqz v2, :cond_67

    .line 423
    return v1

    .line 426
    :cond_67
    return v4
.end method

.method public whitelist dispatchPointerCaptureChanged(Z)V
    .registers 3
    .param p1, "hasCapture"    # Z

    .line 2331
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPointerCaptureChanged(Z)V

    .line 2332
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2333
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 2335
    :cond_1c
    return-void
.end method

.method public blacklist dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 618
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 619
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 620
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 621
    const/4 v1, 0x1

    return v1

    .line 624
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 432
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    .line 433
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1d

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 432
    :goto_1d
    return v1
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 439
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    .line 440
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1d

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 439
    :goto_1d
    return v1
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 795
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 797
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 798
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 800
    :cond_c
    return-void
.end method

.method blacklist finishChanging()V
    .registers 2

    .line 948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 949
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 950
    return-void
.end method

.method public blacklist getAccessibilityViewId()I
    .registers 2

    .line 2339
    const v0, 0x7ffffffe

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1402
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getBackgroundFallback()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getJankTracker()Landroid/app/jank/JankTracker;
    .registers 2

    .line 2377
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

    if-eqz v0, :cond_b

    .line 2378
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/DecorView$AppJankStatsCallback;->getAppJankTracker()Landroid/app/jank/JankTracker;

    move-result-object v0

    return-object v0

    .line 2380
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 2140
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method blacklist getStatusBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getWindowInsetsController()Landroid/view/WindowInsetsController;
    .registers 2

    .line 2344
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2345
    invoke-super {p0}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    return-object v0

    .line 2347
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method public whitelist isTransitionGroup()Z
    .registers 2

    .line 1052
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 7
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1021
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1022
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1023
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_59

    .line 1028
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_33

    .line 1029
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1030
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 1031
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 1032
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    .line 1031
    invoke-virtual {p1, v3, v1, v3, v4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1034
    :cond_33
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_59

    .line 1035
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1036
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1037
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 1038
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 1037
    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1041
    :cond_59
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetsAsRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1042
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1043
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1044
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 1045
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1047
    :cond_74
    return-object p1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 1833
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1835
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1836
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1a

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_1a

    .line 1837
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 1840
    :cond_1a
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    .line 1848
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    .line 1851
    :cond_24
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-nez v1, :cond_32

    .line 1854
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 1855
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 1858
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 1860
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    .line 1861
    return-void
.end method

.method public blacklist onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 1905
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v0, :cond_9

    .line 1906
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    .line 1908
    :cond_9
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2147
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 2149
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2150
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_13

    .line 2151
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2153
    :cond_13
    return-void
.end method

.method public blacklist onContentDrawn(IIII)Z
    .registers 6
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "sizeX"    # I
    .param p4, "sizeY"    # I

    .line 2214
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 5

    .line 1865
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1867
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1868
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_12

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_12

    .line 1869
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 1872
    :cond_12
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_1f

    .line 1873
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1876
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    .line 1877
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1878
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1879
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1881
    :cond_36
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 1883
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    if-eqz v1, :cond_43

    .line 1884
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 1885
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 1888
    :cond_43
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    .line 1890
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1891
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5c

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_5c

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v3, :cond_5c

    .line 1892
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 1895
    :cond_5c
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-eqz v3, :cond_69

    .line 1896
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 1897
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 1900
    :cond_69
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    invoke-virtual {v2}, Landroid/view/PendingInsetsController;->detach()V

    .line 1901
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 344
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    move-object v1, p0

    move-object v3, p1

    .end local p1    # "c":Landroid/graphics/Canvas;
    .local v3, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 348
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 503
    .local v0, "action":I
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v2, 0x1

    if-ltz v1, :cond_23

    .line 504
    if-nez v0, :cond_23

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 506
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 507
    .local v3, "y":I
    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 508
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 509
    return v2

    .line 514
    .end local v1    # "x":I
    .end local v3    # "y":I
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 515
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_3b

    .line 516
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 518
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 519
    return v2

    .line 522
    :cond_3b
    if-eqz v1, :cond_55

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    if-eqz v3, :cond_55

    .line 523
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    invoke-virtual {v3}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->isIntercepting()Z

    move-result v3

    .line 524
    .local v3, "wasIntercepting":Z
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    invoke-virtual {v4, p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 525
    .local v4, "intercepting":Z
    if-eq v3, v4, :cond_52

    .line 526
    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl;->updateDecorViewGestureInterception(Z)V

    .line 528
    :cond_52
    if-eqz v4, :cond_55

    .line 529
    return v2

    .line 534
    .end local v3    # "wasIntercepting":Z
    .end local v4    # "intercepting":Z
    :cond_55
    const/4 v2, 0x0

    return v2
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 775
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 776
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "bottom":I
    .local p2, "changed":Z
    .local p3, "left":I
    .local p4, "top":I
    .local p5, "right":I
    iget-boolean v1, p1, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    if-eqz v1, :cond_14

    .line 777
    iget-object v1, p1, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    .line 779
    :cond_14
    iget-boolean v1, p1, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    if-eqz v1, :cond_1f

    .line 780
    iget-object v1, p1, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    .line 785
    :cond_1f
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 786
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 788
    if-eqz p2, :cond_32

    iget-boolean v1, p1, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v1, :cond_32

    .line 789
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 791
    :cond_32
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 674
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 675
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 676
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    nop

    .line 677
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1f

    move v3, v5

    goto :goto_20

    :cond_1f
    move v3, v4

    .line 679
    .local v3, "isPortrait":Z
    :goto_20
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 680
    .local v6, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 682
    .local v7, "heightMode":I
    const/4 v8, 0x0

    .line 683
    .local v8, "fixedWidth":Z
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 684
    const/4 v9, 0x6

    const/4 v10, 0x5

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, -0x80000000

    if-ne v6, v12, :cond_80

    .line 685
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_3a

    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_3c

    :cond_3a
    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 686
    .local v13, "tvw":Landroid/util/TypedValue;
    :goto_3c
    if-eqz v13, :cond_80

    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-eqz v14, :cond_80

    .line 688
    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-ne v14, v10, :cond_4c

    .line 689
    invoke-virtual {v13, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v14, v14

    .local v14, "w":I
    goto :goto_5d

    .line 690
    .end local v14    # "w":I
    :cond_4c
    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-ne v14, v9, :cond_5c

    .line 691
    iget v14, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    iget v15, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v14

    float-to-int v14, v14

    .restart local v14    # "w":I
    goto :goto_5d

    .line 693
    .end local v14    # "w":I
    :cond_5c
    const/4 v14, 0x0

    .line 696
    .restart local v14    # "w":I
    :goto_5d
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 697
    .local v15, "widthSize":I
    if-lez v14, :cond_6e

    .line 698
    nop

    .line 699
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 698
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 700
    .end local p1    # "widthMeasureSpec":I
    .local v9, "widthMeasureSpec":I
    const/4 v8, 0x1

    goto :goto_82

    .line 702
    .end local v9    # "widthMeasureSpec":I
    .restart local p1    # "widthMeasureSpec":I
    :cond_6e
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v15, v9

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v11

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 705
    .end local p1    # "widthMeasureSpec":I
    .restart local v9    # "widthMeasureSpec":I
    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    goto :goto_82

    .line 710
    .end local v9    # "widthMeasureSpec":I
    .end local v13    # "tvw":Landroid/util/TypedValue;
    .end local v14    # "w":I
    .end local v15    # "widthSize":I
    .restart local p1    # "widthMeasureSpec":I
    :cond_80
    move/from16 v9, p1

    .end local p1    # "widthMeasureSpec":I
    .restart local v9    # "widthMeasureSpec":I
    :goto_82
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 711
    if-ne v7, v12, :cond_e4

    .line 712
    if-eqz v3, :cond_8d

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_91

    .line 713
    :cond_8d
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_91
    nop

    .line 714
    .local v4, "tvh":Landroid/util/TypedValue;
    if-eqz v4, :cond_e4

    iget v11, v4, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_e4

    .line 716
    iget v11, v4, Landroid/util/TypedValue;->type:I

    if-ne v11, v10, :cond_a2

    .line 717
    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    .local v11, "h":I
    goto :goto_b4

    .line 718
    .end local v11    # "h":I
    :cond_a2
    iget v11, v4, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v11, v13, :cond_b3

    .line 719
    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    invoke-virtual {v4, v11, v13}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v11, v11

    .restart local v11    # "h":I
    goto :goto_b4

    .line 721
    .end local v11    # "h":I
    :cond_b3
    const/4 v11, 0x0

    .line 724
    .restart local v11    # "h":I
    :goto_b4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 725
    .local v13, "heightSize":I
    if-lez v11, :cond_c6

    .line 726
    nop

    .line 727
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 726
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .end local p2    # "heightMeasureSpec":I
    .local v14, "heightMeasureSpec":I
    goto :goto_e6

    .line 728
    .end local v14    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_c6
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v14, v14, 0x100

    if-nez v14, :cond_e4

    .line 729
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int v14, v13, v14

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 731
    .end local p2    # "heightMeasureSpec":I
    .restart local v14    # "heightMeasureSpec":I
    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    goto :goto_e6

    .line 736
    .end local v4    # "tvh":Landroid/util/TypedValue;
    .end local v11    # "h":I
    .end local v13    # "heightSize":I
    .end local v14    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_e4
    move/from16 v14, p2

    .end local p2    # "heightMeasureSpec":I
    .restart local v14    # "heightMeasureSpec":I
    :goto_e6
    invoke-super {v0, v9, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 738
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v4

    .line 739
    .local v4, "width":I
    const/4 v11, 0x0

    .line 741
    .local v11, "measure":Z
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 743
    if-nez v8, :cond_130

    if-ne v6, v12, :cond_130

    .line 744
    iget-object v12, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_ff

    iget-object v12, v12, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_101

    :cond_ff
    iget-object v12, v12, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 745
    .local v12, "tv":Landroid/util/TypedValue;
    :goto_101
    nop

    .line 746
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v13, v13

    .line 745
    invoke-static {v5, v13, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 747
    .local v5, "availableWidth":F
    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-eqz v13, :cond_130

    .line 749
    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-ne v13, v10, :cond_11b

    .line 750
    invoke-virtual {v12, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .local v10, "min":I
    goto :goto_127

    .line 751
    .end local v10    # "min":I
    :cond_11b
    iget v10, v12, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v10, v13, :cond_126

    .line 752
    invoke-virtual {v12, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v10

    float-to-int v10, v10

    .restart local v10    # "min":I
    goto :goto_127

    .line 754
    .end local v10    # "min":I
    :cond_126
    const/4 v10, 0x0

    .line 759
    .restart local v10    # "min":I
    :goto_127
    if-ge v4, v10, :cond_130

    .line 760
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 761
    const/4 v11, 0x1

    .line 768
    .end local v5    # "availableWidth":F
    .end local v10    # "min":I
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_130
    if-eqz v11, :cond_135

    .line 769
    invoke-super {v0, v9, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 771
    :cond_135
    return-void
.end method

.method public blacklist onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 2157
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 2159
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->updateDisplay(I)V

    .line 2160
    return-void
.end method

.method public blacklist onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 2230
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V

    .line 2231
    return-void
.end method

.method public blacklist onRequestDraw(Z)V
    .registers 3
    .param p1, "reportNextDraw"    # Z

    .line 2219
    if-nez p1, :cond_3

    .line 2220
    return-void

    .line 2223
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2224
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    .line 2226
    :cond_10
    return-void
.end method

.method blacklist onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layoutResource"    # I

    .line 2174
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2177
    .local v0, "root":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2178
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 2179
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 2180
    return-void
.end method

.method public blacklist onRootViewScrollYChanged(I)V
    .registers 2
    .param p1, "rootScrollY"    # I

    .line 1933
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 1934
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 1935
    return-void
.end method

.method public blacklist onSystemBarAppearanceChanged(I)V
    .registers 4
    .param p1, "appearance"    # I

    .line 1013
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 1014
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_e

    .line 1015
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnSystemBarAppearanceChanged(I)V

    .line 1017
    :cond_e
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist onWindowDragResizeEnd()V
    .registers 3

    .line 2208
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2209
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 2210
    return-void
.end method

.method public blacklist onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "initialBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    .line 2199
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2201
    return-void

    .line 2203
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 2204
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .line 1807
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 1811
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_19

    .line 1813
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 1816
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1817
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_30

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_30

    .line 1818
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 1821
    :cond_30
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_39

    .line 1822
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 1824
    :cond_39
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_42

    .line 1825
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 1828
    :cond_42
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 1829
    return-void
.end method

.method public blacklist onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    .line 2194
    return-void
.end method

.method public whitelist onWindowSystemUiVisibilityChanged(I)V
    .registers 4
    .param p1, "visible"    # I

    .line 1004
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 1006
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 1007
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateStatusGuardColor()V

    .line 1009
    :cond_14
    return-void
.end method

.method public blacklist providePendingInsetsController()Landroid/view/PendingInsetsController;
    .registers 2

    .line 1939
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method blacklist removeBackgroundBlurDrawable()V
    .registers 4

    .line 1390
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1391
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1392
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 1393
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1395
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1396
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 1397
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1398
    return-void
.end method

.method public whitelist reportAppJankStats(Landroid/app/jank/AppJankStats;)V
    .registers 3
    .param p1, "appJankStats"    # Landroid/app/jank/AppJankStats;

    .line 2367
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

    if-eqz v0, :cond_f

    .line 2368
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/DecorView$AppJankStatsCallback;->getAppJankTracker()Landroid/app/jank/JankTracker;

    move-result-object v0

    .line 2369
    .local v0, "jankTracker":Landroid/app/jank/JankTracker;
    if-eqz v0, :cond_f

    .line 2370
    invoke-virtual {v0, p1}, Landroid/app/jank/JankTracker;->mergeAppJankStats(Landroid/app/jank/AppJankStats;)V

    .line 2373
    .end local v0    # "jankTracker":Landroid/app/jank/JankTracker;
    :cond_f
    return-void
.end method

.method public blacklist requestKeyboardShortcuts(Ljava/util/List;I)V
    .registers 6
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    .line 2322
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 2323
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 2324
    .local v1, "menu":Landroid/view/Menu;
    :goto_d
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 2325
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, p1, v1, p2}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 2327
    :cond_26
    return-void
.end method

.method public whitelist sendAccessibilityEvent(I)V
    .registers 4
    .param p1, "eventType"    # I

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 599
    return-void

    .line 605
    :cond_d
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_30

    .line 609
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 610
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_33

    .line 612
    :cond_30
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 614
    :goto_33
    return-void
.end method

.method public blacklist setAppJankStatsCallback(Lcom/android/internal/policy/DecorView$AppJankStatsCallback;)V
    .registers 2
    .param p1, "jankStatsReportedCallback"    # Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

    .line 2361
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mAppJankStatsCallback:Lcom/android/internal/policy/DecorView$AppJankStatsCallback;

    .line 2362
    return-void
.end method

.method blacklist setBackgroundBlurRadius(I)V
    .registers 5
    .param p1, "blurRadius"    # I

    .line 1363
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    .line 1364
    if-lez p1, :cond_50

    .line 1365
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-nez v0, :cond_4c

    .line 1366
    new-instance v0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1373
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_22

    .line 1374
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_30

    .line 1375
    :cond_22
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    :goto_30
    nop

    .line 1376
    .local v0, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 1377
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1379
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1380
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_5a

    .line 1381
    :cond_4c
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    goto :goto_5a

    .line 1383
    :cond_50
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_5a

    .line 1384
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 1385
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    .line 1387
    :cond_5a
    :goto_5a
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 987
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 988
    return-void
.end method

.method blacklist setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setWillNotDraw(Z)V

    .line 327
    return-void
.end method

.method protected blacklist setFrame(IIII)Z
    .registers 13
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 629
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    .line 630
    .local v0, "changed":Z
    if-eqz v0, :cond_65

    .line 631
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 632
    .local v1, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 634
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 635
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5c

    .line 636
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 637
    .local v3, "frameOffsets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 638
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 639
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 640
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 641
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 642
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 643
    .local v4, "framePadding":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 644
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 645
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 646
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 650
    .end local v3    # "frameOffsets":Landroid/graphics/Rect;
    .end local v4    # "framePadding":Landroid/graphics/Rect;
    :cond_5c
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 651
    .local v3, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_65

    .line 652
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 669
    .end local v1    # "drawingBounds":Landroid/graphics/Rect;
    .end local v2    # "fg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_65
    return v0
.end method

.method public whitelist setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/view/ViewOutlineProvider;

    .line 1725
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1728
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 1729
    return-void
.end method

.method public blacklist setSurfaceFormat(I)V
    .registers 3
    .param p1, "format"    # I

    .line 1923
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    .line 1924
    return-void
.end method

.method public blacklist setSurfaceKeepScreenOn(Z)V
    .registers 4
    .param p1, "keepOn"    # Z

    .line 1927
    const/16 v0, 0x80

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    goto :goto_f

    .line 1928
    :cond_a
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    .line 1929
    :goto_f
    return-void
.end method

.method public blacklist setSurfaceType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 1919
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 1920
    return-void
.end method

.method blacklist setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 5
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 2123
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2124
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2125
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_12

    .line 2126
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/DecorContext;

    .line 2127
    .local v1, "decorContext":Lcom/android/internal/policy/DecorContext;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 2129
    .end local v1    # "decorContext":Lcom/android/internal/policy/DecorContext;
    :cond_12
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    .line 2130
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 2131
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 2132
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2134
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1e
    return-void
.end method

.method public blacklist setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-nez v0, :cond_7

    .line 954
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 955
    return-void

    .line 957
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_83

    .line 958
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 959
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 960
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorSpecified:Z

    if-nez v0, :cond_4f

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_4f

    .line 962
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 963
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Color;->luminance()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_38

    const/4 v1, 0x1

    goto :goto_39

    :cond_38
    move v1, v2

    .line 964
    .local v1, "lightBar":Z
    :goto_39
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v3

    .line 965
    const/16 v4, 0x200

    if-eqz v1, :cond_43

    move v5, v4

    goto :goto_44

    :cond_43
    move v5, v2

    .line 964
    :goto_44
    invoke-interface {v3, v5, v4}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 967
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput v0, v3, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 968
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 970
    .end local v0    # "color":I
    .end local v1    # "lightBar":Z
    :cond_4f
    if-eqz p1, :cond_57

    .line 971
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_7c

    .line 972
    :cond_57
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_67

    .line 973
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_7c

    .line 974
    :cond_67
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_77

    .line 975
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_7c

    .line 977
    :cond_77
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 979
    :goto_7c
    sget-boolean v0, Landroid/view/View;->sBrokenWindowBackground:Z

    if-nez v0, :cond_83

    .line 980
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 983
    :cond_83
    return-void
.end method

.method public blacklist setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 991
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_19

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 993
    if-eqz p1, :cond_11

    .line 994
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_16

    .line 996
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 998
    :goto_16
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1000
    :cond_19
    return-void
.end method

.method blacklist shouldAnimatePrimaryActionModeView()Z
    .registers 2

    .line 2091
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .param p1, "originalView"    # Landroid/view/View;

    .line 804
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 809
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 863
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 868
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 852
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 858
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method blacklist startChanging()V
    .registers 2

    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 945
    return-void
.end method

.method public blacklist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 483
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 452
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_18

    .line 453
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 455
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_18

    .line 456
    if-ne v0, v2, :cond_17

    .line 457
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 459
    :cond_17
    return v2

    .line 463
    .end local v0    # "action":I
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 464
    return v2

    .line 467
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    return v2
.end method

.method public blacklist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 471
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 475
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 479
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .registers 29
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .line 1084
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 1085
    .local v12, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v12, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v2

    or-int v13, v1, v2

    .line 1087
    .local v13, "sysUiVisibility":I
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v14

    .line 1088
    .local v14, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v15

    .line 1089
    .local v15, "controller":Landroid/view/WindowInsetsController;
    invoke-interface {v15}, Landroid/view/WindowInsetsController;->getRequestedVisibleTypes()I

    move-result v10

    .line 1090
    .local v10, "requestedVisibleTypes":I
    if-eqz v14, :cond_27

    .line 1091
    iget-object v1, v14, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    goto :goto_2b

    .line 1092
    :cond_27
    invoke-interface {v15}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v1

    :goto_2b
    nop

    .line 1095
    .local v1, "appearance":I
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1096
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    const/16 v16, 0x1

    if-ne v2, v3, :cond_3d

    move/from16 v2, v16

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    move/from16 v17, v2

    .line 1097
    .local v17, "isImeWindow":Z
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/high16 v18, -0x80000000

    if-eqz v2, :cond_50

    if-eqz v17, :cond_4b

    goto :goto_50

    :cond_4b
    move-object/from16 v22, v14

    move v14, v1

    goto/16 :goto_1e3

    .line 1098
    :cond_50
    :goto_50
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1099
    .local v2, "disallowAnimate":Z
    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    iget v5, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v3, v5

    and-int v3, v3, v18

    if-eqz v3, :cond_62

    move/from16 v3, v16

    goto :goto_63

    :cond_62
    const/4 v3, 0x0

    :goto_63
    or-int/2addr v2, v3

    .line 1101
    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v3, v0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 1103
    if-eqz v11, :cond_11f

    .line 1104
    iput-object v11, v0, Lcom/android/internal/policy/DecorView;->mLastInsets:Landroid/view/WindowInsets;

    .line 1105
    invoke-virtual {v11}, Landroid/view/WindowInsets;->getForceConsumingTypes()I

    move-result v3

    iput v3, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 1106
    invoke-virtual {v11}, Landroid/view/WindowInsets;->isForceConsumingOpaqueCaptionBar()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingOpaqueCaptionBar:Z

    .line 1108
    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v5, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1109
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v6

    iget v7, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 1108
    invoke-static {v3, v5, v6, v7}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    move-result v3

    .line 1112
    .local v3, "clearsCompatInsets":Z
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v6

    or-int/2addr v5, v6

    .line 1113
    .local v5, "compatInsetsTypes":I
    nop

    .line 1114
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v6

    .line 1113
    invoke-virtual {v11, v6}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v6

    .line 1115
    .local v6, "stableBarInsets":Landroid/graphics/Insets;
    if-eqz v3, :cond_a7

    .line 1116
    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_af

    .line 1117
    :cond_a7
    invoke-virtual {v11, v5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v7

    :goto_af
    nop

    .line 1118
    .local v7, "systemInsets":Landroid/graphics/Insets;
    iget v8, v7, Landroid/graphics/Insets;->top:I

    iput v8, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 1119
    iget v8, v7, Landroid/graphics/Insets;->bottom:I

    iput v8, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 1120
    iget v8, v7, Landroid/graphics/Insets;->right:I

    iput v8, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 1121
    iget v8, v7, Landroid/graphics/Insets;->left:I

    iput v8, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 1126
    iget v8, v6, Landroid/graphics/Insets;->top:I

    if-eqz v8, :cond_c7

    move/from16 v8, v16

    goto :goto_c8

    :cond_c7
    const/4 v8, 0x0

    .line 1127
    .local v8, "hasTopStableInset":Z
    :goto_c8
    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    if-eq v8, v9, :cond_cf

    move/from16 v9, v16

    goto :goto_d0

    :cond_cf
    const/4 v9, 0x0

    :goto_d0
    or-int/2addr v2, v9

    .line 1128
    iput-boolean v8, v0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 1130
    iget v9, v6, Landroid/graphics/Insets;->bottom:I

    if-eqz v9, :cond_da

    move/from16 v9, v16

    goto :goto_db

    :cond_da
    const/4 v9, 0x0

    .line 1131
    .local v9, "hasBottomStableInset":Z
    :goto_db
    iget-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    if-eq v9, v4, :cond_e2

    move/from16 v4, v16

    goto :goto_e3

    :cond_e2
    const/4 v4, 0x0

    :goto_e3
    or-int/2addr v2, v4

    .line 1132
    iput-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 1134
    iget v4, v6, Landroid/graphics/Insets;->right:I

    if-eqz v4, :cond_ed

    move/from16 v4, v16

    goto :goto_ee

    :cond_ed
    const/4 v4, 0x0

    .line 1135
    .local v4, "hasRightStableInset":Z
    :goto_ee
    move/from16 v19, v2

    .end local v2    # "disallowAnimate":Z
    .local v19, "disallowAnimate":Z
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    if-eq v4, v2, :cond_f7

    move/from16 v2, v16

    goto :goto_f8

    :cond_f7
    const/4 v2, 0x0

    :goto_f8
    or-int v2, v19, v2

    .line 1136
    .end local v19    # "disallowAnimate":Z
    .restart local v2    # "disallowAnimate":Z
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 1138
    move/from16 v19, v2

    .end local v2    # "disallowAnimate":Z
    .restart local v19    # "disallowAnimate":Z
    iget v2, v6, Landroid/graphics/Insets;->left:I

    if-eqz v2, :cond_105

    move/from16 v2, v16

    goto :goto_106

    :cond_105
    const/4 v2, 0x0

    .line 1139
    .local v2, "hasLeftStableInset":Z
    :goto_106
    move/from16 v20, v3

    .end local v3    # "clearsCompatInsets":Z
    .local v20, "clearsCompatInsets":Z
    iget-boolean v3, v0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    if-eq v2, v3, :cond_10f

    move/from16 v3, v16

    goto :goto_110

    :cond_10f
    const/4 v3, 0x0

    :goto_110
    or-int v3, v19, v3

    .line 1140
    .end local v19    # "disallowAnimate":Z
    .local v3, "disallowAnimate":Z
    iput-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 1142
    move/from16 v19, v2

    .end local v2    # "hasLeftStableInset":Z
    .local v19, "hasLeftStableInset":Z
    invoke-virtual {v11}, Landroid/view/WindowInsets;->getSuppressScrimTypes()I

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    move/from16 v19, v3

    goto :goto_121

    .line 1103
    .end local v3    # "disallowAnimate":Z
    .end local v4    # "hasRightStableInset":Z
    .end local v5    # "compatInsetsTypes":I
    .end local v6    # "stableBarInsets":Landroid/graphics/Insets;
    .end local v7    # "systemInsets":Landroid/graphics/Insets;
    .end local v8    # "hasTopStableInset":Z
    .end local v9    # "hasBottomStableInset":Z
    .end local v19    # "hasLeftStableInset":Z
    .end local v20    # "clearsCompatInsets":Z
    .local v2, "disallowAnimate":Z
    :cond_11f
    move/from16 v19, v2

    .line 1145
    .end local v2    # "disallowAnimate":Z
    .local v19, "disallowAnimate":Z
    :goto_121
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v20

    .line 1146
    .local v20, "navBarToRightEdge":Z
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v6

    .line 1147
    .local v6, "navBarToLeftEdge":Z
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v4

    .line 1148
    .local v4, "navBarSize":I
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    move-object v3, v2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/DecorView;->calculateNavigationBarColor(I)I

    move-result v2

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    if-nez v20, :cond_150

    if-eqz v6, :cond_14b

    goto :goto_150

    :cond_14b
    move v7, v1

    move-object v1, v3

    move v3, v5

    const/4 v5, 0x0

    goto :goto_155

    :cond_150
    :goto_150
    move v7, v1

    move-object v1, v3

    move v3, v5

    move/from16 v5, v16

    .end local v1    # "appearance":I
    .local v7, "appearance":I
    :goto_155
    if-eqz p2, :cond_15c

    if-nez v19, :cond_15c

    move/from16 v8, v16

    goto :goto_15d

    :cond_15c
    const/4 v8, 0x0

    :goto_15d
    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    move/from16 v21, v7

    .end local v7    # "appearance":I
    .local v21, "appearance":I
    const/4 v7, 0x0

    move-object/from16 v22, v14

    move/from16 v14, v21

    .end local v21    # "appearance":I
    .local v14, "appearance":I
    .local v22, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZI)V

    .line 1153
    move/from16 v23, v4

    move/from16 v21, v6

    .end local v4    # "navBarSize":I
    .end local v6    # "navBarToLeftEdge":Z
    .local v21, "navBarToLeftEdge":Z
    .local v23, "navBarSize":I
    iget-boolean v1, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1154
    .local v1, "oldDrawLegacy":Z
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    or-int/2addr v2, v10

    .line 1156
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_18a

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1157
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v2, v2, v18

    if-nez v2, :cond_18a

    if-lez v23, :cond_18a

    move/from16 v4, v16

    goto :goto_18b

    :cond_18a
    const/4 v4, 0x0

    :goto_18b
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1159
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eq v1, v2, :cond_1a0

    .line 1160
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v3, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1161
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow;->onDrawLegacyNavigationBarBackgroundChanged(Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    .line 1163
    if-eqz v22, :cond_1a0

    .line 1164
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 1168
    :cond_1a0
    if-eqz v20, :cond_1ab

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v2, :cond_1ab

    move/from16 v4, v16

    goto :goto_1ac

    :cond_1ab
    const/4 v4, 0x0

    :goto_1ac
    move/from16 v24, v4

    .line 1170
    .local v24, "statusBarNeedsRightInset":Z
    if-eqz v21, :cond_1b9

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v2, :cond_1b9

    move/from16 v6, v16

    goto :goto_1ba

    :cond_1b9
    const/4 v6, 0x0

    .line 1172
    .local v6, "statusBarNeedsLeftInset":Z
    :goto_1ba
    if-eqz v24, :cond_1c0

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move v7, v4

    goto :goto_1c7

    .line 1173
    :cond_1c0
    if-eqz v6, :cond_1c6

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move v7, v4

    goto :goto_1c7

    :cond_1c6
    const/4 v7, 0x0

    :goto_1c7
    nop

    .line 1174
    .local v7, "statusBarSideInset":I
    invoke-direct {v0, v14}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor(I)I

    move-result v2

    .line 1175
    .local v2, "statusBarColor":I
    move v3, v1

    .end local v1    # "oldDrawLegacy":Z
    .local v3, "oldDrawLegacy":Z
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-eqz p2, :cond_1d8

    if-nez v19, :cond_1d8

    move/from16 v8, v16

    goto :goto_1d9

    :cond_1d8
    const/4 v8, 0x0

    :goto_1d9
    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    move v5, v3

    .end local v3    # "oldDrawLegacy":Z
    .local v5, "oldDrawLegacy":Z
    const/4 v3, 0x0

    move/from16 v25, v5

    .end local v5    # "oldDrawLegacy":Z
    .local v25, "oldDrawLegacy":Z
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZI)V

    .line 1181
    .end local v2    # "statusBarColor":I
    .end local v6    # "statusBarNeedsLeftInset":Z
    .end local v7    # "statusBarSideInset":I
    .end local v19    # "disallowAnimate":Z
    .end local v20    # "navBarToRightEdge":Z
    .end local v21    # "navBarToLeftEdge":Z
    .end local v23    # "navBarSize":I
    .end local v24    # "statusBarNeedsRightInset":Z
    .end local v25    # "oldDrawLegacy":Z
    :goto_1e3
    const/4 v1, 0x0

    .line 1192
    .local v1, "consumingTypes":I
    and-int/lit8 v2, v13, 0x2

    if-nez v2, :cond_1f2

    .line 1193
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    and-int/2addr v2, v10

    if-nez v2, :cond_1f0

    goto :goto_1f2

    :cond_1f0
    const/4 v4, 0x0

    goto :goto_1f4

    :cond_1f2
    :goto_1f2
    move/from16 v4, v16

    .line 1194
    .local v4, "hideNavigation":Z
    :goto_1f4
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 1196
    .local v2, "decorFitsSystemWindows":Z
    and-int/lit16 v3, v13, 0x200

    if-nez v3, :cond_203

    if-eqz v2, :cond_203

    if-nez v4, :cond_203

    move/from16 v3, v16

    goto :goto_204

    :cond_203
    const/4 v3, 0x0

    .line 1200
    .local v3, "fitsNavBar":Z
    :goto_204
    iget-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-nez v5, :cond_20c

    iget-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-eqz v5, :cond_214

    :cond_20c
    iget v5, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v5, v5, v18

    if-nez v5, :cond_214

    if-nez v3, :cond_21f

    :cond_214
    iget v5, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 1204
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_222

    if-eqz v4, :cond_222

    :cond_21f
    move/from16 v5, v16

    goto :goto_223

    :cond_222
    const/4 v5, 0x0

    .line 1206
    .local v5, "forceConsumingNavBar":Z
    :goto_223
    iget v6, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v6, v6, v18

    if-eqz v6, :cond_22b

    if-nez v3, :cond_22d

    :cond_22b
    if-eqz v5, :cond_230

    :cond_22d
    move/from16 v6, v16

    goto :goto_231

    :cond_230
    const/4 v6, 0x0

    .line 1209
    .local v6, "consumingNavBar":Z
    :goto_231
    if-eqz v6, :cond_238

    .line 1210
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    or-int/2addr v1, v7

    .line 1217
    :cond_238
    and-int/lit8 v7, v13, 0x4

    if-nez v7, :cond_245

    iget v7, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_243

    goto :goto_245

    :cond_243
    const/4 v7, 0x0

    goto :goto_247

    :cond_245
    :goto_245
    move/from16 v7, v16

    .line 1219
    .local v7, "fullscreen":Z
    :goto_247
    if-nez v7, :cond_253

    .line 1220
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v8

    and-int/2addr v8, v10

    if-nez v8, :cond_251

    goto :goto_253

    :cond_251
    const/4 v8, 0x0

    goto :goto_255

    :cond_253
    :goto_253
    move/from16 v8, v16

    .line 1221
    .local v8, "hideStatusBar":Z
    :goto_255
    and-int/lit16 v9, v13, 0x400

    if-nez v9, :cond_271

    if-eqz v2, :cond_271

    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v9, v9, 0x100

    if-nez v9, :cond_271

    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v18, 0x10000

    and-int v9, v9, v18

    if-nez v9, :cond_271

    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v9, :cond_271

    iget v9, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-nez v9, :cond_27d

    :cond_271
    iget v9, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 1227
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v18

    and-int v9, v9, v18

    if-eqz v9, :cond_282

    if-eqz v8, :cond_282

    .line 1229
    :cond_27d
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v9

    or-int/2addr v1, v9

    .line 1233
    :cond_282
    if-nez v7, :cond_28e

    .line 1234
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v9

    and-int/2addr v9, v10

    if-nez v9, :cond_28c

    goto :goto_28e

    :cond_28c
    const/4 v9, 0x0

    goto :goto_290

    :cond_28e
    :goto_28e
    move/from16 v9, v16

    .line 1235
    .local v9, "hideCaptionBar":Z
    :goto_290
    sget-object v18, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION:Landroid/window/DesktopModeFlags;

    .line 1236
    invoke-virtual/range {v18 .. v18}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v18

    if-eqz v18, :cond_2a9

    move/from16 v18, v1

    .end local v1    # "consumingTypes":I
    .local v18, "consumingTypes":I
    iget v1, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    .line 1237
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v19

    and-int v1, v1, v19

    if-eqz v1, :cond_2ab

    if-eqz v9, :cond_2ab

    move/from16 v1, v16

    goto :goto_2ac

    .line 1236
    .end local v18    # "consumingTypes":I
    .restart local v1    # "consumingTypes":I
    :cond_2a9
    move/from16 v18, v1

    .line 1237
    .end local v1    # "consumingTypes":I
    .restart local v18    # "consumingTypes":I
    :cond_2ab
    const/4 v1, 0x0

    .line 1240
    .local v1, "consumingCaptionBar":Z
    :goto_2ac
    invoke-static {}, Landroid/view/flags/Flags;->customizableWindowHeaders()Z

    move-result v19

    if-eqz v19, :cond_2bb

    move/from16 v19, v1

    .end local v1    # "consumingCaptionBar":Z
    .local v19, "consumingCaptionBar":Z
    and-int/lit16 v1, v14, 0x80

    if-nez v1, :cond_2bd

    move/from16 v1, v16

    goto :goto_2be

    .end local v19    # "consumingCaptionBar":Z
    .restart local v1    # "consumingCaptionBar":Z
    :cond_2bb
    move/from16 v19, v1

    .end local v1    # "consumingCaptionBar":Z
    .restart local v19    # "consumingCaptionBar":Z
    :cond_2bd
    const/4 v1, 0x0

    .line 1242
    .local v1, "isOpaqueCaptionBar":Z
    :goto_2be
    sget-object v20, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION_ALWAYS:Landroid/window/DesktopModeFlags;

    .line 1243
    invoke-virtual/range {v20 .. v20}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v20

    if-eqz v20, :cond_2cf

    move/from16 v20, v1

    .end local v1    # "isOpaqueCaptionBar":Z
    .local v20, "isOpaqueCaptionBar":Z
    iget-boolean v1, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingOpaqueCaptionBar:Z

    if-eqz v1, :cond_2d1

    if-eqz v20, :cond_2d1

    goto :goto_2d3

    .end local v20    # "isOpaqueCaptionBar":Z
    .restart local v1    # "isOpaqueCaptionBar":Z
    :cond_2cf
    move/from16 v20, v1

    .end local v1    # "isOpaqueCaptionBar":Z
    .restart local v20    # "isOpaqueCaptionBar":Z
    :cond_2d1
    const/16 v16, 0x0

    .line 1247
    .local v16, "consumingOpaqueCaptionBar":Z
    :goto_2d3
    if-nez v19, :cond_2db

    if-eqz v16, :cond_2d8

    goto :goto_2db

    :cond_2d8
    move/from16 v1, v18

    goto :goto_2e1

    .line 1248
    :cond_2db
    :goto_2db
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v1

    or-int v1, v18, v1

    .line 1251
    .end local v18    # "consumingTypes":I
    .local v1, "consumingTypes":I
    :goto_2e1
    move/from16 v18, v2

    .end local v2    # "decorFitsSystemWindows":Z
    .local v18, "decorFitsSystemWindows":Z
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mLastInsets:Landroid/view/WindowInsets;

    if-eqz v2, :cond_2ee

    .line 1252
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    goto :goto_2f0

    :cond_2ee
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1254
    .local v2, "consumedInsets":Landroid/graphics/Insets;
    :goto_2f0
    move/from16 v21, v1

    .end local v1    # "consumingTypes":I
    .local v21, "consumingTypes":I
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_352

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 1255
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_34d

    .line 1256
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1257
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move/from16 v23, v3

    .end local v3    # "fitsNavBar":Z
    .local v23, "fitsNavBar":Z
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v24, v4

    .end local v4    # "hideNavigation":Z
    .local v24, "hideNavigation":Z
    iget v4, v2, Landroid/graphics/Insets;->top:I

    if-ne v3, v4, :cond_324

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v2, Landroid/graphics/Insets;->right:I

    if-ne v3, v4, :cond_324

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v4, v2, Landroid/graphics/Insets;->bottom:I

    if-ne v3, v4, :cond_324

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/graphics/Insets;->left:I

    if-eq v3, v4, :cond_33e

    .line 1260
    :cond_324
    iget v3, v2, Landroid/graphics/Insets;->top:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1261
    iget v3, v2, Landroid/graphics/Insets;->right:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1262
    iget v3, v2, Landroid/graphics/Insets;->bottom:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1263
    iget v3, v2, Landroid/graphics/Insets;->left:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1264
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    if-nez v11, :cond_33e

    .line 1269
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    .line 1272
    :cond_33e
    if-eqz v11, :cond_356

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v3, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_356

    .line 1273
    invoke-virtual {v11, v2}, Landroid/view/WindowInsets;->inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;

    move-result-object v3

    .end local p1    # "insets":Landroid/view/WindowInsets;
    .local v3, "insets":Landroid/view/WindowInsets;
    goto :goto_357

    .line 1255
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v23    # "fitsNavBar":Z
    .end local v24    # "hideNavigation":Z
    .local v3, "fitsNavBar":Z
    .restart local v4    # "hideNavigation":Z
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_34d
    move/from16 v23, v3

    move/from16 v24, v4

    .end local v3    # "fitsNavBar":Z
    .end local v4    # "hideNavigation":Z
    .restart local v23    # "fitsNavBar":Z
    .restart local v24    # "hideNavigation":Z
    goto :goto_356

    .line 1254
    .end local v23    # "fitsNavBar":Z
    .end local v24    # "hideNavigation":Z
    .restart local v3    # "fitsNavBar":Z
    .restart local v4    # "hideNavigation":Z
    :cond_352
    move/from16 v23, v3

    move/from16 v24, v4

    .line 1277
    .end local v3    # "fitsNavBar":Z
    .end local v4    # "hideNavigation":Z
    .restart local v23    # "fitsNavBar":Z
    .restart local v24    # "hideNavigation":Z
    :cond_356
    :goto_356
    move-object v3, v11

    .end local p1    # "insets":Landroid/view/WindowInsets;
    .local v3, "insets":Landroid/view/WindowInsets;
    :goto_357
    if-eqz v5, :cond_36f

    if-nez v24, :cond_36f

    iget-boolean v1, v0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-nez v1, :cond_36f

    .line 1278
    iget v1, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    iget v4, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v11, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    move-object/from16 v25, v2

    const/4 v2, 0x0

    .end local v2    # "consumedInsets":Landroid/graphics/Insets;
    .local v25, "consumedInsets":Landroid/graphics/Insets;
    invoke-static {v1, v2, v4, v11}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    goto :goto_375

    .line 1277
    .end local v25    # "consumedInsets":Landroid/graphics/Insets;
    .restart local v2    # "consumedInsets":Landroid/graphics/Insets;
    :cond_36f
    move-object/from16 v25, v2

    .line 1280
    .end local v2    # "consumedInsets":Landroid/graphics/Insets;
    .restart local v25    # "consumedInsets":Landroid/graphics/Insets;
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 1282
    :goto_375
    invoke-direct {v0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1284
    return-object v3
.end method

.method blacklist updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 2314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 2315
    return-void
.end method

.method public blacklist updatePictureInPictureOutlineProvider(Z)V
    .registers 4
    .param p1, "isInPictureInPictureMode"    # Z

    .line 1702
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    if-ne v0, p1, :cond_5

    .line 1703
    return-void

    .line 1706
    :cond_5
    if-eqz p1, :cond_1b

    .line 1707
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1708
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 1709
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1712
    sget-object v1, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1714
    .end local v0    # "callback":Landroid/view/Window$WindowControllerCallback;
    :cond_1a
    goto :goto_28

    .line 1716
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_28

    .line 1717
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1720
    :cond_28
    :goto_28
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    .line 1721
    return-void
.end method

.method public blacklist willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .registers 2

    .line 1915
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .registers 2

    .line 1911
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method
