.class public Lcom/android/internal/policy/DecorView;
.super Landroid/widget/FrameLayout;
.source "DecorView.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;,
        Lcom/android/internal/policy/DecorView$ColorViewState;
    }
.end annotation


# static fields
.field private static final DEBUG_MEASURE:Z = false

.field private static final DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0x14

.field private static final DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0x5

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "DecorView"


# instance fields
.field private mAllowUpdateElevation:Z

.field private mApplyFloatingHorizontalInsets:Z

.field private mApplyFloatingVerticalInsets:Z

.field private mAvailableWidth:F

.field private mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field private mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChanging:Z

.field mContentRoot:Landroid/view/ViewGroup;

.field mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

.field mDefaultOpacity:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mElevationAdjustedForStack:Z

.field private mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final mFeatureId:I

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private final mFloatingInsets:Landroid/graphics/Rect;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final mForceWindowDrawsStatusBarBackground:Z

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private mHasCaption:Z

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private final mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

.field private mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

.field private mLastBottomInset:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasRightStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastRightInset:I

.field private mLastShouldAlwaysConsumeNavBar:Z

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field mLogTag:Ljava/lang/String;

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private mNavigationGuard:Landroid/view/View;

.field private mOutsets:Landroid/graphics/Rect;

.field mPrimaryActionMode:Landroid/view/ActionMode;

.field private mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private mResizeMode:I

.field private final mResizeShadowSize:I

.field private mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootScrollY:I

.field private final mSemiTransparentStatusBarColor:I

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field mStackId:I

.field private final mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private mStatusGuard:Landroid/view/View;

.field private mTempRect:Landroid/graphics/Rect;

.field private mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalResizeShadowPaint:Landroid/graphics/Paint;

.field private mWatchingForMenu:Z

.field private mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private mWindowResizeCallbacksAdded:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureId"    # I
    .param p3, "window"    # Lcom/android/internal/policy/PhoneWindow;
    .param p4, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 232
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@6
    .line 123
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    #@8
    .line 125
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    #@a
    .line 127
    iput v10, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    #@c
    .line 132
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    #@13
    .line 134
    new-instance v0, Landroid/graphics/Rect;

    #@15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@1a
    .line 136
    new-instance v0, Landroid/graphics/Rect;

    #@1c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@21
    .line 138
    new-instance v0, Landroid/graphics/Rect;

    #@23
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    #@28
    .line 140
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    #@2a
    .line 163
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewState;

    #@2c
    .line 166
    const-string/jumbo v5, "android:status:background"

    #@2f
    .line 164
    const/4 v1, 0x4

    #@30
    const/high16 v2, 0x4000000

    #@32
    .line 165
    const/16 v3, 0x30

    #@34
    const/4 v4, 0x3

    #@35
    .line 167
    const v6, 0x102002f

    #@38
    .line 168
    const/16 v7, 0x400

    #@3a
    .line 163
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    #@3d
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@3f
    .line 169
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewState;

    #@41
    .line 172
    const-string/jumbo v5, "android:navigation:background"

    #@44
    .line 170
    const/4 v1, 0x2

    #@45
    const/high16 v2, 0x8000000

    #@47
    .line 171
    const/16 v3, 0x50

    #@49
    const/4 v4, 0x5

    #@4a
    .line 173
    const v6, 0x1020030

    #@4d
    move v7, v8

    #@4e
    .line 169
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    #@51
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@53
    .line 182
    new-instance v0, Lcom/android/internal/widget/BackgroundFallback;

    #@55
    invoke-direct {v0}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    #@58
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    #@5a
    .line 184
    iput v8, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    #@5c
    .line 185
    iput v8, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    #@5e
    .line 186
    iput v8, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@60
    .line 187
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    #@62
    .line 188
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    #@64
    .line 189
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    #@66
    .line 190
    iput v8, p0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    #@68
    .line 191
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    #@6a
    .line 193
    iput v8, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    #@6c
    .line 200
    new-instance v0, Landroid/graphics/Rect;

    #@6e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@71
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@73
    .line 211
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    #@75
    .line 212
    iput-object v9, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    #@77
    .line 213
    iput-object v9, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@79
    .line 220
    const-string/jumbo v0, "DecorView"

    #@7c
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    #@7e
    .line 221
    new-instance v0, Landroid/graphics/Rect;

    #@80
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@83
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@85
    .line 222
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    #@87
    .line 223
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    #@89
    .line 225
    iput v10, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    #@8b
    .line 227
    new-instance v0, Landroid/graphics/Paint;

    #@8d
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@90
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    #@92
    .line 228
    new-instance v0, Landroid/graphics/Paint;

    #@94
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@97
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    #@99
    .line 233
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@9b
    .line 236
    const v0, 0x10c000e

    #@9e
    .line 235
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@a1
    move-result-object v0

    #@a2
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    #@a4
    .line 238
    const v0, 0x10c000f

    #@a7
    .line 237
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@aa
    move-result-object v0

    #@ab
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    #@ad
    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b0
    move-result-object v0

    #@b1
    .line 241
    const v1, 0x10e00c0

    #@b4
    .line 240
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@b7
    move-result v0

    #@b8
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    #@ba
    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@bd
    move-result-object v0

    #@be
    .line 243
    const v1, 0x11200a9

    #@c1
    .line 242
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@c4
    move-result v0

    #@c5
    if-eqz v0, :cond_1

    #@c7
    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@ca
    move-result-object v0

    #@cb
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@cd
    const/16 v1, 0x18

    #@cf
    if-lt v0, v1, :cond_0

    #@d1
    const/4 v0, 0x1

    #@d2
    .line 242
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    #@d4
    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d7
    move-result-object v0

    #@d8
    .line 246
    const v1, 0x1060072

    #@db
    .line 245
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    #@de
    move-result v0

    #@df
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentStatusBarColor:I

    #@e1
    .line 248
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    #@e4
    .line 250
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    #@e7
    .line 252
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    #@ea
    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@ed
    move-result-object v0

    #@ee
    .line 255
    const v1, 0x10500be

    #@f1
    .line 254
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@f4
    move-result v0

    #@f5
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    #@f7
    .line 256
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initResizingPaints()V

    #@fa
    .line 231
    return-void

    #@fb
    :cond_0
    move v0, v8

    #@fc
    .line 244
    goto :goto_0

    #@fd
    :cond_1
    move v0, v8

    #@fe
    .line 242
    goto :goto_0
.end method

.method private calculateStatusBarColor()I
    .locals 2

    #@0
    .prologue
    .line 1106
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v1

    #@6
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8
    .line 1107
    .local v0, "flags":I
    const/high16 v1, 0x4000000

    #@a
    and-int/2addr v1, v0

    #@b
    if-eqz v1, :cond_0

    #@d
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentStatusBarColor:I

    #@f
    :goto_0
    return v1

    #@10
    .line 1108
    :cond_0
    const/high16 v1, -0x80000000

    #@12
    and-int/2addr v1, v0

    #@13
    if-eqz v1, :cond_1

    #@15
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@17
    iget v1, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    #@19
    goto :goto_0

    #@1a
    .line 1109
    :cond_1
    const/high16 v1, -0x1000000

    #@1c
    goto :goto_0
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 886
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    #@a
    .line 887
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@c
    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 890
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 891
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@16
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@19
    move-result-object v0

    #@1a
    .line 892
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@1c
    .line 891
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@1f
    .line 893
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@21
    .line 895
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@23
    .line 884
    :cond_2
    return-void
.end method

.method private cleanupPrimaryActionMode()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 875
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 876
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@7
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    #@a
    .line 877
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@c
    .line 879
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 880
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    #@15
    .line 874
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
    .line 1533
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1536
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 1538
    :pswitch_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 1533
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 1816
    const/4 v1, 0x0

    #@3
    .line 1817
    .local v1, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    #@6
    move-result v7

    #@7
    add-int/lit8 v2, v7, -0x1

    #@9
    .end local v1    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@b
    if-nez v1, :cond_1

    #@d
    .line 1818
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v4

    #@11
    .line 1819
    .local v4, "view":Landroid/view/View;
    instance-of v7, v4, Lcom/android/internal/widget/DecorCaptionView;

    #@13
    if-eqz v7, :cond_0

    #@15
    move-object v1, v4

    #@16
    .line 1821
    check-cast v1, Lcom/android/internal/widget/DecorCaptionView;

    #@18
    .line 1822
    .local v1, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    #@1b
    .line 1817
    .end local v1    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1825
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@20
    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@23
    move-result-object v0

    #@24
    .line 1826
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@26
    if-eq v7, v5, :cond_3

    #@28
    .line 1827
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2a
    const/4 v8, 0x2

    #@2b
    if-ne v7, v8, :cond_4

    #@2d
    const/4 v3, 0x1

    #@2e
    .line 1829
    .local v3, "isApplication":Z
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@30
    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    #@33
    move-result v7

    #@34
    if-nez v7, :cond_5

    #@36
    if-eqz v3, :cond_5

    #@38
    iget v7, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@3a
    invoke-static {v7}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    #@3d
    move-result v7

    #@3e
    if-eqz v7, :cond_5

    #@40
    .line 1832
    if-nez v1, :cond_2

    #@42
    .line 1833
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    #@45
    move-result-object v1

    #@46
    .line 1835
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@48
    invoke-virtual {v1, v7, v5}, Lcom/android/internal/widget/DecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V

    #@4b
    .line 1841
    :goto_2
    if-eqz v1, :cond_6

    #@4d
    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    #@50
    .line 1842
    return-object v1

    #@51
    .line 1826
    .end local v3    # "isApplication":Z
    :cond_3
    const/4 v3, 0x1

    #@52
    .restart local v3    # "isApplication":Z
    goto :goto_1

    #@53
    .line 1827
    .end local v3    # "isApplication":Z
    :cond_4
    const/4 v3, 0x0

    #@54
    .restart local v3    # "isApplication":Z
    goto :goto_1

    #@55
    .line 1837
    :cond_5
    const/4 v1, 0x0

    #@56
    .local v1, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    goto :goto_2

    #@57
    .end local v1    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    :cond_6
    move v5, v6

    #@58
    .line 1841
    goto :goto_3
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    #@0
    .prologue
    .line 1685
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1686
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@6
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    #@9
    .line 1688
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    #@c
    .line 1690
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    #@e
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@10
    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V

    #@13
    .line 1691
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@15
    .line 1693
    new-instance v1, Lcom/android/internal/policy/DecorView$4;

    #@17
    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    #@1a
    .line 1692
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@1c
    .line 1700
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
    .line 1551
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    #@6
    .line 1552
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    #@9
    .line 1559
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@b
    if-eqz v7, :cond_1

    #@d
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@f
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isAttachedToWindow()Z

    #@12
    move-result v7

    #@13
    if-eqz v7, :cond_1

    #@15
    .line 1629
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@17
    if-eqz v7, :cond_5

    #@19
    .line 1630
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@1b
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    #@1e
    .line 1631
    new-instance v4, Lcom/android/internal/view/StandaloneActionMode;

    #@20
    .line 1632
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@22
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@25
    move-result-object v10

    #@26
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@28
    .line 1633
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@2a
    if-nez v7, :cond_4

    #@2c
    move v7, v8

    #@2d
    .line 1631
    :goto_1
    invoke-direct {v4, v10, v11, p1, v7}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    #@30
    .line 1634
    .local v4, "mode":Landroid/view/ActionMode;
    return-object v4

    #@31
    .line 1560
    .end local v4    # "mode":Landroid/view/ActionMode;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@33
    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    #@36
    move-result v7

    #@37
    if-eqz v7, :cond_3

    #@39
    .line 1562
    new-instance v5, Landroid/util/TypedValue;

    #@3b
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    #@3e
    .line 1563
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@40
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@43
    move-result-object v2

    #@44
    .line 1564
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v7, 0x1010431

    #@47
    invoke-virtual {v2, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@4a
    .line 1567
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    #@4c
    if-eqz v7, :cond_2

    #@4e
    .line 1568
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@50
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@57
    move-result-object v1

    #@58
    .line 1569
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@5b
    .line 1570
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    #@5d
    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@60
    .line 1572
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@62
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@64
    invoke-direct {v0, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@67
    .line 1573
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v7, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@6e
    .line 1578
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_2
    new-instance v7, Lcom/android/internal/widget/ActionBarContextView;

    #@70
    invoke-direct {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    #@73
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@75
    .line 1579
    new-instance v7, Landroid/widget/PopupWindow;

    #@77
    .line 1580
    const v10, 0x116001e

    #@7a
    .line 1579
    invoke-direct {v7, v0, v11, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@7d
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@7f
    .line 1581
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@81
    .line 1582
    const/4 v10, 0x2

    #@82
    .line 1581
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    #@85
    .line 1583
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@87
    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@89
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@8c
    .line 1584
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@8e
    const/4 v10, -0x1

    #@8f
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@92
    .line 1586
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@95
    move-result-object v7

    #@96
    .line 1587
    const v10, 0x10102eb

    #@99
    .line 1586
    invoke-virtual {v7, v10, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@9c
    .line 1588
    iget v7, v5, Landroid/util/TypedValue;->data:I

    #@9e
    .line 1589
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a1
    move-result-object v10

    #@a2
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@a5
    move-result-object v10

    #@a6
    .line 1588
    invoke-static {v7, v10}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@a9
    move-result v3

    #@aa
    .line 1590
    .local v3, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@ac
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    #@af
    .line 1591
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@b1
    const/4 v10, -0x2

    #@b2
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@b5
    .line 1592
    new-instance v7, Lcom/android/internal/policy/DecorView$2;

    #@b7
    invoke-direct {v7, p0}, Lcom/android/internal/policy/DecorView$2;-><init>(Lcom/android/internal/policy/DecorView;)V

    #@ba
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    #@bc
    goto/16 :goto_0

    #@be
    .line 1575
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v3    # "height":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@c0
    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto :goto_2

    #@c1
    .line 1622
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_3
    const v7, 0x10203e8

    #@c4
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    #@c7
    move-result-object v6

    #@c8
    check-cast v6, Landroid/view/ViewStub;

    #@ca
    .line 1623
    .local v6, "stub":Landroid/view/ViewStub;
    if-eqz v6, :cond_0

    #@cc
    .line 1624
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@cf
    move-result-object v7

    #@d0
    check-cast v7, Lcom/android/internal/widget/ActionBarContextView;

    #@d2
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@d4
    .line 1625
    iput-object v11, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@d6
    goto/16 :goto_0

    #@d8
    .end local v6    # "stub":Landroid/view/ViewStub;
    :cond_4
    move v7, v9

    #@d9
    .line 1633
    goto/16 :goto_1

    #@db
    .line 1636
    :cond_5
    return-object v11
.end method

.method private dipToPx(F)F
    .locals 2
    .param p1, "dip"    # F

    #@0
    .prologue
    .line 2156
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    .line 2155
    const/4 v1, 0x1

    #@9
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@c
    move-result v0

    #@d
    return v0
.end method

.method private drawResizingShadowIfNeeded(Landroid/view/DisplayListCanvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2067
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    #@3
    const/4 v2, 0x1

    #@4
    if-ne v0, v2, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@8
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@a
    if-nez v0, :cond_0

    #@c
    .line 2068
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    #@11
    move-result v0

    #@12
    .line 2067
    if-nez v0, :cond_0

    #@14
    .line 2069
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    #@19
    move-result v0

    #@1a
    .line 2067
    if-eqz v0, :cond_1

    #@1c
    .line 2070
    :cond_0
    return-void

    #@1d
    .line 2072
    :cond_1
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->save()I

    #@20
    .line 2073
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    #@23
    move-result v0

    #@24
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    #@26
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@28
    sub-int/2addr v0, v2

    #@29
    int-to-float v0, v0

    #@2a
    invoke-virtual {p1, v1, v0}, Landroid/view/DisplayListCanvas;->translate(FF)V

    #@2d
    .line 2074
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    #@30
    move-result v0

    #@31
    int-to-float v3, v0

    #@32
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    #@34
    int-to-float v4, v0

    #@35
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    #@37
    move-object v0, p1

    #@38
    move v2, v1

    #@39
    invoke-virtual/range {v0 .. v5}, Landroid/view/DisplayListCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@3c
    .line 2075
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->restore()V

    #@3f
    .line 2076
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->save()I

    #@42
    .line 2077
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    #@45
    move-result v0

    #@46
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    #@48
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@4a
    sub-int/2addr v0, v2

    #@4b
    int-to-float v0, v0

    #@4c
    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    #@4f
    .line 2078
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    #@51
    int-to-float v3, v0

    #@52
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    #@55
    move-result v0

    #@56
    int-to-float v4, v0

    #@57
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    #@59
    move-object v0, p1

    #@5a
    move v2, v1

    #@5b
    invoke-virtual/range {v0 .. v5}, Landroid/view/DisplayListCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@5e
    .line 2079
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->restore()V

    #@61
    .line 2066
    return-void
.end method

.method private drawableChanged()V
    .locals 11

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 1336
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 1337
    return-void

    #@6
    .line 1340
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@8
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@a
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@c
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@e
    add-int/2addr v5, v6

    #@f
    .line 1341
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@11
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@13
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@15
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@17
    add-int/2addr v6, v7

    #@18
    .line 1342
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@1a
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@1c
    iget-object v8, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@1e
    iget v8, v8, Landroid/graphics/Rect;->right:I

    #@20
    add-int/2addr v7, v8

    #@21
    .line 1343
    iget-object v8, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@23
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    #@25
    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@27
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@29
    add-int/2addr v8, v9

    #@2a
    .line 1340
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/policy/DecorView;->setPadding(IIII)V

    #@2d
    .line 1344
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    #@30
    .line 1345
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    #@33
    .line 1347
    const/4 v4, -0x1

    #@34
    .line 1348
    .local v4, "opacity":I
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@36
    invoke-static {v5}, Landroid/app/ActivityManager$StackId;->hasWindowShadow(I)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_3

    #@3c
    .line 1350
    const/4 v4, -0x3

    #@3d
    .line 1395
    :cond_1
    :goto_0
    iput v4, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    #@3f
    .line 1396
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@41
    if-gez v5, :cond_2

    #@43
    .line 1397
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@45
    invoke-virtual {v5, v4}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    #@48
    .line 1335
    :cond_2
    return-void

    #@49
    .line 1357
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4c
    move-result-object v0

    #@4d
    .line 1358
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@50
    move-result-object v2

    #@51
    .line 1359
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@53
    .line 1360
    if-nez v2, :cond_4

    #@55
    .line 1361
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@58
    move-result v4

    #@59
    goto :goto_0

    #@5a
    .line 1362
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@5c
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@5e
    if-gtz v5, :cond_9

    #@60
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@62
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@64
    if-gtz v5, :cond_9

    #@66
    .line 1363
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@68
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@6a
    if-gtz v5, :cond_9

    #@6c
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@6e
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@70
    if-gtz v5, :cond_9

    #@72
    .line 1366
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@75
    move-result v3

    #@76
    .line 1367
    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@79
    move-result v1

    #@7a
    .line 1370
    .local v1, "bop":I
    if-eq v3, v10, :cond_5

    #@7c
    if-ne v1, v10, :cond_6

    #@7e
    .line 1371
    :cond_5
    const/4 v4, -0x1

    #@7f
    .line 1370
    goto :goto_0

    #@80
    .line 1372
    :cond_6
    if-nez v3, :cond_7

    #@82
    .line 1373
    move v4, v1

    #@83
    goto :goto_0

    #@84
    .line 1374
    :cond_7
    if-nez v1, :cond_8

    #@86
    .line 1375
    move v4, v3

    #@87
    goto :goto_0

    #@88
    .line 1377
    :cond_8
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    #@8b
    move-result v4

    #@8c
    goto :goto_0

    #@8d
    .line 1385
    .end local v1    # "bop":I
    .end local v3    # "fop":I
    :cond_9
    const/4 v4, -0x3

    #@8e
    goto :goto_0
.end method

.method private endOnGoingFadeAnimation()V
    .locals 1

    #@0
    .prologue
    .line 1640
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1641
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    #@9
    .line 1639
    :cond_0
    return-void
.end method

.method private static enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "windowTranslucent"    # Z

    #@0
    .prologue
    const/16 v6, 0xff

    #@2
    .line 1928
    if-nez p1, :cond_0

    #@4
    instance-of v3, p0, Landroid/graphics/drawable/ColorDrawable;

    #@6
    if-eqz v3, :cond_0

    #@8
    move-object v1, p0

    #@9
    .line 1929
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    #@b
    .line 1930
    .local v1, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@e
    move-result v0

    #@f
    .line 1931
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    #@12
    move-result v3

    #@13
    if-eq v3, v6, :cond_0

    #@15
    .line 1932
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    #@23
    .line 1935
    .local v2, "copy":Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    #@26
    move-result v3

    #@27
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    #@2a
    move-result v4

    #@2b
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    #@2e
    move-result v5

    #@2f
    invoke-static {v6, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    #@32
    move-result v3

    #@33
    .line 1934
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    #@36
    .line 1936
    return-object v2

    #@37
    .line 1939
    .end local v0    # "color":I
    .end local v1    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v2    # "copy":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    return-object p0
.end method

.method static getColorViewBottomInset(II)I
    .locals 1
    .param p0, "stableBottom"    # I
    .param p1, "systemBottom"    # I

    #@0
    .prologue
    .line 987
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static getColorViewRightInset(II)I
    .locals 1
    .param p0, "stableRight"    # I
    .param p1, "systemRight"    # I

    #@0
    .prologue
    .line 991
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static getColorViewTopInset(II)I
    .locals 1
    .param p0, "stableTop"    # I
    .param p1, "systemTop"    # I

    #@0
    .prologue
    .line 983
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;

    #@0
    .prologue
    .line 1113
    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1114
    iget v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    #@6
    return v0

    #@7
    .line 1116
    :cond_0
    const/4 v0, 0x0

    #@8
    return v0
.end method

.method static getNavBarSize(II)I
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I

    #@0
    .prologue
    .line 999
    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p1    # "rightInset":I
    :goto_0
    return p1

    #@7
    .restart local p1    # "rightInset":I
    :cond_0
    move p1, p0

    #@8
    goto :goto_0
.end method

.method public static getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundRes"    # I
    .param p2, "backgroundFallbackRes"    # I
    .param p3, "windowTranslucent"    # Z

    #@0
    .prologue
    .line 1906
    if-eqz p1, :cond_0

    #@2
    .line 1907
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    .line 1908
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@8
    .line 1909
    invoke-static {v0, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 1913
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p2, :cond_1

    #@f
    .line 1914
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v1

    #@13
    .line 1915
    .local v1, "fallbackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    #@15
    .line 1916
    invoke-static {v1, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 1919
    .end local v1    # "fallbackDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    #@1c
    const/high16 v3, -0x1000000

    #@1e
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@21
    return-object v2
.end method

.method private getStackId()I
    .locals 5

    #@0
    .prologue
    .line 1949
    const/4 v2, -0x1

    #@1
    .line 1950
    .local v2, "workspaceId":I
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@3
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    #@6
    move-result-object v0

    #@7
    .line 1951
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_0

    #@9
    .line 1953
    :try_start_0
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->getWindowStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v2

    #@d
    .line 1958
    :cond_0
    :goto_0
    const/4 v3, -0x1

    #@e
    if-ne v2, v3, :cond_1

    #@10
    .line 1959
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 1954
    :catch_0
    move-exception v1

    #@13
    .line 1955
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    #@15
    const-string/jumbo v4, "Failed to get the workspace ID of a PhoneWindow."

    #@18
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    goto :goto_0

    #@1c
    .line 1961
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    return v2
.end method

.method private static getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 2170
    if-nez p0, :cond_0

    #@2
    .line 2171
    const-string/jumbo v1, ""

    #@5
    return-object v1

    #@6
    .line 2173
    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "\\."

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 2174
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    #@16
    if-lez v1, :cond_1

    #@18
    .line 2175
    array-length v1, v0

    #@19
    add-int/lit8 v1, v1, -0x1

    #@1b
    aget-object v1, v0, v1

    #@1d
    return-object v1

    #@1e
    .line 2177
    :cond_1
    const-string/jumbo v1, ""

    #@21
    return-object v1
.end method

.method private inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    #@0
    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 1848
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@7
    move-result-object p1

    #@8
    .line 1849
    const v2, 0x109004f

    #@b
    .line 1850
    const/4 v3, 0x0

    #@c
    .line 1849
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/internal/widget/DecorCaptionView;

    #@12
    .line 1851
    .local v1, "view":Lcom/android/internal/widget/DecorCaptionView;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    #@15
    .line 1852
    return-object v1
.end method

.method private initResizingPaints()V
    .locals 12

    #@0
    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 2054
    const v1, 0x1060073

    #@9
    const/4 v2, 0x0

    #@a
    .line 2053
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    #@d
    move-result v10

    #@e
    .line 2055
    .local v10, "startColor":I
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v0

    #@14
    .line 2056
    const v1, 0x1060074

    #@17
    const/4 v2, 0x0

    #@18
    .line 2055
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    #@1b
    move-result v8

    #@1c
    .line 2057
    .local v8, "endColor":I
    add-int v0, v10, v8

    #@1e
    div-int/lit8 v9, v0, 0x2

    #@20
    .line 2058
    .local v9, "middleColor":I
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    #@22
    new-instance v0, Landroid/graphics/LinearGradient;

    #@24
    .line 2059
    const/4 v1, 0x0

    #@25
    const/4 v2, 0x0

    #@26
    const/4 v3, 0x0

    #@27
    iget v4, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    #@29
    int-to-float v4, v4

    #@2a
    const/4 v5, 0x3

    #@2b
    new-array v5, v5, [I

    #@2d
    const/4 v6, 0x0

    #@2e
    aput v10, v5, v6

    #@30
    const/4 v6, 0x1

    #@31
    aput v9, v5, v6

    #@33
    const/4 v6, 0x2

    #@34
    aput v8, v5, v6

    #@36
    .line 2060
    const/4 v6, 0x3

    #@37
    new-array v6, v6, [F

    #@39
    fill-array-data v6, :array_0

    #@3c
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@3e
    .line 2058
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@41
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@44
    .line 2061
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    #@46
    new-instance v0, Landroid/graphics/LinearGradient;

    #@48
    .line 2062
    const/4 v1, 0x0

    #@49
    const/4 v2, 0x0

    #@4a
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    #@4c
    int-to-float v3, v3

    #@4d
    const/4 v4, 0x0

    #@4e
    const/4 v5, 0x3

    #@4f
    new-array v5, v5, [I

    #@51
    const/4 v6, 0x0

    #@52
    aput v10, v5, v6

    #@54
    const/4 v6, 0x1

    #@55
    aput v9, v5, v6

    #@57
    const/4 v6, 0x2

    #@58
    aput v8, v5, v6

    #@5a
    .line 2063
    const/4 v6, 0x3

    #@5b
    new-array v6, v6, [F

    #@5d
    fill-array-data v6, :array_1

    #@60
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@62
    .line 2061
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@65
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@68
    .line 2052
    return-void

    #@69
    .line 2060
    nop

    #@6a
    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    #@74
    .line 2063
    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeElevation()V
    .locals 1

    #@0
    .prologue
    .line 2107
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    #@3
    .line 2108
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    #@6
    .line 2105
    return-void
.end method

.method static isNavBarToRightEdge(II)Z
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 995
    if-nez p0, :cond_0

    #@3
    if-lez p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
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
    .line 432
    if-lt p1, v1, :cond_0

    #@4
    if-ge p2, v1, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v1, v1, 0x5

    #@d
    if-gt p1, v1, :cond_0

    #@f
    .line 433
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

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

.method private isOutOfInnerBounds(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 428
    if-ltz p1, :cond_0

    #@4
    if-gez p2, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    #@a
    move-result v2

    #@b
    if-gt p1, v2, :cond_0

    #@d
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    #@10
    move-result v2

    #@11
    if-gt p2, v2, :cond_0

    #@13
    move v0, v1

    #@14
    goto :goto_0
.end method

.method private isResizing()Z
    .locals 1

    #@0
    .prologue
    .line 2098
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private loadBackgroundDrawablesIfNeeded()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1794
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1795
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    .line 1796
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@b
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@d
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@f
    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@11
    .line 1797
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_3

    #@19
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1b
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    #@1e
    move-result v0

    #@1f
    .line 1795
    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    .line 1798
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@27
    if-nez v0, :cond_0

    #@29
    .line 1801
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Failed to find background drawable for PhoneWindow="

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@46
    if-nez v0, :cond_1

    #@48
    .line 1805
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@4b
    move-result-object v0

    #@4c
    .line 1806
    const v1, 0x1080255

    #@4f
    .line 1805
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@52
    move-result-object v0

    #@53
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@55
    .line 1808
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@57
    if-eqz v0, :cond_2

    #@59
    .line 1809
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@5b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@5e
    move-result-object v0

    #@5f
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    #@61
    .line 1810
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@63
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@66
    .line 1793
    :cond_2
    return-void

    #@67
    .line 1797
    :cond_3
    const/4 v0, 0x1

    #@68
    goto :goto_0
.end method

.method private releaseThreadedRenderer()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2084
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2085
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    #@d
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@10
    .line 2086
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    #@12
    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 2090
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@18
    invoke-virtual {v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    #@1b
    .line 2091
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@1d
    .line 2093
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    #@20
    .line 2083
    :cond_1
    return-void
.end method

.method private setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    #@0
    .prologue
    .line 1894
    const v0, 0x102035e

    #@3
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1895
    const v1, 0x1080259

    #@a
    .line 1894
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    #@d
    .line 1896
    const v0, 0x102035f

    #@10
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v0

    #@14
    .line 1897
    const v1, 0x1080257

    #@17
    .line 1896
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    #@1a
    .line 1893
    return-void
.end method

.method private setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    #@0
    .prologue
    .line 1856
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getDecorCaptionShade()I

    #@5
    move-result v0

    #@6
    .line 1857
    .local v0, "shade":I
    packed-switch v0, :pswitch_data_0

    #@9
    .line 1865
    new-instance v1, Landroid/util/TypedValue;

    #@b
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@e
    .line 1866
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@11
    move-result-object v2

    #@12
    const v3, 0x1010433

    #@15
    const/4 v4, 0x1

    #@16
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@19
    .line 1870
    iget v2, v1, Landroid/util/TypedValue;->data:I

    #@1b
    invoke-static {v2}, Landroid/graphics/Color;->luminance(I)F

    #@1e
    move-result v2

    #@1f
    float-to-double v2, v2

    #@20
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@22
    cmpg-double v2, v2, v4

    #@24
    if-gez v2, :cond_0

    #@26
    .line 1871
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    #@29
    .line 1855
    .end local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    return-void

    #@2a
    .line 1859
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    #@2d
    goto :goto_0

    #@2e
    .line 1862
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    #@31
    goto :goto_0

    #@32
    .line 1873
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    #@35
    goto :goto_0

    #@36
    .line 1857
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setHandledActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 1543
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 1544
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    #@9
    .line 1542
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1545
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x1

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 1546
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    #@14
    goto :goto_0
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 1704
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2
    .line 1705
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    #@4
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@6
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    #@b
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@d
    .line 1706
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@f
    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    #@11
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@13
    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V

    #@16
    .line 1707
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@18
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    #@1b
    .line 1708
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@1d
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@20
    move-result-object v0

    #@21
    .line 1709
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@23
    .line 1708
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@26
    .line 1703
    return-void
.end method

.method private setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    #@3
    .line 1647
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@5
    .line 1648
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@7
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    #@a
    .line 1649
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@c
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    #@11
    .line 1650
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 1651
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    #@17
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    #@1a
    .line 1673
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@1c
    .line 1674
    const/16 v1, 0x20

    #@1e
    .line 1673
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    #@21
    .line 1645
    return-void

    #@22
    .line 1653
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 1654
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@2a
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@2c
    const/4 v2, 0x2

    #@2d
    new-array v2, v2, [F

    #@2f
    fill-array-data v2, :array_0

    #@32
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@38
    .line 1655
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@3a
    new-instance v1, Lcom/android/internal/policy/DecorView$3;

    #@3c
    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;)V

    #@3f
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@42
    .line 1667
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@44
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@47
    goto :goto_0

    #@48
    .line 1669
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@4a
    const/high16 v1, 0x3f800000    # 1.0f

    #@4c
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    #@4f
    .line 1670
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@51
    const/4 v1, 0x0

    #@52
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    #@55
    goto :goto_0

    #@56
    .line 1654
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    #@0
    .prologue
    .line 1887
    const v0, 0x102035e

    #@3
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1888
    const v1, 0x108025a

    #@a
    .line 1887
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    #@d
    .line 1889
    const v0, 0x102035f

    #@10
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v0

    #@14
    .line 1890
    const v1, 0x1080258

    #@17
    .line 1889
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    #@1a
    .line 1886
    return-void
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .locals 8
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 771
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@5
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 772
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@b
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    #@d
    invoke-interface {v3}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    #@10
    .line 773
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@12
    iput-object v6, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    #@14
    .line 777
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@16
    iget-object v0, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    #@18
    .line 778
    .local v0, "callback":Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1a
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@1c
    if-nez v3, :cond_3

    #@1e
    .line 779
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@20
    new-instance v6, Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@22
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@25
    move-result-object v7

    #@26
    invoke-direct {v6, v7}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    #@29
    iput-object v6, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@2b
    .line 780
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2d
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@2f
    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@32
    .line 786
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_1

    #@38
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_4

    #@3e
    :cond_1
    move v2, v4

    #@3f
    .line 787
    .local v2, "isPopup":Z
    :goto_1
    if-eqz v2, :cond_5

    #@41
    .line 788
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@43
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@45
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v3, v6, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    #@4c
    move-result-object v1

    #@4d
    .line 793
    .local v1, "helper":Lcom/android/internal/view/menu/MenuHelper;
    :goto_2
    if-eqz v1, :cond_2

    #@4f
    .line 797
    if-eqz v2, :cond_6

    #@51
    move v3, v4

    #@52
    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    #@55
    .line 798
    invoke-interface {v1, v0}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@58
    .line 801
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@5a
    iput-object v1, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    #@5c
    .line 802
    if-eqz v1, :cond_7

    #@5e
    :goto_4
    return v5

    #@5f
    .line 782
    .end local v1    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    .end local v2    # "isPopup":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@61
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@63
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    #@66
    goto :goto_0

    #@67
    :cond_4
    move v2, v5

    #@68
    .line 786
    goto :goto_1

    #@69
    .line 790
    .restart local v2    # "isPopup":Z
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@6b
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@6d
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v3, p1, v6}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    #@74
    move-result-object v1

    #@75
    .restart local v1    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    goto :goto_2

    #@76
    :cond_6
    move v3, v5

    #@77
    .line 797
    goto :goto_3

    #@78
    :cond_7
    move v5, v4

    #@79
    .line 802
    goto :goto_4
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    #@0
    .prologue
    .line 829
    new-instance v3, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    #@2
    invoke-direct {v3, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    #@5
    .line 830
    .local v3, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v2, 0x0

    #@6
    .line 831
    .local v2, "mode":Landroid/view/ActionMode;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@8
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@b
    move-result-object v4

    #@c
    if-eqz v4, :cond_0

    #@e
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@10
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_3

    #@16
    .line 846
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    #@18
    .line 847
    invoke-virtual {v2}, Landroid/view/ActionMode;->getType()I

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_4

    #@1e
    .line 848
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    #@21
    .line 849
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@23
    .line 864
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    #@25
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@27
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@2a
    move-result-object v4

    #@2b
    if-eqz v4, :cond_2

    #@2d
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2f
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_8

    #@35
    .line 871
    :cond_2
    :goto_2
    return-object v2

    #@36
    .line 833
    .restart local v2    # "mode":Landroid/view/ActionMode;
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

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
    .line 834
    .local v2, "mode":Landroid/view/ActionMode;
    :catch_0
    move-exception v0

    #@42
    .line 836
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_0

    #@44
    .line 838
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

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
    .line 850
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
    .line 851
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@58
    if-eqz v4, :cond_5

    #@5a
    .line 852
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@5c
    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    #@5f
    .line 854
    :cond_5
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@61
    goto :goto_1

    #@62
    .line 857
    :cond_6
    invoke-direct {p0, p3, v3, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    #@65
    move-result-object v2

    #@66
    .line 858
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
    .line 859
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    #@75
    goto :goto_1

    #@76
    .line 861
    :cond_7
    const/4 v2, 0x0

    #@77
    .local v2, "mode":Landroid/view/ActionMode;
    goto :goto_1

    #@78
    .line 866
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_8
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

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
    .line 867
    :catch_1
    move-exception v0

    #@83
    .restart local v0    # "ame":Ljava/lang/AbstractMethodError;
    goto :goto_2

    #@84
    .line 840
    .restart local v2    # "mode":Landroid/view/ActionMode;
    :catch_2
    move-exception v1

    #@85
    .local v1, "ame2":Ljava/lang/AbstractMethodError;
    goto :goto_0
.end method

.method private updateAvailableWidth()V
    .locals 4

    #@0
    .prologue
    .line 2186
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 2188
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v1

    #@8
    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@a
    int-to-float v1, v1

    #@b
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@e
    move-result-object v2

    #@f
    .line 2187
    const/4 v3, 0x1

    #@10
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@13
    move-result v1

    #@14
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    #@16
    .line 2185
    return-void
.end method

.method private updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZIZZ)V
    .locals 14
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "rightMargin"    # I
    .param p7, "animate"    # Z
    .param p8, "force"    # Z

    #@0
    .prologue
    .line 1134
    iget v11, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->systemUiHideFlag:I

    #@2
    and-int v11, v11, p2

    #@4
    if-nez v11, :cond_5

    #@6
    .line 1135
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@8
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@b
    move-result-object v11

    #@c
    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@e
    iget v12, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->hideWindowFlag:I

    #@10
    and-int/2addr v11, v12

    #@11
    if-nez v11, :cond_5

    #@13
    .line 1136
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@15
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@18
    move-result-object v11

    #@19
    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1b
    const/high16 v12, -0x80000000

    #@1d
    and-int/2addr v11, v12

    #@1e
    if-nez v11, :cond_4

    #@20
    move/from16 v11, p8

    #@22
    .line 1134
    :goto_0
    iput-boolean v11, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    #@24
    .line 1138
    iget-boolean v11, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    #@26
    if-eqz v11, :cond_7

    #@28
    .line 1139
    const/high16 v11, -0x1000000

    #@2a
    and-int v11, v11, p3

    #@2c
    if-eqz v11, :cond_7

    #@2e
    .line 1140
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@30
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@33
    move-result-object v11

    #@34
    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@36
    iget v12, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->translucentFlag:I

    #@38
    and-int/2addr v11, v12

    #@39
    if-eqz v11, :cond_6

    #@3b
    .end local p8    # "force":Z
    :goto_1
    move/from16 v6, p8

    #@3d
    .line 1141
    .local v6, "show":Z
    :goto_2
    if-eqz v6, :cond_0

    #@3f
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    #@42
    move-result v11

    #@43
    if-eqz v11, :cond_8

    #@45
    :cond_0
    const/4 v7, 0x0

    #@46
    .line 1143
    .local v7, "showView":Z
    :goto_3
    const/4 v10, 0x0

    #@47
    .line 1144
    .local v10, "visibilityChanged":Z
    iget-object v8, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@49
    .line 1146
    .local v8, "view":Landroid/view/View;
    if-eqz p5, :cond_9

    #@4b
    const/4 v4, -0x1

    #@4c
    .line 1147
    .local v4, "resolvedHeight":I
    :goto_4
    if-eqz p5, :cond_a

    #@4e
    move/from16 v5, p4

    #@50
    .line 1148
    .local v5, "resolvedWidth":I
    :goto_5
    if-eqz p5, :cond_b

    #@52
    iget v3, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->horizontalGravity:I

    #@54
    .line 1150
    .local v3, "resolvedGravity":I
    :goto_6
    if-nez v8, :cond_c

    #@56
    .line 1151
    if-eqz v7, :cond_1

    #@58
    .line 1152
    new-instance v8, Landroid/view/View;

    #@5a
    .end local v8    # "view":Landroid/view/View;
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@5c
    invoke-direct {v8, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@5f
    .restart local v8    # "view":Landroid/view/View;
    iput-object v8, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@61
    .line 1153
    move/from16 v0, p3

    #@63
    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    #@66
    .line 1154
    iget-object v11, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->transitionName:Ljava/lang/String;

    #@68
    invoke-virtual {v8, v11}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    #@6b
    .line 1155
    iget v11, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->id:I

    #@6d
    invoke-virtual {v8, v11}, Landroid/view/View;->setId(I)V

    #@70
    .line 1156
    const/4 v10, 0x1

    #@71
    .line 1157
    const/4 v11, 0x4

    #@72
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    #@75
    .line 1158
    const/4 v11, 0x0

    #@76
    iput v11, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    #@78
    .line 1160
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    #@7a
    invoke-direct {v2, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@7d
    .line 1162
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, p6

    #@7f
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@81
    .line 1163
    invoke-virtual {p0, v8, v2}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@84
    .line 1164
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    #@87
    .line 1183
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_7
    if-eqz v10, :cond_3

    #@89
    .line 1184
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@8c
    move-result-object v11

    #@8d
    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->cancel()V

    #@90
    .line 1185
    if-eqz p7, :cond_2

    #@92
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    #@95
    move-result v11

    #@96
    if-eqz v11, :cond_12

    #@98
    .line 1205
    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    #@9a
    invoke-virtual {v8, v11}, Landroid/view/View;->setAlpha(F)V

    #@9d
    .line 1206
    if-eqz v7, :cond_15

    #@9f
    const/4 v11, 0x0

    #@a0
    :goto_8
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    #@a3
    .line 1209
    :cond_3
    :goto_9
    iput-boolean v6, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    #@a5
    .line 1210
    move/from16 v0, p3

    #@a7
    iput v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    #@a9
    .line 1133
    return-void

    #@aa
    .line 1136
    .end local v3    # "resolvedGravity":I
    .end local v4    # "resolvedHeight":I
    .end local v5    # "resolvedWidth":I
    .end local v6    # "show":Z
    .end local v7    # "showView":Z
    .end local v8    # "view":Landroid/view/View;
    .end local v10    # "visibilityChanged":Z
    .restart local p8    # "force":Z
    :cond_4
    const/4 v11, 0x1

    #@ab
    goto/16 :goto_0

    #@ad
    .line 1134
    :cond_5
    const/4 v11, 0x0

    #@ae
    goto/16 :goto_0

    #@b0
    .line 1140
    :cond_6
    const/16 p8, 0x1

    #@b2
    goto :goto_1

    #@b3
    .line 1138
    :cond_7
    const/4 v6, 0x0

    #@b4
    goto :goto_2

    #@b5
    .line 1141
    .end local p8    # "force":Z
    .restart local v6    # "show":Z
    :cond_8
    if-lez p4, :cond_0

    #@b7
    const/4 v7, 0x1

    #@b8
    .restart local v7    # "showView":Z
    goto :goto_3

    #@b9
    .line 1146
    .restart local v8    # "view":Landroid/view/View;
    .restart local v10    # "visibilityChanged":Z
    :cond_9
    move/from16 v4, p4

    #@bb
    .restart local v4    # "resolvedHeight":I
    goto :goto_4

    #@bc
    .line 1147
    :cond_a
    const/4 v5, -0x1

    #@bd
    .restart local v5    # "resolvedWidth":I
    goto :goto_5

    #@be
    .line 1148
    :cond_b
    iget v3, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->verticalGravity:I

    #@c0
    .restart local v3    # "resolvedGravity":I
    goto :goto_6

    #@c1
    .line 1167
    :cond_c
    if-eqz v7, :cond_f

    #@c3
    const/4 v9, 0x0

    #@c4
    .line 1168
    .local v9, "vis":I
    :goto_a
    iget v11, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    #@c6
    if-eq v11, v9, :cond_10

    #@c8
    const/4 v10, 0x1

    #@c9
    .line 1169
    :goto_b
    iput v9, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    #@cb
    .line 1170
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@ce
    move-result-object v2

    #@cf
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    #@d1
    .line 1171
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v11, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@d3
    if-ne v11, v4, :cond_d

    #@d5
    iget v11, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@d7
    if-eq v11, v5, :cond_11

    #@d9
    .line 1173
    :cond_d
    :goto_c
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@db
    .line 1174
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@dd
    .line 1175
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@df
    .line 1176
    move/from16 v0, p6

    #@e1
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@e3
    .line 1177
    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@e6
    .line 1179
    :cond_e
    if-eqz v7, :cond_1

    #@e8
    .line 1180
    move/from16 v0, p3

    #@ea
    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    #@ed
    goto :goto_7

    #@ee
    .line 1167
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "vis":I
    :cond_f
    const/4 v9, 0x4

    #@ef
    .restart local v9    # "vis":I
    goto :goto_a

    #@f0
    .line 1168
    :cond_10
    const/4 v10, 0x0

    #@f1
    goto :goto_b

    #@f2
    .line 1172
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_11
    iget v11, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@f4
    if-ne v11, v3, :cond_d

    #@f6
    iget v11, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@f8
    move/from16 v0, p6

    #@fa
    if-eq v11, v0, :cond_e

    #@fc
    goto :goto_c

    #@fd
    .line 1186
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "vis":I
    :cond_12
    if-eqz v7, :cond_14

    #@ff
    .line 1187
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    #@102
    move-result v11

    #@103
    if-eqz v11, :cond_13

    #@105
    .line 1188
    const/4 v11, 0x0

    #@106
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    #@109
    .line 1189
    const/4 v11, 0x0

    #@10a
    invoke-virtual {v8, v11}, Landroid/view/View;->setAlpha(F)V

    #@10d
    .line 1191
    :cond_13
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@110
    move-result-object v11

    #@111
    const/high16 v12, 0x3f800000    # 1.0f

    #@113
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@116
    move-result-object v11

    #@117
    iget-object v12, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    #@119
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@11c
    move-result-object v11

    #@11d
    .line 1192
    iget v12, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    #@11f
    int-to-long v12, v12

    #@120
    .line 1191
    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@123
    goto :goto_9

    #@124
    .line 1194
    :cond_14
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@127
    move-result-object v11

    #@128
    const/4 v12, 0x0

    #@129
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@12c
    move-result-object v11

    #@12d
    iget-object v12, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    #@12f
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@132
    move-result-object v11

    #@133
    .line 1195
    iget v12, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    #@135
    int-to-long v12, v12

    #@136
    .line 1194
    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@139
    move-result-object v11

    #@13a
    .line 1196
    new-instance v12, Lcom/android/internal/policy/DecorView$1;

    #@13c
    invoke-direct {v12, p0, p1}, Lcom/android/internal/policy/DecorView$1;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;)V

    #@13f
    .line 1194
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    #@142
    goto/16 :goto_9

    #@144
    .line 1206
    :cond_15
    const/4 v11, 0x4

    #@145
    goto/16 :goto_8
.end method

.method private updateColorViewTranslations()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1216
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    #@3
    .line 1217
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@5
    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1218
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@b
    iget-object v3, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

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
    .line 1220
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@16
    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1221
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@1c
    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@1e
    if-gez v0, :cond_3

    #@20
    .end local v0    # "rootScrollY":I
    :goto_1
    int-to-float v2, v0

    #@21
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    #@24
    .line 1213
    :cond_1
    return-void

    #@25
    .restart local v0    # "rootScrollY":I
    :cond_2
    move v1, v2

    #@26
    .line 1218
    goto :goto_0

    #@27
    :cond_3
    move v0, v2

    #@28
    .line 1221
    goto :goto_1
.end method

.method private updateElevation()V
    .locals 4

    #@0
    .prologue
    .line 2112
    const/4 v0, 0x0

    #@1
    .line 2113
    .local v0, "elevation":F
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    #@3
    .line 2116
    .local v1, "wasAdjustedForStack":Z
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@5
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->hasWindowShadow(I)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_3

    #@11
    .line 2130
    :cond_0
    const/4 v2, 0x0

    #@12
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    #@14
    .line 2135
    :goto_0
    if-nez v1, :cond_1

    #@16
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 2136
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    #@1d
    move-result v2

    #@1e
    cmpl-float v2, v2, v0

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 2137
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@24
    invoke-virtual {v2, v0}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    #@27
    .line 2111
    :cond_2
    return-void

    #@28
    .line 2117
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_5

    #@2e
    .line 2118
    const/16 v2, 0x14

    #@30
    .line 2117
    :goto_1
    int-to-float v0, v2

    #@31
    .line 2123
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    #@33
    if-nez v2, :cond_4

    #@35
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@37
    const/4 v3, 0x4

    #@38
    if-eq v2, v3, :cond_4

    #@3a
    .line 2124
    const/high16 v0, 0x41a00000    # 20.0f

    #@3c
    .line 2127
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    #@3f
    move-result v0

    #@40
    .line 2128
    const/4 v2, 0x1

    #@41
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    #@43
    goto :goto_0

    #@44
    .line 2118
    :cond_5
    const/4 v2, 0x5

    #@45
    goto :goto_1
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)V
    .locals 8
    .param p1, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    .line 1297
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

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
    .line 1299
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@e
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1300
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@14
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@16
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object v2

    #@1a
    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 1302
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@20
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@22
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@28
    .line 1303
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@2b
    move-result v2

    #@2c
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@2e
    .line 1304
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@30
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@32
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@35
    .line 1308
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@37
    if-nez v2, :cond_2

    #@39
    .line 1309
    new-instance v2, Landroid/view/View;

    #@3b
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@3d
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@40
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@42
    .line 1310
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@44
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@46
    .line 1311
    const v4, 0x1060032

    #@49
    .line 1310
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    #@4c
    move-result v3

    #@4d
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    #@50
    .line 1312
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@52
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@54
    iget-object v3, v3, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@56
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    #@59
    move-result v3

    #@5a
    .line 1313
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    #@5c
    .line 1314
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@5f
    move-result v5

    #@60
    .line 1313
    const/4 v6, -0x1

    #@61
    .line 1315
    const v7, 0x800053

    #@64
    .line 1313
    invoke-direct {v4, v6, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@67
    .line 1312
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@6a
    .line 1321
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->updateNavigationGuardColor()V

    #@6d
    .line 1295
    :cond_1
    return-void

    #@6e
    .line 1317
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@70
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@73
    move-result-object v0

    #@74
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@76
    .line 1318
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@79
    move-result v2

    #@7a
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@7c
    .line 1319
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@7e
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@81
    goto :goto_0
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 14
    .param p1, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1226
    const/4 v6, 0x0

    #@2
    .line 1228
    .local v6, "showStatusGuard":Z
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@4
    if-eqz v7, :cond_3

    #@6
    .line 1229
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@8
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b
    move-result-object v7

    #@c
    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    if-eqz v7, :cond_3

    #@10
    .line 1232
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@12
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v1

    #@16
    .line 1231
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@18
    .line 1233
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    #@19
    .line 1234
    .local v2, "mlpChanged":Z
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@1b
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_a

    #@21
    .line 1235
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    #@23
    if-nez v7, :cond_0

    #@25
    .line 1236
    new-instance v7, Landroid/graphics/Rect;

    #@27
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    #@2a
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    #@2c
    .line 1238
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    #@2e
    .line 1242
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@30
    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@32
    invoke-virtual {v7, p1, v5}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    #@35
    .line 1243
    iget v7, v5, Landroid/graphics/Rect;->top:I

    #@37
    if-nez v7, :cond_5

    #@39
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@3c
    move-result v3

    #@3d
    .line 1244
    .local v3, "newMargin":I
    :goto_0
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@3f
    if-eq v7, v3, :cond_1

    #@41
    .line 1245
    const/4 v2, 0x1

    #@42
    .line 1246
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@45
    move-result v7

    #@46
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@48
    .line 1248
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@4a
    if-nez v7, :cond_6

    #@4c
    .line 1249
    new-instance v7, Landroid/view/View;

    #@4e
    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@50
    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@53
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@55
    .line 1250
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@57
    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@59
    .line 1251
    const v10, 0x1060032

    #@5c
    .line 1250
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    #@5f
    move-result v9

    #@60
    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    #@63
    .line 1252
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@65
    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@67
    iget-object v9, v9, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@69
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    #@6c
    move-result v9

    #@6d
    .line 1253
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    #@6f
    .line 1254
    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@71
    .line 1253
    const/4 v12, -0x1

    #@72
    .line 1254
    const v13, 0x800033

    #@75
    .line 1253
    invoke-direct {v10, v12, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@78
    .line 1252
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@7b
    .line 1267
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@7d
    if-eqz v7, :cond_7

    #@7f
    const/4 v6, 0x1

    #@80
    .line 1273
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@82
    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeaturesPrivate()I

    #@85
    move-result v7

    #@86
    and-int/lit16 v7, v7, 0x400

    #@88
    if-nez v7, :cond_8

    #@8a
    const/4 v4, 0x1

    #@8b
    .line 1276
    .local v4, "nonOverlay":Z
    :goto_3
    if-eqz v4, :cond_9

    #@8d
    move v7, v6

    #@8e
    .line 1275
    :goto_4
    invoke-virtual {p1, v8, v7, v8, v8}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    #@91
    move-result-object p1

    #@92
    .line 1284
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    #@94
    .line 1285
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@96
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@99
    .line 1289
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@9b
    if-eqz v7, :cond_4

    #@9d
    .line 1290
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@9f
    if-eqz v6, :cond_b

    #@a1
    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    #@a4
    .line 1292
    :cond_4
    return-object p1

    #@a5
    .line 1243
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "mlpChanged":Z
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x0

    #@a6
    .restart local v3    # "newMargin":I
    goto :goto_0

    #@a7
    .line 1257
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@a9
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@ac
    move-result-object v0

    #@ad
    .line 1256
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@af
    .line 1258
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@b1
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@b3
    if-eq v7, v9, :cond_1

    #@b5
    .line 1259
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@b7
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@b9
    .line 1260
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@bb
    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@be
    goto :goto_1

    #@bf
    .line 1267
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    #@c0
    goto :goto_2

    #@c1
    :cond_8
    move v4, v8

    #@c2
    .line 1273
    goto :goto_3

    #@c3
    .restart local v4    # "nonOverlay":Z
    :cond_9
    move v7, v8

    #@c4
    .line 1276
    goto :goto_4

    #@c5
    .line 1279
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@c7
    if-eqz v7, :cond_2

    #@c9
    .line 1280
    const/4 v2, 0x1

    #@ca
    .line 1281
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@cc
    goto :goto_5

    #@cd
    .line 1290
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_b
    const/16 v8, 0x8

    #@cf
    goto :goto_6
.end method


# virtual methods
.method clearContentView()V
    .locals 3

    #@0
    .prologue
    .line 1965
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 1966
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@6
    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->removeContentView()V

    #@9
    .line 1964
    :cond_0
    return-void

    #@a
    .line 1970
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    #@d
    move-result v2

    #@e
    add-int/lit8 v0, v2, -0x1

    #@10
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@12
    .line 1971
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    .line 1972
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@18
    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@1a
    if-eq v1, v2, :cond_2

    #@1c
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@1e
    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@20
    if-eq v1, v2, :cond_2

    #@22
    .line 1973
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@24
    if-eq v1, v2, :cond_2

    #@26
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@28
    if-eq v1, v2, :cond_2

    #@2a
    .line 1974
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    #@2d
    .line 1970
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 386
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 387
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v1

    #@14
    .line 386
    :goto_0
    return v1

    #@15
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@17
    if-gez v1, :cond_0

    #@19
    .line 387
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
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 292
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v4

    #@6
    .line 293
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@9
    move-result v0

    #@a
    .line 294
    .local v0, "action":I
    if-nez v0, :cond_0

    #@c
    move v3, v5

    #@d
    .line 296
    .local v3, "isDown":Z
    :goto_0
    if-eqz v3, :cond_2

    #@f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@12
    move-result v7

    #@13
    if-nez v7, :cond_2

    #@15
    .line 299
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@17
    iget v7, v7, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@19
    if-lez v7, :cond_1

    #@1b
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1d
    iget v7, v7, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@1f
    if-eq v7, v4, :cond_1

    #@21
    .line 300
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@24
    move-result v2

    #@25
    .line 301
    .local v2, "handled":Z
    if-eqz v2, :cond_1

    #@27
    .line 302
    return v5

    #@28
    .end local v2    # "handled":Z
    .end local v3    # "isDown":Z
    :cond_0
    move v3, v6

    #@29
    .line 294
    goto :goto_0

    #@2a
    .line 308
    .restart local v3    # "isDown":Z
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2c
    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@2e
    if-eqz v7, :cond_2

    #@30
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@32
    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@34
    iget-boolean v7, v7, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    #@36
    if-eqz v7, :cond_2

    #@38
    .line 309
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@3a
    iget-object v8, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@3c
    iget-object v8, v8, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@3e
    invoke-virtual {v7, v8, v4, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    #@41
    move-result v6

    #@42
    if-eqz v6, :cond_2

    #@44
    .line 310
    return v5

    #@45
    .line 315
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@47
    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@4a
    move-result v6

    #@4b
    if-nez v6, :cond_4

    #@4d
    .line 316
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@4f
    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@52
    move-result-object v1

    #@53
    .line 317
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_3

    #@55
    iget v6, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@57
    if-gez v6, :cond_3

    #@59
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@5c
    move-result v2

    #@5d
    .line 319
    .restart local v2    # "handled":Z
    :goto_1
    if-eqz v2, :cond_4

    #@5f
    .line 320
    return v5

    #@60
    .line 318
    .end local v2    # "handled":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@63
    move-result v2

    #@64
    goto :goto_1

    #@65
    .line 324
    .end local v1    # "cb":Landroid/view/Window$Callback;
    :cond_4
    if-eqz v3, :cond_5

    #@67
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@69
    iget v6, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@6b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@6e
    move-result v7

    #@6f
    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    #@72
    move-result v5

    #@73
    :goto_2
    return v5

    #@74
    .line 325
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@76
    iget v6, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@7b
    move-result v7

    #@7c
    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    #@7f
    move-result v5

    #@80
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
    .line 332
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@4
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 333
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@a
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@c
    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@11
    move-result v5

    #@12
    invoke-virtual {v3, v4, v5, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    #@15
    move-result v1

    #@16
    .line 335
    .local v1, "handled":Z
    if-eqz v1, :cond_1

    #@18
    .line 336
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1a
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 337
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@20
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@22
    iput-boolean v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@24
    .line 339
    :cond_0
    return v6

    #@25
    .line 344
    .end local v1    # "handled":Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@27
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@2a
    move-result-object v0

    #@2b
    .line 345
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    #@2d
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2f
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_3

    #@35
    .line 346
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@38
    move-result v1

    #@39
    .line 347
    .restart local v1    # "handled":Z
    :goto_0
    if-eqz v1, :cond_4

    #@3b
    .line 348
    return v6

    #@3c
    .line 345
    .end local v1    # "handled":Z
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@3e
    if-gez v3, :cond_2

    #@40
    .line 346
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@43
    move-result v1

    #@44
    goto :goto_0

    #@45
    .line 356
    .restart local v1    # "handled":Z
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@47
    invoke-virtual {v3, v7, v7}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4a
    move-result-object v2

    #@4b
    .line 357
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_5

    #@4d
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@4f
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@51
    if-nez v3, :cond_5

    #@53
    .line 358
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@55
    invoke-virtual {v3, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@58
    .line 359
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@5a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5d
    move-result v4

    #@5e
    invoke-virtual {v3, v2, v4, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    #@61
    move-result v1

    #@62
    .line 361
    iput-boolean v7, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@64
    .line 362
    if-eqz v1, :cond_5

    #@66
    .line 363
    return v6

    #@67
    .line 366
    :cond_5
    return v7
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 554
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 559
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 555
    :cond_1
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 556
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 372
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 373
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v1

    #@14
    .line 372
    :goto_0
    return v1

    #@15
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@17
    if-gez v1, :cond_0

    #@19
    .line 373
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
    .line 378
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 379
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 380
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v1

    #@14
    .line 379
    :goto_0
    return v1

    #@15
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@17
    if-gez v1, :cond_0

    #@19
    .line 380
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
    .line 751
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 754
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@c
    .line 750
    :cond_0
    return-void
.end method

.method enableCaption(Z)V
    .locals 1
    .param p1, "attachedAndVisible"    # Z

    #@0
    .prologue
    .line 1718
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1719
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    #@6
    .line 1720
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1721
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    #@f
    .line 1717
    :cond_0
    return-void
.end method

.method finishChanging()V
    .locals 1

    #@0
    .prologue
    .line 904
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    #@3
    .line 905
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    #@6
    .line 903
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 266
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@2
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    #@5
    move-result v2

    #@6
    .line 267
    .local v2, "statusOpaque":Z
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@8
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    #@b
    move-result v1

    #@c
    .line 268
    .local v1, "navOpaque":Z
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@f
    move-result v0

    #@10
    .line 271
    .local v0, "decorOpaque":Z
    if-nez v2, :cond_0

    #@12
    if-nez v1, :cond_0

    #@14
    .end local v0    # "decorOpaque":Z
    :goto_0
    return v0

    #@15
    .restart local v0    # "decorOpaque":Z
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z
    .locals 1
    .param p1, "colorViewState"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 275
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 279
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@10
    invoke-virtual {v0, p2}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 281
    :cond_0
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method getCaptionHeight()I
    .locals 1

    #@0
    .prologue
    .line 2146
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method isShowingCaption()Z
    .locals 1

    #@0
    .prologue
    .line 2142
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

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

.method public isTransitionGroup()Z
    .locals 1

    #@0
    .prologue
    .line 979
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    const/4 v4, -0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 947
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v0

    #@8
    .line 948
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    #@d
    .line 949
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    and-int/lit16 v1, v1, 0x100

    #@11
    if-nez v1, :cond_1

    #@13
    .line 954
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@15
    if-ne v1, v4, :cond_0

    #@17
    .line 955
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@19
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@1c
    move-result v2

    #@1d
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@1f
    .line 956
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@21
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@24
    move-result v2

    #@25
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@27
    .line 957
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@2a
    move-result v1

    #@2b
    .line 958
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@2e
    move-result v2

    #@2f
    .line 957
    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@32
    move-result-object p1

    #@33
    .line 960
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@35
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@38
    move-result-object v1

    #@39
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@3b
    if-ne v1, v4, :cond_1

    #@3d
    .line 961
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@3f
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@42
    move-result v2

    #@43
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@45
    .line 962
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@47
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@4a
    move-result v2

    #@4b
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@4d
    .line 963
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@50
    move-result v1

    #@51
    .line 964
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@54
    move-result v2

    #@55
    .line 963
    invoke-virtual {p1, v3, v1, v3, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@58
    move-result-object p1

    #@59
    .line 967
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    #@5b
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@62
    .line 968
    const/4 v1, 0x1

    #@63
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@66
    move-result-object p1

    #@67
    .line 969
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@6a
    move-result-object p1

    #@6b
    .line 970
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)V

    #@6e
    .line 971
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@71
    move-result-object v1

    #@72
    if-eqz v1, :cond_2

    #@74
    .line 972
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    #@77
    .line 974
    :cond_2
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    #@0
    .prologue
    .line 1429
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    #@3
    .line 1431
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@5
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@8
    move-result-object v0

    #@9
    .line 1432
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@b
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_3

    #@13
    .line 1436
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@15
    const/4 v2, -0x1

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 1444
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    #@1d
    .line 1447
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    #@1f
    if-nez v1, :cond_4

    #@21
    .line 1450
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    #@28
    .line 1451
    const/4 v1, 0x1

    #@29
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    #@2b
    .line 1428
    :cond_2
    :goto_1
    return-void

    #@2c
    .line 1432
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@2e
    if-gez v1, :cond_0

    #@30
    .line 1433
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    #@33
    goto :goto_0

    #@34
    .line 1452
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@36
    if-eqz v1, :cond_2

    #@38
    .line 1455
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@3a
    invoke-virtual {v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onConfigurationChange()V

    #@3d
    goto :goto_1
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1499
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 1500
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    #@9
    .line 1498
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 1737
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@4
    .line 1738
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getStackId()I

    #@7
    move-result v1

    #@8
    .line 1739
    .local v1, "workspaceId":I
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@a
    if-eq v2, v1, :cond_1

    #@c
    .line 1740
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@e
    .line 1741
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@10
    if-nez v2, :cond_2

    #@12
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@14
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 1743
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1c
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@1f
    move-result-object v0

    #@20
    .line 1744
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    #@23
    move-result-object v2

    #@24
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@26
    .line 1745
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 1746
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@2c
    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    #@2f
    move-result-object v2

    #@30
    if-nez v2, :cond_0

    #@32
    .line 1747
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@34
    .line 1748
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #@36
    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@39
    .line 1747
    const/4 v4, 0x0

    #@3a
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@3d
    .line 1750
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@3f
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    #@42
    .line 1751
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@44
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@46
    .line 1752
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    #@48
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@4b
    .line 1751
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@4e
    .line 1760
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    #@51
    .line 1761
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    #@54
    .line 1736
    return-void

    #@55
    .line 1754
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@57
    if-eqz v2, :cond_1

    #@59
    .line 1756
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@5b
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@5d
    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    #@60
    move-result v3

    #@61
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    #@64
    .line 1757
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    #@67
    move-result v2

    #@68
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    #@6b
    goto :goto_0
.end method

.method public onContentDrawn(IIII)Z
    .locals 1
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "sizeX"    # I
    .param p4, "sizeY"    # I

    #@0
    .prologue
    .line 2029
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2030
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@8
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->onContentDrawn(IIII)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1461
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    #@5
    .line 1463
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@7
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@a
    move-result-object v0

    #@b
    .line 1464
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@d
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@f
    if-gez v2, :cond_0

    #@11
    .line 1465
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    #@14
    .line 1468
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@16
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1469
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1c
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@1e
    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    #@21
    .line 1472
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 1473
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    #@27
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@2a
    .line 1474
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@2c
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_2

    #@32
    .line 1475
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@34
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    #@37
    .line 1477
    :cond_2
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@39
    .line 1479
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@3b
    if-eqz v2, :cond_4

    #@3d
    .line 1480
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@3f
    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    #@42
    .line 1481
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@44
    .line 1484
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@46
    invoke-virtual {v2, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@49
    move-result-object v1

    #@4a
    .line 1485
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5

    #@4c
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4e
    if-eqz v2, :cond_5

    #@50
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@52
    if-gez v2, :cond_5

    #@54
    .line 1486
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@56
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    #@59
    .line 1489
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    #@5c
    .line 1491
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    #@5e
    if-eqz v2, :cond_6

    #@60
    .line 1492
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    #@67
    .line 1493
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    #@69
    .line 1460
    :cond_6
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    #@5
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@7
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@9
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@b
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V

    #@e
    .line 285
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@5
    move-result v0

    #@6
    .line 439
    .local v0, "action":I
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    #@8
    if-eqz v3, :cond_0

    #@a
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 448
    if-nez v0, :cond_0

    #@12
    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@15
    move-result v3

    #@16
    float-to-int v1, v3

    #@17
    .line 450
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1a
    move-result v3

    #@1b
    float-to-int v2, v3

    #@1c
    .line 451
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/DecorView;->isOutOfInnerBounds(II)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 452
    return v5

    #@23
    .line 457
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@25
    if-ltz v3, :cond_1

    #@27
    .line 458
    if-nez v0, :cond_1

    #@29
    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@2c
    move-result v3

    #@2d
    float-to-int v1, v3

    #@2e
    .line 460
    .restart local v1    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@31
    move-result v3

    #@32
    float-to-int v2, v3

    #@33
    .line 461
    .restart local v2    # "y":I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_1

    #@39
    .line 462
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@3b
    iget v4, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@3d
    invoke-virtual {v3, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    #@40
    .line 463
    return v5

    #@41
    .line 469
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_1
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 724
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@4
    .line 725
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getOutsets(Landroid/graphics/Rect;)V

    #@9
    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@b
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@d
    if-lez v0, :cond_0

    #@f
    .line 727
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@11
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@13
    neg-int v0, v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    #@17
    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@19
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@1b
    if-lez v0, :cond_1

    #@1d
    .line 730
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@1f
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@21
    neg-int v0, v0

    #@22
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    #@25
    .line 732
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 733
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@2b
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@2d
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    #@30
    .line 735
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@36
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@38
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    #@3b
    .line 741
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    #@3e
    .line 742
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    #@40
    .line 744
    if-eqz p1, :cond_4

    #@42
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    #@44
    if-ne v0, v1, :cond_4

    #@46
    .line 745
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    #@4d
    .line 723
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

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
    .line 610
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v19

    #@10
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@13
    move-result-object v19

    #@14
    move-object/from16 v0, v19

    #@16
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@18
    move/from16 v19, v0

    #@1a
    const/16 v20, 0x1

    #@1c
    move/from16 v0, v19

    #@1e
    move/from16 v1, v20

    #@20
    if-ne v0, v1, :cond_8

    #@22
    const/4 v7, 0x1

    #@23
    .line 612
    .local v7, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@26
    move-result v17

    #@27
    .line 613
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@2a
    move-result v5

    #@2b
    .line 615
    .local v5, "heightMode":I
    const/4 v2, 0x0

    #@2c
    .line 616
    .local v2, "fixedWidth":Z
    const/16 v19, 0x0

    #@2e
    move/from16 v0, v19

    #@30
    move-object/from16 v1, p0

    #@32
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    #@34
    .line 617
    const/high16 v19, -0x80000000

    #@36
    move/from16 v0, v17

    #@38
    move/from16 v1, v19

    #@3a
    if-ne v0, v1, :cond_0

    #@3c
    .line 618
    if-eqz v7, :cond_9

    #@3e
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@42
    move-object/from16 v19, v0

    #@44
    move-object/from16 v0, v19

    #@46
    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    #@48
    .line 619
    .local v14, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v14, :cond_0

    #@4a
    iget v0, v14, Landroid/util/TypedValue;->type:I

    #@4c
    move/from16 v19, v0

    #@4e
    if-eqz v19, :cond_0

    #@50
    .line 621
    iget v0, v14, Landroid/util/TypedValue;->type:I

    #@52
    move/from16 v19, v0

    #@54
    const/16 v20, 0x5

    #@56
    move/from16 v0, v19

    #@58
    move/from16 v1, v20

    #@5a
    if-ne v0, v1, :cond_a

    #@5c
    .line 622
    invoke-virtual {v14, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@5f
    move-result v19

    #@60
    move/from16 v0, v19

    #@62
    float-to-int v15, v0

    #@63
    .line 629
    .local v15, "w":I
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@66
    move-result v18

    #@67
    .line 630
    .local v18, "widthSize":I
    if-lez v15, :cond_c

    #@69
    .line 632
    move/from16 v0, v18

    #@6b
    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    #@6e
    move-result v19

    #@6f
    const/high16 v20, 0x40000000    # 2.0f

    #@71
    .line 631
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@74
    move-result p1

    #@75
    .line 633
    const/4 v2, 0x1

    #@76
    .line 643
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    .end local v18    # "widthSize":I
    :cond_0
    :goto_3
    const/16 v19, 0x0

    #@78
    move/from16 v0, v19

    #@7a
    move-object/from16 v1, p0

    #@7c
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    #@7e
    .line 644
    const/high16 v19, -0x80000000

    #@80
    move/from16 v0, v19

    #@82
    if-ne v5, v0, :cond_1

    #@84
    .line 645
    if-eqz v7, :cond_d

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@8a
    move-object/from16 v19, v0

    #@8c
    move-object/from16 v0, v19

    #@8e
    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    #@90
    .line 647
    .local v13, "tvh":Landroid/util/TypedValue;
    :goto_4
    if-eqz v13, :cond_1

    #@92
    iget v0, v13, Landroid/util/TypedValue;->type:I

    #@94
    move/from16 v19, v0

    #@96
    if-eqz v19, :cond_1

    #@98
    .line 649
    iget v0, v13, Landroid/util/TypedValue;->type:I

    #@9a
    move/from16 v19, v0

    #@9c
    const/16 v20, 0x5

    #@9e
    move/from16 v0, v19

    #@a0
    move/from16 v1, v20

    #@a2
    if-ne v0, v1, :cond_e

    #@a4
    .line 650
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@a7
    move-result v19

    #@a8
    move/from16 v0, v19

    #@aa
    float-to-int v3, v0

    #@ab
    .line 657
    .local v3, "h":I
    :goto_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@ae
    move-result v6

    #@af
    .line 658
    .local v6, "heightSize":I
    if-lez v3, :cond_10

    #@b1
    .line 660
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    #@b4
    move-result v19

    #@b5
    const/high16 v20, 0x40000000    # 2.0f

    #@b7
    .line 659
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@ba
    move-result p2

    #@bb
    .line 669
    .end local v3    # "h":I
    .end local v6    # "heightSize":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@bf
    move-object/from16 v19, v0

    #@c1
    move-object/from16 v0, p0

    #@c3
    move-object/from16 v1, v19

    #@c5
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->getOutsets(Landroid/graphics/Rect;)V

    #@c8
    .line 670
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@cc
    move-object/from16 v19, v0

    #@ce
    move-object/from16 v0, v19

    #@d0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@d2
    move/from16 v19, v0

    #@d4
    if-gtz v19, :cond_2

    #@d6
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@da
    move-object/from16 v19, v0

    #@dc
    move-object/from16 v0, v19

    #@de
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@e0
    move/from16 v19, v0

    #@e2
    if-lez v19, :cond_3

    #@e4
    .line 671
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@e7
    move-result v11

    #@e8
    .line 672
    .local v11, "mode":I
    if-eqz v11, :cond_3

    #@ea
    .line 673
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@ed
    move-result v4

    #@ee
    .line 675
    .local v4, "height":I
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@f2
    move-object/from16 v19, v0

    #@f4
    move-object/from16 v0, v19

    #@f6
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@f8
    move/from16 v19, v0

    #@fa
    add-int v19, v19, v4

    #@fc
    move-object/from16 v0, p0

    #@fe
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@100
    move-object/from16 v20, v0

    #@102
    move-object/from16 v0, v20

    #@104
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@106
    move/from16 v20, v0

    #@108
    add-int v19, v19, v20

    #@10a
    .line 674
    move/from16 v0, v19

    #@10c
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@10f
    move-result p2

    #@110
    .line 678
    .end local v4    # "height":I
    .end local v11    # "mode":I
    :cond_3
    move-object/from16 v0, p0

    #@112
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@114
    move-object/from16 v19, v0

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
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@122
    move-object/from16 v19, v0

    #@124
    move-object/from16 v0, v19

    #@126
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@128
    move/from16 v19, v0

    #@12a
    if-lez v19, :cond_5

    #@12c
    .line 679
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@12f
    move-result v11

    #@130
    .line 680
    .restart local v11    # "mode":I
    if-eqz v11, :cond_5

    #@132
    .line 681
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@135
    move-result v16

    #@136
    .line 683
    .local v16, "width":I
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@13a
    move-object/from16 v19, v0

    #@13c
    move-object/from16 v0, v19

    #@13e
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@140
    move/from16 v19, v0

    #@142
    add-int v19, v19, v16

    #@144
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@148
    move-object/from16 v20, v0

    #@14a
    move-object/from16 v0, v20

    #@14c
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@14e
    move/from16 v20, v0

    #@150
    add-int v19, v19, v20

    #@152
    .line 682
    move/from16 v0, v19

    #@154
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@157
    move-result p1

    #@158
    .line 687
    .end local v11    # "mode":I
    .end local v16    # "width":I
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@15b
    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    #@15e
    move-result v16

    #@15f
    .line 690
    .restart local v16    # "width":I
    const/4 v8, 0x0

    #@160
    .line 692
    .local v8, "measure":Z
    const/high16 v19, 0x40000000    # 2.0f

    #@162
    move/from16 v0, v16

    #@164
    move/from16 v1, v19

    #@166
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@169
    move-result p1

    #@16a
    .line 694
    if-nez v2, :cond_6

    #@16c
    const/high16 v19, -0x80000000

    #@16e
    move/from16 v0, v17

    #@170
    move/from16 v1, v19

    #@172
    if-ne v0, v1, :cond_6

    #@174
    .line 695
    if-eqz v7, :cond_11

    #@176
    move-object/from16 v0, p0

    #@178
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@17a
    move-object/from16 v19, v0

    #@17c
    move-object/from16 v0, v19

    #@17e
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    #@180
    .line 696
    .local v12, "tv":Landroid/util/TypedValue;
    :goto_7
    iget v0, v12, Landroid/util/TypedValue;->type:I

    #@182
    move/from16 v19, v0

    #@184
    if-eqz v19, :cond_6

    #@186
    .line 698
    iget v0, v12, Landroid/util/TypedValue;->type:I

    #@188
    move/from16 v19, v0

    #@18a
    const/16 v20, 0x5

    #@18c
    move/from16 v0, v19

    #@18e
    move/from16 v1, v20

    #@190
    if-ne v0, v1, :cond_12

    #@192
    .line 699
    invoke-virtual {v12, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@195
    move-result v19

    #@196
    move/from16 v0, v19

    #@198
    float-to-int v10, v0

    #@199
    .line 708
    .local v10, "min":I
    :goto_8
    move/from16 v0, v16

    #@19b
    if-ge v0, v10, :cond_6

    #@19d
    .line 709
    const/high16 v19, 0x40000000    # 2.0f

    #@19f
    move/from16 v0, v19

    #@1a1
    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1a4
    move-result p1

    #@1a5
    .line 710
    const/4 v8, 0x1

    #@1a6
    .line 717
    .end local v10    # "min":I
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_6
    if-eqz v8, :cond_7

    #@1a8
    .line 718
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@1ab
    .line 607
    :cond_7
    return-void

    #@1ac
    .line 610
    .end local v2    # "fixedWidth":Z
    .end local v5    # "heightMode":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v16    # "width":I
    .end local v17    # "widthMode":I
    :cond_8
    const/4 v7, 0x0

    #@1ad
    .restart local v7    # "isPortrait":Z
    goto/16 :goto_0

    #@1af
    .line 618
    .restart local v2    # "fixedWidth":Z
    .restart local v5    # "heightMode":I
    .restart local v17    # "widthMode":I
    :cond_9
    move-object/from16 v0, p0

    #@1b1
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1b3
    move-object/from16 v19, v0

    #@1b5
    move-object/from16 v0, v19

    #@1b7
    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    #@1b9
    goto/16 :goto_1

    #@1bb
    .line 623
    .restart local v14    # "tvw":Landroid/util/TypedValue;
    :cond_a
    iget v0, v14, Landroid/util/TypedValue;->type:I

    #@1bd
    move/from16 v19, v0

    #@1bf
    const/16 v20, 0x6

    #@1c1
    move/from16 v0, v19

    #@1c3
    move/from16 v1, v20

    #@1c5
    if-ne v0, v1, :cond_b

    #@1c7
    .line 624
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1c9
    move/from16 v19, v0

    #@1cb
    move/from16 v0, v19

    #@1cd
    int-to-float v0, v0

    #@1ce
    move/from16 v19, v0

    #@1d0
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1d2
    move/from16 v20, v0

    #@1d4
    move/from16 v0, v20

    #@1d6
    int-to-float v0, v0

    #@1d7
    move/from16 v20, v0

    #@1d9
    move/from16 v0, v19

    #@1db
    move/from16 v1, v20

    #@1dd
    invoke-virtual {v14, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    #@1e0
    move-result v19

    #@1e1
    move/from16 v0, v19

    #@1e3
    float-to-int v15, v0

    #@1e4
    .restart local v15    # "w":I
    goto/16 :goto_2

    #@1e6
    .line 626
    .end local v15    # "w":I
    :cond_b
    const/4 v15, 0x0

    #@1e7
    .restart local v15    # "w":I
    goto/16 :goto_2

    #@1e9
    .line 636
    .restart local v18    # "widthSize":I
    :cond_c
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@1ed
    move-object/from16 v19, v0

    #@1ef
    move-object/from16 v0, v19

    #@1f1
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@1f3
    move/from16 v19, v0

    #@1f5
    sub-int v19, v18, v19

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@1fb
    move-object/from16 v20, v0

    #@1fd
    move-object/from16 v0, v20

    #@1ff
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@201
    move/from16 v20, v0

    #@203
    sub-int v19, v19, v20

    #@205
    .line 637
    const/high16 v20, -0x80000000

    #@207
    .line 635
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@20a
    move-result p1

    #@20b
    .line 638
    const/16 v19, 0x1

    #@20d
    move/from16 v0, v19

    #@20f
    move-object/from16 v1, p0

    #@211
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    #@213
    goto/16 :goto_3

    #@215
    .line 646
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    .end local v18    # "widthSize":I
    :cond_d
    move-object/from16 v0, p0

    #@217
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@219
    move-object/from16 v19, v0

    #@21b
    move-object/from16 v0, v19

    #@21d
    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    #@21f
    goto/16 :goto_4

    #@221
    .line 651
    .restart local v13    # "tvh":Landroid/util/TypedValue;
    :cond_e
    iget v0, v13, Landroid/util/TypedValue;->type:I

    #@223
    move/from16 v19, v0

    #@225
    const/16 v20, 0x6

    #@227
    move/from16 v0, v19

    #@229
    move/from16 v1, v20

    #@22b
    if-ne v0, v1, :cond_f

    #@22d
    .line 652
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    #@22f
    move/from16 v19, v0

    #@231
    move/from16 v0, v19

    #@233
    int-to-float v0, v0

    #@234
    move/from16 v19, v0

    #@236
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    #@238
    move/from16 v20, v0

    #@23a
    move/from16 v0, v20

    #@23c
    int-to-float v0, v0

    #@23d
    move/from16 v20, v0

    #@23f
    move/from16 v0, v19

    #@241
    move/from16 v1, v20

    #@243
    invoke-virtual {v13, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    #@246
    move-result v19

    #@247
    move/from16 v0, v19

    #@249
    float-to-int v3, v0

    #@24a
    .restart local v3    # "h":I
    goto/16 :goto_5

    #@24c
    .line 654
    .end local v3    # "h":I
    :cond_f
    const/4 v3, 0x0

    #@24d
    .restart local v3    # "h":I
    goto/16 :goto_5

    #@24f
    .line 661
    .restart local v6    # "heightSize":I
    :cond_10
    move-object/from16 v0, p0

    #@251
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@253
    move-object/from16 v19, v0

    #@255
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@258
    move-result-object v19

    #@259
    move-object/from16 v0, v19

    #@25b
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@25d
    move/from16 v19, v0

    #@25f
    move/from16 v0, v19

    #@261
    and-int/lit16 v0, v0, 0x100

    #@263
    move/from16 v19, v0

    #@265
    if-nez v19, :cond_1

    #@267
    .line 663
    move-object/from16 v0, p0

    #@269
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@26b
    move-object/from16 v19, v0

    #@26d
    move-object/from16 v0, v19

    #@26f
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@271
    move/from16 v19, v0

    #@273
    sub-int v19, v6, v19

    #@275
    move-object/from16 v0, p0

    #@277
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@279
    move-object/from16 v20, v0

    #@27b
    move-object/from16 v0, v20

    #@27d
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@27f
    move/from16 v20, v0

    #@281
    sub-int v19, v19, v20

    #@283
    const/high16 v20, -0x80000000

    #@285
    .line 662
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@288
    move-result p2

    #@289
    .line 664
    const/16 v19, 0x1

    #@28b
    move/from16 v0, v19

    #@28d
    move-object/from16 v1, p0

    #@28f
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    #@291
    goto/16 :goto_6

    #@293
    .line 695
    .end local v3    # "h":I
    .end local v6    # "heightSize":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    .restart local v8    # "measure":Z
    .restart local v16    # "width":I
    :cond_11
    move-object/from16 v0, p0

    #@295
    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@297
    move-object/from16 v19, v0

    #@299
    move-object/from16 v0, v19

    #@29b
    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    #@29d
    goto/16 :goto_7

    #@29f
    .line 700
    .restart local v12    # "tv":Landroid/util/TypedValue;
    :cond_12
    iget v0, v12, Landroid/util/TypedValue;->type:I

    #@2a1
    move/from16 v19, v0

    #@2a3
    const/16 v20, 0x6

    #@2a5
    move/from16 v0, v19

    #@2a7
    move/from16 v1, v20

    #@2a9
    if-ne v0, v1, :cond_13

    #@2ab
    .line 701
    move-object/from16 v0, p0

    #@2ad
    iget v0, v0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    #@2af
    move/from16 v19, v0

    #@2b1
    move-object/from16 v0, p0

    #@2b3
    iget v0, v0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    #@2b5
    move/from16 v20, v0

    #@2b7
    move/from16 v0, v19

    #@2b9
    move/from16 v1, v20

    #@2bb
    invoke-virtual {v12, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    #@2be
    move-result v19

    #@2bf
    move/from16 v0, v19

    #@2c1
    float-to-int v10, v0

    #@2c2
    .restart local v10    # "min":I
    goto/16 :goto_8

    #@2c4
    .line 703
    .end local v10    # "min":I
    :cond_13
    const/4 v10, 0x0

    #@2c5
    .restart local v10    # "min":I
    goto/16 :goto_8
.end method

.method public onPostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 2049
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawResizingShadowIfNeeded(Landroid/view/DisplayListCanvas;)V

    #@3
    .line 2048
    return-void
.end method

.method public onRequestDraw(Z)V
    .locals 1
    .param p1, "reportNextDraw"    # Z

    #@0
    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 2038
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onRequestDraw(Z)V

    #@9
    .line 2036
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2039
    :cond_1
    if-eqz p1, :cond_0

    #@c
    .line 2041
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 2042
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    #@19
    goto :goto_0
.end method

.method onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layoutResource"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    .line 1765
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getStackId()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@8
    .line 1767
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1768
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    #@f
    .line 1769
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@11
    .line 1770
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    .line 1771
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@19
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    #@1c
    move-result v5

    #@1d
    .line 1772
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@1f
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    #@22
    move-result v6

    #@23
    move-object v1, p0

    #@24
    .line 1769
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    #@27
    .line 1775
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@2d
    .line 1776
    invoke-virtual {p1, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@30
    move-result-object v7

    #@31
    .line 1777
    .local v7, "root":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@33
    if-eqz v0, :cond_2

    #@35
    .line 1778
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@37
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    #@3a
    move-result-object v0

    #@3b
    if-nez v0, :cond_1

    #@3d
    .line 1779
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@3f
    .line 1780
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@41
    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@44
    .line 1779
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@47
    .line 1782
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@49
    .line 1783
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@4b
    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@4e
    .line 1782
    invoke-virtual {v0, v7, v1}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@51
    .line 1789
    :goto_0
    check-cast v7, Landroid/view/ViewGroup;

    #@53
    .end local v7    # "root":Landroid/view/View;
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@55
    .line 1790
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    #@58
    .line 1764
    return-void

    #@59
    .line 1787
    .restart local v7    # "root":Landroid/view/View;
    :cond_2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@5b
    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@5e
    const/4 v1, 0x0

    #@5f
    invoke-virtual {p0, v7, v1, v0}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@62
    goto :goto_0
.end method

.method public onRootViewScrollYChanged(I)V
    .locals 0
    .param p1, "rootScrollY"    # I

    #@0
    .prologue
    .line 1527
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    #@2
    .line 1528
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    #@5
    .line 1526
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onWindowDragResizeEnd()V
    .locals 2

    #@0
    .prologue
    .line 2021
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    #@3
    .line 2022
    const/4 v0, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@8
    .line 2023
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    #@b
    .line 2024
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    #@12
    .line 2020
    return-void
.end method

.method public onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 14
    .param p1, "initialBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;
    .param p5, "resizeMode"    # I

    #@0
    .prologue
    .line 1991
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1993
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    #@b
    .line 1994
    return-void

    #@c
    .line 1996
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1997
    return-void

    #@11
    .line 1999
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHardwareRenderer()Landroid/view/ThreadedRenderer;

    #@14
    move-result-object v3

    #@15
    .line 2000
    .local v3, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v3, :cond_2

    #@17
    .line 2001
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    #@1a
    .line 2002
    new-instance v1, Lcom/android/internal/policy/BackdropFrameRenderer;

    #@1c
    .line 2003
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@1e
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    .line 2004
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@24
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    #@27
    move-result v8

    #@28
    .line 2005
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@2a
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    #@2d
    move-result v9

    #@2e
    move-object v2, p0

    #@2f
    move-object v4, p1

    #@30
    move/from16 v10, p2

    #@32
    move-object/from16 v11, p3

    #@34
    move-object/from16 v12, p4

    #@36
    move/from16 v13, p5

    #@38
    .line 2002
    invoke-direct/range {v1 .. v13}, Lcom/android/internal/policy/BackdropFrameRenderer;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@3b
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@3d
    .line 2011
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    #@40
    .line 2013
    const/4 v1, 0x0

    #@41
    const/4 v2, 0x0

    #@42
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@45
    .line 2015
    :cond_2
    move/from16 v0, p5

    #@47
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    #@49
    .line 2016
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    #@50
    .line 1990
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    #@4
    .line 1407
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    if-eqz p1, :cond_4

    #@e
    .line 1412
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@13
    move-result-object v0

    #@14
    .line 1413
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    #@16
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@18
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_5

    #@1e
    .line 1417
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 1418
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@24
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    #@27
    .line 1420
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@29
    if-eqz v1, :cond_3

    #@2b
    .line 1421
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2d
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    #@30
    .line 1424
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    #@33
    .line 1402
    return-void

    #@34
    .line 1408
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@36
    iget v1, v1, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@38
    if-eqz v1, :cond_0

    #@3a
    .line 1409
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@3c
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    #@3f
    goto :goto_0

    #@40
    .line 1413
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@42
    if-gez v1, :cond_1

    #@44
    .line 1414
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    #@47
    goto :goto_1
.end method

.method public onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1983
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1984
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@9
    .line 1982
    :cond_0
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    #@0
    .prologue
    .line 942
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@5
    .line 941
    return-void
.end method

.method public requestKeyboardShortcuts(Ljava/util/List;I)V
    .locals 3
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    const/4 v2, 0x0

    #@1
    .line 2196
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@3
    invoke-virtual {v1, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@6
    move-result-object v0

    #@7
    .line 2197
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@13
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 2198
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1b
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@21
    invoke-interface {v1, p1, v2, p2}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    #@24
    .line 2195
    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

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
    .line 534
    return-void

    #@e
    .line 540
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 541
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@14
    const/4 v1, 0x6

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    #@1a
    move-result v0

    #@1b
    const/4 v1, 0x1

    #@1c
    if-ne v0, v1, :cond_3

    #@1e
    .line 545
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@25
    .line 532
    :goto_0
    return-void

    #@26
    .line 542
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@28
    const/4 v1, 0x2

    #@29
    if-eq v0, v1, :cond_1

    #@2b
    .line 543
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@2d
    const/4 v1, 0x5

    #@2e
    if-eq v0, v1, :cond_1

    #@30
    .line 547
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    #@33
    goto :goto_0
.end method

.method setBackgroundFallback(I)V
    .locals 3
    .param p1, "resId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    #@4
    if-eqz p1, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

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
    .line 261
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_1

    #@17
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

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
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setWillNotDraw(Z)V

    #@23
    .line 259
    return-void

    #@24
    .line 261
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
    .line 564
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    #@3
    move-result v1

    #@4
    .line 565
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    #@6
    .line 566
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    #@8
    .line 567
    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    #@b
    .line 569
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v3

    #@f
    .line 570
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@11
    .line 571
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    #@13
    .line 572
    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    #@15
    iget v7, v4, Landroid/graphics/Rect;->left:I

    #@17
    add-int/2addr v6, v7

    #@18
    iput v6, v2, Landroid/graphics/Rect;->left:I

    #@1a
    .line 573
    iget v6, v2, Landroid/graphics/Rect;->top:I

    #@1c
    iget v7, v4, Landroid/graphics/Rect;->top:I

    #@1e
    add-int/2addr v6, v7

    #@1f
    iput v6, v2, Landroid/graphics/Rect;->top:I

    #@21
    .line 574
    iget v6, v2, Landroid/graphics/Rect;->right:I

    #@23
    iget v7, v4, Landroid/graphics/Rect;->right:I

    #@25
    sub-int/2addr v6, v7

    #@26
    iput v6, v2, Landroid/graphics/Rect;->right:I

    #@28
    .line 575
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    #@2a
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    #@2c
    sub-int/2addr v6, v7

    #@2d
    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    #@2f
    .line 576
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@32
    .line 577
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@34
    .line 578
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
    .line 579
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
    .line 580
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
    .line 581
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
    .line 584
    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5f
    move-result-object v0

    #@60
    .line 585
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@62
    .line 586
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@65
    .line 603
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
    .line 1517
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    #@5
    .line 1516
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    #@0
    .prologue
    const/16 v1, 0x80

    #@2
    .line 1521
    if-eqz p1, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    #@9
    .line 1520
    :goto_0
    return-void

    #@a
    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

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
    .line 1513
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    #@5
    .line 1512
    return-void
.end method

.method setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 2163
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 2164
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2165
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 2162
    :cond_0
    return-void
.end method

.method setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    #@0
    .prologue
    .line 1727
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    .line 1728
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 1729
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Lcom/android/internal/policy/DecorContext;

    #@8
    if-eqz v2, :cond_0

    #@a
    move-object v1, v0

    #@b
    .line 1730
    check-cast v1, Lcom/android/internal/policy/DecorContext;

    #@d
    .line 1731
    .local v1, "decorContext":Lcom/android/internal/policy/DecorContext;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@f
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    #@12
    .line 1726
    .end local v1    # "decorContext":Lcom/android/internal/policy/DecorContext;
    :cond_0
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 909
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v1

    #@5
    if-eq v1, p1, :cond_1

    #@7
    .line 910
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a
    .line 911
    if-eqz p1, :cond_2

    #@c
    .line 913
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    #@19
    move-result v0

    #@1a
    .line 912
    :cond_0
    invoke-static {p1, v0}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    .line 919
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    if-eqz v0, :cond_4

    #@24
    .line 920
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@26
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@28
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@2b
    .line 924
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    #@2e
    .line 908
    :cond_1
    return-void

    #@2f
    .line 916
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@32
    move-result-object v1

    #@33
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@35
    iget v2, v2, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@37
    .line 917
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@39
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    #@3c
    move-result v3

    #@3d
    if-nez v3, :cond_3

    #@3f
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@41
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    #@44
    move-result v0

    #@45
    .line 916
    :cond_3
    const/4 v3, 0x0

    #@46
    .line 915
    invoke-static {v1, v3, v2, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    #@49
    move-result-object v0

    #@4a
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@4c
    goto :goto_0

    #@4d
    .line 922
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@4f
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@52
    goto :goto_1
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 930
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 931
    if-eqz p1, :cond_1

    #@b
    .line 932
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@10
    .line 936
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    #@13
    .line 928
    :cond_0
    return-void

    #@14
    .line 934
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@16
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@19
    goto :goto_0
.end method

.method shouldAnimatePrimaryActionModeView()Z
    .locals 1

    #@0
    .prologue
    .line 1680
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    #@0
    .prologue
    const/high16 v0, 0x7fc00000    # NaNf

    #@2
    .line 760
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    #@0
    .prologue
    .line 765
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 819
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

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
    .line 824
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

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
    .line 808
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

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
    .line 814
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method startChanging()V
    .locals 1

    #@0
    .prologue
    .line 900
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    #@3
    .line 899
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 419
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
    .line 392
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x4

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 393
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@b
    move-result v0

    #@c
    .line 395
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 396
    if-ne v0, v3, :cond_0

    #@12
    .line 397
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@14
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    #@17
    .line 399
    :cond_0
    return v3

    #@18
    .line 403
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
    .line 407
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
    .line 411
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
    .line 415
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DecorView@"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hashCode()I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, "["

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 2205
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@21
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@24
    move-result-object v1

    #@25
    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 2204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 2205
    const-string/jumbo v1, "]"

    #@30
    .line 2204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method

.method updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 29
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 1003
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v17

    #@8
    .line 1004
    .local v17, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    #@a
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    #@f
    move-result v3

    #@10
    or-int v4, v2, v3

    #@12
    .line 1006
    .local v4, "sysUiVisibility":I
    move-object/from16 v0, p0

    #@14
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@16
    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    #@18
    if-nez v2, :cond_3

    #@1a
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_3

    #@20
    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_8

    #@26
    const/16 v23, 0x0

    #@28
    .line 1008
    .local v23, "disallowAnimate":Z
    :goto_0
    move-object/from16 v0, p0

    #@2a
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    #@2c
    move-object/from16 v0, v17

    #@2e
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@30
    xor-int/2addr v2, v3

    #@31
    .line 1009
    const/high16 v3, -0x80000000

    #@33
    .line 1008
    and-int/2addr v2, v3

    #@34
    if-eqz v2, :cond_9

    #@36
    const/4 v2, 0x1

    #@37
    :goto_1
    or-int v23, v23, v2

    #@39
    .line 1010
    .local v23, "disallowAnimate":Z
    move-object/from16 v0, v17

    #@3b
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    #@41
    .line 1012
    if-eqz p1, :cond_0

    #@43
    .line 1013
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    #@46
    move-result v2

    #@47
    .line 1014
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@4a
    move-result v3

    #@4b
    .line 1013
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    #@4e
    move-result v2

    #@4f
    move-object/from16 v0, p0

    #@51
    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    #@53
    .line 1015
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    #@56
    move-result v2

    #@57
    .line 1016
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@5a
    move-result v3

    #@5b
    .line 1015
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    #@5e
    move-result v2

    #@5f
    move-object/from16 v0, p0

    #@61
    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    #@63
    .line 1017
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    #@66
    move-result v2

    #@67
    .line 1018
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@6a
    move-result v3

    #@6b
    .line 1017
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    #@6e
    move-result v2

    #@6f
    move-object/from16 v0, p0

    #@71
    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@73
    .line 1023
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    #@76
    move-result v2

    #@77
    if-eqz v2, :cond_a

    #@79
    const/16 v26, 0x1

    #@7b
    .line 1024
    .local v26, "hasTopStableInset":Z
    :goto_2
    move-object/from16 v0, p0

    #@7d
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    #@7f
    move/from16 v0, v26

    #@81
    if-eq v0, v2, :cond_b

    #@83
    const/4 v2, 0x1

    #@84
    :goto_3
    or-int v23, v23, v2

    #@86
    .line 1025
    move/from16 v0, v26

    #@88
    move-object/from16 v1, p0

    #@8a
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    #@8c
    .line 1027
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    #@8f
    move-result v2

    #@90
    if-eqz v2, :cond_c

    #@92
    const/16 v24, 0x1

    #@94
    .line 1028
    .local v24, "hasBottomStableInset":Z
    :goto_4
    move-object/from16 v0, p0

    #@96
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    #@98
    move/from16 v0, v24

    #@9a
    if-eq v0, v2, :cond_d

    #@9c
    const/4 v2, 0x1

    #@9d
    :goto_5
    or-int v23, v23, v2

    #@9f
    .line 1029
    move/from16 v0, v24

    #@a1
    move-object/from16 v1, p0

    #@a3
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    #@a5
    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    #@a8
    move-result v2

    #@a9
    if-eqz v2, :cond_e

    #@ab
    const/16 v25, 0x1

    #@ad
    .line 1032
    .local v25, "hasRightStableInset":Z
    :goto_6
    move-object/from16 v0, p0

    #@af
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    #@b1
    move/from16 v0, v25

    #@b3
    if-eq v0, v2, :cond_f

    #@b5
    const/4 v2, 0x1

    #@b6
    :goto_7
    or-int v23, v23, v2

    #@b8
    .line 1033
    move/from16 v0, v25

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    #@be
    .line 1034
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->shouldAlwaysConsumeNavBar()Z

    #@c1
    move-result v2

    #@c2
    move-object/from16 v0, p0

    #@c4
    iput-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    #@c6
    .line 1037
    .end local v24    # "hasBottomStableInset":Z
    .end local v25    # "hasRightStableInset":Z
    .end local v26    # "hasTopStableInset":Z
    :cond_0
    move-object/from16 v0, p0

    #@c8
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@ce
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    #@d1
    move-result v7

    #@d2
    .line 1038
    .local v7, "navBarToRightEdge":Z
    move-object/from16 v0, p0

    #@d4
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    #@d6
    move-object/from16 v0, p0

    #@d8
    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@da
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getNavBarSize(II)I

    #@dd
    move-result v6

    #@de
    .line 1039
    .local v6, "navBarSize":I
    move-object/from16 v0, p0

    #@e0
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@e2
    .line 1040
    move-object/from16 v0, p0

    #@e4
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@e6
    iget v5, v2, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    #@e8
    .line 1041
    if-eqz p2, :cond_1

    #@ea
    if-eqz v23, :cond_10

    #@ec
    :cond_1
    const/4 v9, 0x0

    #@ed
    :goto_8
    const/4 v8, 0x0

    #@ee
    const/4 v10, 0x0

    #@ef
    move-object/from16 v2, p0

    #@f1
    .line 1039
    invoke-direct/range {v2 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZIZZ)V

    #@f4
    .line 1043
    if-eqz v7, :cond_11

    #@f6
    .line 1044
    move-object/from16 v0, p0

    #@f8
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@fa
    iget-boolean v0, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    #@fc
    move/from16 v28, v0

    #@fe
    .line 1045
    .local v28, "statusBarNeedsRightInset":Z
    :goto_9
    if-eqz v28, :cond_12

    #@100
    move-object/from16 v0, p0

    #@102
    iget v14, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@104
    .line 1046
    .local v14, "statusBarRightInset":I
    :goto_a
    move-object/from16 v0, p0

    #@106
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@108
    .line 1047
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor()I

    #@10b
    move-result v11

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget v12, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    #@110
    .line 1048
    if-eqz p2, :cond_2

    #@112
    if-eqz v23, :cond_13

    #@114
    :cond_2
    const/4 v15, 0x0

    #@115
    .line 1049
    :goto_b
    move-object/from16 v0, p0

    #@117
    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    #@119
    move/from16 v16, v0

    #@11b
    .line 1048
    const/4 v13, 0x0

    #@11c
    move-object/from16 v8, p0

    #@11e
    move v10, v4

    #@11f
    .line 1046
    invoke-direct/range {v8 .. v16}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZIZZ)V

    #@122
    .line 1056
    .end local v6    # "navBarSize":I
    .end local v7    # "navBarToRightEdge":Z
    .end local v14    # "statusBarRightInset":I
    .end local v23    # "disallowAnimate":Z
    .end local v28    # "statusBarNeedsRightInset":Z
    :cond_3
    move-object/from16 v0, v17

    #@124
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@126
    const/high16 v3, -0x80000000

    #@128
    and-int/2addr v2, v3

    #@129
    if-eqz v2, :cond_14

    #@12b
    .line 1057
    and-int/lit16 v2, v4, 0x200

    #@12d
    if-nez v2, :cond_14

    #@12f
    .line 1058
    and-int/lit8 v2, v4, 0x2

    #@131
    if-nez v2, :cond_14

    #@133
    .line 1056
    const/16 v21, 0x1

    #@135
    .line 1063
    :goto_c
    and-int/lit16 v2, v4, 0x400

    #@137
    if-nez v2, :cond_16

    #@139
    .line 1064
    const/high16 v2, -0x80000000

    #@13b
    and-int/2addr v2, v4

    #@13c
    if-nez v2, :cond_16

    #@13e
    .line 1065
    move-object/from16 v0, v17

    #@140
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@142
    and-int/lit16 v2, v2, 0x100

    #@144
    if-nez v2, :cond_16

    #@146
    .line 1066
    move-object/from16 v0, v17

    #@148
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@14a
    const/high16 v3, 0x10000

    #@14c
    and-int/2addr v2, v3

    #@14d
    if-nez v2, :cond_16

    #@14f
    .line 1067
    move-object/from16 v0, p0

    #@151
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    #@153
    .line 1063
    if-eqz v2, :cond_16

    #@155
    .line 1068
    move-object/from16 v0, p0

    #@157
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    #@159
    if-eqz v2, :cond_15

    #@15b
    const/16 v22, 0x1

    #@15d
    .line 1070
    .local v22, "consumingStatusBar":Z
    :goto_d
    if-eqz v22, :cond_17

    #@15f
    move-object/from16 v0, p0

    #@161
    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    #@163
    move/from16 v20, v0

    #@165
    .line 1071
    .local v20, "consumedTop":I
    :goto_e
    if-eqz v21, :cond_18

    #@167
    move-object/from16 v0, p0

    #@169
    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@16b
    move/from16 v19, v0

    #@16d
    .line 1072
    .local v19, "consumedRight":I
    :goto_f
    if-eqz v21, :cond_19

    #@16f
    move-object/from16 v0, p0

    #@171
    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    #@173
    move/from16 v18, v0

    #@175
    .line 1074
    .local v18, "consumedBottom":I
    :goto_10
    move-object/from16 v0, p0

    #@177
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@179
    if-eqz v2, :cond_6

    #@17b
    .line 1075
    move-object/from16 v0, p0

    #@17d
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@17f
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@182
    move-result-object v2

    #@183
    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@185
    .line 1074
    if-eqz v2, :cond_6

    #@187
    .line 1076
    move-object/from16 v0, p0

    #@189
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@18b
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@18e
    move-result-object v27

    #@18f
    check-cast v27, Landroid/view/ViewGroup$MarginLayoutParams;

    #@191
    .line 1077
    .local v27, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v27

    #@193
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@195
    move/from16 v0, v20

    #@197
    if-ne v2, v0, :cond_4

    #@199
    move-object/from16 v0, v27

    #@19b
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@19d
    move/from16 v0, v19

    #@19f
    if-eq v2, v0, :cond_1a

    #@1a1
    .line 1079
    :cond_4
    :goto_11
    move/from16 v0, v20

    #@1a3
    move-object/from16 v1, v27

    #@1a5
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@1a7
    .line 1080
    move/from16 v0, v19

    #@1a9
    move-object/from16 v1, v27

    #@1ab
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@1ad
    .line 1081
    move/from16 v0, v18

    #@1af
    move-object/from16 v1, v27

    #@1b1
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@1b3
    .line 1082
    move-object/from16 v0, p0

    #@1b5
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@1b7
    move-object/from16 v0, v27

    #@1b9
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1bc
    .line 1084
    if-nez p1, :cond_5

    #@1be
    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    #@1c1
    .line 1090
    :cond_5
    if-eqz p1, :cond_6

    #@1c3
    .line 1092
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@1c6
    move-result v2

    #@1c7
    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@1ca
    move-result v3

    #@1cb
    sub-int v3, v3, v20

    #@1cd
    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@1d0
    move-result v5

    #@1d1
    sub-int v5, v5, v19

    #@1d3
    .line 1095
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@1d6
    move-result v8

    #@1d7
    sub-int v8, v8, v18

    #@1d9
    .line 1091
    move-object/from16 v0, p1

    #@1db
    invoke-virtual {v0, v2, v3, v5, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@1de
    move-result-object p1

    #@1df
    .line 1099
    .end local v27    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    if-eqz p1, :cond_7

    #@1e1
    .line 1100
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    #@1e4
    move-result-object p1

    #@1e5
    .line 1102
    :cond_7
    return-object p1

    #@1e6
    .line 1007
    .end local v18    # "consumedBottom":I
    .end local v19    # "consumedRight":I
    .end local v20    # "consumedTop":I
    .end local v22    # "consumingStatusBar":Z
    :cond_8
    const/16 v23, 0x1

    #@1e8
    .local v23, "disallowAnimate":Z
    goto/16 :goto_0

    #@1ea
    .line 1008
    :cond_9
    const/4 v2, 0x0

    #@1eb
    goto/16 :goto_1

    #@1ed
    .line 1023
    .local v23, "disallowAnimate":Z
    :cond_a
    const/16 v26, 0x0

    #@1ef
    .restart local v26    # "hasTopStableInset":Z
    goto/16 :goto_2

    #@1f1
    .line 1024
    :cond_b
    const/4 v2, 0x0

    #@1f2
    goto/16 :goto_3

    #@1f4
    .line 1027
    :cond_c
    const/16 v24, 0x0

    #@1f6
    .restart local v24    # "hasBottomStableInset":Z
    goto/16 :goto_4

    #@1f8
    .line 1028
    :cond_d
    const/4 v2, 0x0

    #@1f9
    goto/16 :goto_5

    #@1fb
    .line 1031
    :cond_e
    const/16 v25, 0x0

    #@1fd
    .restart local v25    # "hasRightStableInset":Z
    goto/16 :goto_6

    #@1ff
    .line 1032
    :cond_f
    const/4 v2, 0x0

    #@200
    goto/16 :goto_7

    #@202
    .line 1041
    .end local v24    # "hasBottomStableInset":Z
    .end local v25    # "hasRightStableInset":Z
    .end local v26    # "hasTopStableInset":Z
    .restart local v6    # "navBarSize":I
    .restart local v7    # "navBarToRightEdge":Z
    :cond_10
    const/4 v9, 0x1

    #@203
    goto/16 :goto_8

    #@205
    .line 1043
    :cond_11
    const/16 v28, 0x0

    #@207
    goto/16 :goto_9

    #@209
    .line 1045
    .restart local v28    # "statusBarNeedsRightInset":Z
    :cond_12
    const/4 v14, 0x0

    #@20a
    .restart local v14    # "statusBarRightInset":I
    goto/16 :goto_a

    #@20c
    .line 1048
    :cond_13
    const/4 v15, 0x1

    #@20d
    goto/16 :goto_b

    #@20f
    .line 1059
    .end local v6    # "navBarSize":I
    .end local v7    # "navBarToRightEdge":Z
    .end local v14    # "statusBarRightInset":I
    .end local v23    # "disallowAnimate":Z
    .end local v28    # "statusBarNeedsRightInset":Z
    :cond_14
    move-object/from16 v0, p0

    #@211
    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    #@213
    move/from16 v21, v0

    #@215
    .local v21, "consumingNavBar":Z
    goto/16 :goto_c

    #@217
    .line 1068
    .end local v21    # "consumingNavBar":Z
    :cond_15
    const/16 v22, 0x0

    #@219
    goto/16 :goto_d

    #@21b
    .line 1063
    :cond_16
    const/16 v22, 0x0

    #@21d
    goto/16 :goto_d

    #@21f
    .line 1070
    .restart local v22    # "consumingStatusBar":Z
    :cond_17
    const/16 v20, 0x0

    #@221
    .restart local v20    # "consumedTop":I
    goto/16 :goto_e

    #@223
    .line 1071
    :cond_18
    const/16 v19, 0x0

    #@225
    .restart local v19    # "consumedRight":I
    goto/16 :goto_f

    #@227
    .line 1072
    :cond_19
    const/16 v18, 0x0

    #@229
    .restart local v18    # "consumedBottom":I
    goto/16 :goto_10

    #@22b
    .line 1078
    .restart local v27    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1a
    move-object/from16 v0, v27

    #@22d
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@22f
    move/from16 v0, v18

    #@231
    if-eq v2, v0, :cond_5

    #@233
    goto/16 :goto_11
.end method

.method updateDecorCaptionShade()V
    .locals 2

    #@0
    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1882
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@a
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    #@d
    .line 1880
    :cond_0
    return-void
.end method

.method updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 2182
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DecorView["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "]"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    #@21
    .line 2181
    return-void
.end method

.method updateNavigationGuardColor()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1326
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1330
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@7
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@9
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 1331
    const/4 v0, 0x4

    #@10
    .line 1330
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    #@13
    .line 1325
    :cond_1
    return-void
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    #@0
    .prologue
    .line 1509
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@2
    if-gez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

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
    .line 1505
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@2
    if-gez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

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
