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

.field private mLastHasLeftStableInset:Z

.field private mLastHasRightStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastLeftInset:I

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
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureId"    # I
    .param p3, "window"    # Lcom/android/internal/policy/PhoneWindow;
    .param p4, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 234
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 123
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    #@6
    .line 125
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    #@9
    .line 127
    const/4 v0, -0x1

    #@a
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

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
    const/4 v0, 0x0

    #@29
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    #@2b
    .line 163
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewState;

    #@2d
    .line 166
    const-string/jumbo v6, "android:status:background"

    #@30
    .line 164
    const/4 v1, 0x4

    #@31
    const/high16 v2, 0x4000000

    #@33
    .line 165
    const/16 v3, 0x30

    #@35
    const/4 v4, 0x3

    #@36
    const/4 v5, 0x5

    #@37
    .line 167
    const v7, 0x102002f

    #@3a
    .line 168
    const/16 v8, 0x400

    #@3c
    .line 163
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(IIIIILjava/lang/String;II)V

    #@3f
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@41
    .line 169
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewState;

    #@43
    .line 172
    const-string/jumbo v6, "android:navigation:background"

    #@46
    .line 170
    const/4 v1, 0x2

    #@47
    const/high16 v2, 0x8000000

    #@49
    .line 171
    const/16 v3, 0x50

    #@4b
    const/4 v4, 0x5

    #@4c
    const/4 v5, 0x3

    #@4d
    .line 173
    const v7, 0x1020030

    #@50
    .line 174
    const/4 v8, 0x0

    #@51
    .line 169
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(IIIIILjava/lang/String;II)V

    #@54
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@56
    .line 182
    new-instance v0, Lcom/android/internal/widget/BackgroundFallback;

    #@58
    invoke-direct {v0}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    #@5b
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    #@5d
    .line 184
    const/4 v0, 0x0

    #@5e
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    #@60
    .line 185
    const/4 v0, 0x0

    #@61
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    #@63
    .line 186
    const/4 v0, 0x0

    #@64
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@66
    .line 187
    const/4 v0, 0x0

    #@67
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    #@69
    .line 188
    const/4 v0, 0x0

    #@6a
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    #@6c
    .line 189
    const/4 v0, 0x0

    #@6d
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    #@6f
    .line 190
    const/4 v0, 0x0

    #@70
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    #@72
    .line 191
    const/4 v0, 0x0

    #@73
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    #@75
    .line 192
    const/4 v0, 0x0

    #@76
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    #@78
    .line 193
    const/4 v0, 0x0

    #@79
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    #@7b
    .line 195
    const/4 v0, 0x0

    #@7c
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    #@7e
    .line 202
    new-instance v0, Landroid/graphics/Rect;

    #@80
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@83
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@85
    .line 213
    const/4 v0, 0x0

    #@86
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    #@88
    .line 214
    const/4 v0, 0x0

    #@89
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    #@8b
    .line 215
    const/4 v0, 0x0

    #@8c
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@8e
    .line 222
    const-string/jumbo v0, "DecorView"

    #@91
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    #@93
    .line 223
    new-instance v0, Landroid/graphics/Rect;

    #@95
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@98
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@9a
    .line 224
    const/4 v0, 0x0

    #@9b
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    #@9d
    .line 225
    const/4 v0, 0x0

    #@9e
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    #@a0
    .line 227
    const/4 v0, -0x1

    #@a1
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    #@a3
    .line 229
    new-instance v0, Landroid/graphics/Paint;

    #@a5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@a8
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    #@aa
    .line 230
    new-instance v0, Landroid/graphics/Paint;

    #@ac
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@af
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    #@b1
    .line 235
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@b3
    .line 238
    const v0, 0x10c000e

    #@b6
    .line 237
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@b9
    move-result-object v0

    #@ba
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    #@bc
    .line 240
    const v0, 0x10c000f

    #@bf
    .line 239
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@c2
    move-result-object v0

    #@c3
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    #@c5
    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c8
    move-result-object v0

    #@c9
    .line 243
    const v1, 0x10e00c8

    #@cc
    .line 242
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@cf
    move-result v0

    #@d0
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    #@d2
    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d5
    move-result-object v0

    #@d6
    .line 245
    const v1, 0x11200ab

    #@d9
    .line 244
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@dc
    move-result v0

    #@dd
    if-eqz v0, :cond_1

    #@df
    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@e2
    move-result-object v0

    #@e3
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@e5
    const/16 v1, 0x18

    #@e7
    if-lt v0, v1, :cond_0

    #@e9
    const/4 v0, 0x1

    #@ea
    .line 244
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    #@ec
    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@ef
    move-result-object v0

    #@f0
    .line 248
    const v1, 0x1060074

    #@f3
    const/4 v2, 0x0

    #@f4
    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    #@f7
    move-result v0

    #@f8
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentStatusBarColor:I

    #@fa
    .line 250
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    #@fd
    .line 252
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    #@100
    .line 254
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    #@103
    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@106
    move-result-object v0

    #@107
    .line 257
    const v1, 0x10500c0

    #@10a
    .line 256
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@10d
    move-result v0

    #@10e
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    #@110
    .line 258
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initResizingPaints()V

    #@113
    .line 233
    return-void

    #@114
    .line 246
    :cond_0
    const/4 v0, 0x0

    #@115
    goto :goto_0

    #@116
    .line 244
    :cond_1
    const/4 v0, 0x0

    #@117
    goto :goto_0
.end method

.method private calculateStatusBarColor()I
    .locals 2

    #@0
    .prologue
    .line 1132
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v1

    #@6
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8
    .line 1133
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
    .line 1134
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
    .line 1135
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
    .line 887
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    #@a
    .line 889
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@c
    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 892
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 893
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@16
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@19
    move-result-object v0

    #@1a
    .line 894
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@1c
    .line 893
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@1f
    .line 895
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@21
    .line 897
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@23
    .line 886
    :cond_2
    return-void
.end method

.method private cleanupPrimaryActionMode()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 877
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 878
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@7
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    #@a
    .line 879
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@c
    .line 881
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 882
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    #@15
    .line 876
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
    .line 1570
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1573
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 1575
    :pswitch_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 1570
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
    .line 1853
    const/4 v1, 0x0

    #@3
    .line 1854
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
    .line 1855
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v4

    #@11
    .line 1856
    .local v4, "view":Landroid/view/View;
    instance-of v7, v4, Lcom/android/internal/widget/DecorCaptionView;

    #@13
    if-eqz v7, :cond_0

    #@15
    move-object v1, v4

    #@16
    .line 1858
    check-cast v1, Lcom/android/internal/widget/DecorCaptionView;

    #@18
    .line 1859
    .local v1, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    #@1b
    .line 1854
    .end local v1    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1862
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@20
    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@23
    move-result-object v0

    #@24
    .line 1863
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@26
    if-eq v7, v5, :cond_2

    #@28
    .line 1864
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2a
    const/4 v8, 0x2

    #@2b
    if-ne v7, v8, :cond_4

    #@2d
    .line 1863
    :cond_2
    const/4 v3, 0x1

    #@2e
    .line 1866
    .local v3, "isApplication":Z
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@30
    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    #@33
    move-result v7

    #@34
    if-nez v7, :cond_6

    #@36
    if-eqz v3, :cond_6

    #@38
    iget v7, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@3a
    invoke-static {v7}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    #@3d
    move-result v7

    #@3e
    if-eqz v7, :cond_6

    #@40
    .line 1869
    if-nez v1, :cond_3

    #@42
    .line 1870
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    #@45
    move-result-object v1

    #@46
    .line 1872
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@48
    invoke-virtual {v1, v7, v5}, Lcom/android/internal/widget/DecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V

    #@4b
    .line 1878
    :goto_2
    if-eqz v1, :cond_7

    #@4d
    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    #@50
    .line 1879
    return-object v1

    #@51
    .line 1864
    .end local v3    # "isApplication":Z
    :cond_4
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@53
    const/4 v8, 0x4

    #@54
    if-ne v7, v8, :cond_5

    #@56
    const/4 v3, 0x1

    #@57
    .restart local v3    # "isApplication":Z
    goto :goto_1

    #@58
    .end local v3    # "isApplication":Z
    :cond_5
    const/4 v3, 0x0

    #@59
    .restart local v3    # "isApplication":Z
    goto :goto_1

    #@5a
    .line 1874
    :cond_6
    const/4 v1, 0x0

    #@5b
    .local v1, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    goto :goto_2

    #@5c
    .end local v1    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    :cond_7
    move v5, v6

    #@5d
    .line 1878
    goto :goto_3
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    #@0
    .prologue
    .line 1722
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1723
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@6
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    #@9
    .line 1725
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    #@c
    .line 1727
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    #@e
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@10
    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V

    #@13
    .line 1728
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@15
    .line 1730
    new-instance v1, Lcom/android/internal/policy/DecorView$4;

    #@17
    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    #@1a
    .line 1729
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@1c
    .line 1737
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
    .line 1588
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    #@6
    .line 1589
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    #@9
    .line 1596
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
    .line 1666
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@17
    if-eqz v7, :cond_5

    #@19
    .line 1667
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@1b
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    #@1e
    .line 1668
    new-instance v4, Lcom/android/internal/view/StandaloneActionMode;

    #@20
    .line 1669
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@22
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@25
    move-result-object v10

    #@26
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@28
    .line 1670
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@2a
    if-nez v7, :cond_4

    #@2c
    move v7, v8

    #@2d
    .line 1668
    :goto_1
    invoke-direct {v4, v10, v11, p1, v7}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    #@30
    .line 1671
    .local v4, "mode":Landroid/view/ActionMode;
    return-object v4

    #@31
    .line 1597
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
    .line 1599
    new-instance v5, Landroid/util/TypedValue;

    #@3b
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    #@3e
    .line 1600
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@40
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@43
    move-result-object v2

    #@44
    .line 1601
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v7, 0x1010431

    #@47
    invoke-virtual {v2, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@4a
    .line 1604
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    #@4c
    if-eqz v7, :cond_2

    #@4e
    .line 1605
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
    .line 1606
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@5b
    .line 1607
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    #@5d
    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@60
    .line 1609
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@62
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@64
    invoke-direct {v0, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@67
    .line 1610
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v7, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@6e
    .line 1615
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_2
    new-instance v7, Lcom/android/internal/widget/ActionBarContextView;

    #@70
    invoke-direct {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    #@73
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@75
    .line 1616
    new-instance v7, Landroid/widget/PopupWindow;

    #@77
    .line 1617
    const v10, 0x116001e

    #@7a
    .line 1616
    invoke-direct {v7, v0, v11, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@7d
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@7f
    .line 1618
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@81
    .line 1619
    const/4 v10, 0x2

    #@82
    .line 1618
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    #@85
    .line 1620
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@87
    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@89
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@8c
    .line 1621
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@8e
    const/4 v10, -0x1

    #@8f
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@92
    .line 1623
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@95
    move-result-object v7

    #@96
    .line 1624
    const v10, 0x10102eb

    #@99
    .line 1623
    invoke-virtual {v7, v10, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@9c
    .line 1625
    iget v7, v5, Landroid/util/TypedValue;->data:I

    #@9e
    .line 1626
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a1
    move-result-object v10

    #@a2
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@a5
    move-result-object v10

    #@a6
    .line 1625
    invoke-static {v7, v10}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@a9
    move-result v3

    #@aa
    .line 1627
    .local v3, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@ac
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    #@af
    .line 1628
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@b1
    const/4 v10, -0x2

    #@b2
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@b5
    .line 1629
    new-instance v7, Lcom/android/internal/policy/DecorView$2;

    #@b7
    invoke-direct {v7, p0}, Lcom/android/internal/policy/DecorView$2;-><init>(Lcom/android/internal/policy/DecorView;)V

    #@ba
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    #@bc
    goto/16 :goto_0

    #@be
    .line 1612
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v3    # "height":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@c0
    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto :goto_2

    #@c1
    .line 1659
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_3
    const v7, 0x10203ef

    #@c4
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    #@c7
    move-result-object v6

    #@c8
    check-cast v6, Landroid/view/ViewStub;

    #@ca
    .line 1660
    .local v6, "stub":Landroid/view/ViewStub;
    if-eqz v6, :cond_0

    #@cc
    .line 1661
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@cf
    move-result-object v7

    #@d0
    check-cast v7, Lcom/android/internal/widget/ActionBarContextView;

    #@d2
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@d4
    .line 1662
    iput-object v11, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@d6
    goto/16 :goto_0

    #@d8
    .end local v6    # "stub":Landroid/view/ViewStub;
    :cond_4
    move v7, v9

    #@d9
    .line 1670
    goto/16 :goto_1

    #@db
    .line 1673
    :cond_5
    return-object v11
.end method

.method private dipToPx(F)F
    .locals 2
    .param p1, "dip"    # F

    #@0
    .prologue
    .line 2193
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    .line 2192
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
    .line 2104
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
    .line 2105
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@e
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    #@11
    move-result v0

    #@12
    .line 2104
    if-nez v0, :cond_0

    #@14
    .line 2106
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    #@19
    move-result v0

    #@1a
    .line 2104
    if-eqz v0, :cond_1

    #@1c
    .line 2107
    :cond_0
    return-void

    #@1d
    .line 2109
    :cond_1
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->save()I

    #@20
    .line 2110
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
    .line 2111
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
    .line 2112
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->restore()V

    #@3f
    .line 2113
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->save()I

    #@42
    .line 2114
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
    .line 2115
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
    .line 2116
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->restore()V

    #@61
    .line 2103
    return-void
.end method

.method private drawableChanged()V
    .locals 11

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 1373
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 1374
    return-void

    #@6
    .line 1377
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
    .line 1378
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
    .line 1379
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
    .line 1380
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
    .line 1377
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/policy/DecorView;->setPadding(IIII)V

    #@2d
    .line 1381
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    #@30
    .line 1382
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    #@33
    .line 1384
    const/4 v4, -0x1

    #@34
    .line 1385
    .local v4, "opacity":I
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@36
    invoke-static {v5}, Landroid/app/ActivityManager$StackId;->hasWindowShadow(I)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_3

    #@3c
    .line 1387
    const/4 v4, -0x3

    #@3d
    .line 1432
    :cond_1
    :goto_0
    iput v4, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    #@3f
    .line 1433
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@41
    if-gez v5, :cond_2

    #@43
    .line 1434
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@45
    invoke-virtual {v5, v4}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    #@48
    .line 1372
    :cond_2
    return-void

    #@49
    .line 1394
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4c
    move-result-object v0

    #@4d
    .line 1395
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@50
    move-result-object v2

    #@51
    .line 1396
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@53
    .line 1397
    if-nez v2, :cond_4

    #@55
    .line 1398
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@58
    move-result v4

    #@59
    goto :goto_0

    #@5a
    .line 1399
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
    .line 1400
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
    .line 1403
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@75
    move-result v3

    #@76
    .line 1404
    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@79
    move-result v1

    #@7a
    .line 1407
    .local v1, "bop":I
    if-eq v3, v10, :cond_5

    #@7c
    if-ne v1, v10, :cond_6

    #@7e
    .line 1408
    :cond_5
    const/4 v4, -0x1

    #@7f
    .line 1407
    goto :goto_0

    #@80
    .line 1409
    :cond_6
    if-nez v3, :cond_7

    #@82
    .line 1410
    move v4, v1

    #@83
    goto :goto_0

    #@84
    .line 1411
    :cond_7
    if-nez v1, :cond_8

    #@86
    .line 1412
    move v4, v3

    #@87
    goto :goto_0

    #@88
    .line 1414
    :cond_8
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    #@8b
    move-result v4

    #@8c
    goto :goto_0

    #@8d
    .line 1422
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
    .line 1677
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1678
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    #@9
    .line 1676
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
    .line 1965
    if-nez p1, :cond_0

    #@4
    instance-of v3, p0, Landroid/graphics/drawable/ColorDrawable;

    #@6
    if-eqz v3, :cond_0

    #@8
    move-object v1, p0

    #@9
    .line 1966
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    #@b
    .line 1967
    .local v1, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@e
    move-result v0

    #@f
    .line 1968
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    #@12
    move-result v3

    #@13
    if-eq v3, v6, :cond_0

    #@15
    .line 1969
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
    .line 1972
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
    .line 1971
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    #@36
    .line 1973
    return-object v2

    #@37
    .line 1976
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
    .line 989
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static getColorViewLeftInset(II)I
    .locals 1
    .param p0, "stableLeft"    # I
    .param p1, "systemLeft"    # I

    #@0
    .prologue
    .line 997
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
    .line 993
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
    .line 985
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
    .line 1139
    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1140
    iget v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    #@6
    return v0

    #@7
    .line 1142
    :cond_0
    const/4 v0, 0x0

    #@8
    return v0
.end method

.method static getNavBarSize(III)I
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I
    .param p2, "leftInset"    # I

    #@0
    .prologue
    .line 1009
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
    .line 1010
    .restart local p1    # "rightInset":I
    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    move p1, p2

    #@e
    goto :goto_0

    #@f
    :cond_1
    move p1, p0

    #@10
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
    .line 1943
    if-eqz p1, :cond_0

    #@2
    .line 1944
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    .line 1945
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@8
    .line 1946
    invoke-static {v0, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 1950
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p2, :cond_1

    #@f
    .line 1951
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v1

    #@13
    .line 1952
    .local v1, "fallbackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    #@15
    .line 1953
    invoke-static {v1, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 1956
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
    .line 1986
    const/4 v2, -0x1

    #@1
    .line 1987
    .local v2, "workspaceId":I
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@3
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    #@6
    move-result-object v0

    #@7
    .line 1988
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_0

    #@9
    .line 1990
    :try_start_0
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->getWindowStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v2

    #@d
    .line 1995
    :cond_0
    :goto_0
    const/4 v3, -0x1

    #@e
    if-ne v2, v3, :cond_1

    #@10
    .line 1996
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 1991
    :catch_0
    move-exception v1

    #@13
    .line 1992
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    #@15
    const-string/jumbo v4, "Failed to get the workspace ID of a PhoneWindow."

    #@18
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    goto :goto_0

    #@1c
    .line 1998
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    return v2
.end method

.method private static getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 2207
    if-nez p0, :cond_0

    #@2
    .line 2208
    const-string/jumbo v1, ""

    #@5
    return-object v1

    #@6
    .line 2210
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
    .line 2211
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    #@16
    if-lez v1, :cond_1

    #@18
    .line 2212
    array-length v1, v0

    #@19
    add-int/lit8 v1, v1, -0x1

    #@1b
    aget-object v1, v0, v1

    #@1d
    return-object v1

    #@1e
    .line 2214
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
    .line 1883
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 1885
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@7
    move-result-object p1

    #@8
    .line 1886
    const v2, 0x109004f

    #@b
    .line 1887
    const/4 v3, 0x0

    #@c
    .line 1886
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/internal/widget/DecorCaptionView;

    #@12
    .line 1888
    .local v1, "view":Lcom/android/internal/widget/DecorCaptionView;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    #@15
    .line 1889
    return-object v1
.end method

.method private initResizingPaints()V
    .locals 12

    #@0
    .prologue
    .line 2090
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 2091
    const v1, 0x1060075

    #@9
    const/4 v2, 0x0

    #@a
    .line 2090
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    #@d
    move-result v10

    #@e
    .line 2092
    .local v10, "startColor":I
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v0

    #@14
    .line 2093
    const v1, 0x1060076

    #@17
    const/4 v2, 0x0

    #@18
    .line 2092
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    #@1b
    move-result v8

    #@1c
    .line 2094
    .local v8, "endColor":I
    add-int v0, v10, v8

    #@1e
    div-int/lit8 v9, v0, 0x2

    #@20
    .line 2095
    .local v9, "middleColor":I
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    #@22
    new-instance v0, Landroid/graphics/LinearGradient;

    #@24
    .line 2096
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
    .line 2097
    const/4 v6, 0x3

    #@37
    new-array v6, v6, [F

    #@39
    fill-array-data v6, :array_0

    #@3c
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@3e
    .line 2095
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@41
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@44
    .line 2098
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    #@46
    new-instance v0, Landroid/graphics/LinearGradient;

    #@48
    .line 2099
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
    .line 2100
    const/4 v6, 0x3

    #@5b
    new-array v6, v6, [F

    #@5d
    fill-array-data v6, :array_1

    #@60
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@62
    .line 2098
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    #@65
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@68
    .line 2089
    return-void

    #@69
    .line 2097
    nop

    #@6a
    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    #@74
    .line 2100
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
    .line 2144
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    #@3
    .line 2145
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    #@6
    .line 2142
    return-void
.end method

.method static isNavBarToLeftEdge(II)Z
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "leftInset"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1005
    if-nez p0, :cond_0

    #@3
    if-lez p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method static isNavBarToRightEdge(II)Z
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1001
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
    .line 434
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
    .line 435
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
    .line 430
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
    .line 2135
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
    .line 1831
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1832
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    .line 1833
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@b
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    #@d
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@f
    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@11
    .line 1834
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
    .line 1832
    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    .line 1835
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@27
    if-nez v0, :cond_0

    #@29
    .line 1838
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
    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@46
    if-nez v0, :cond_1

    #@48
    .line 1842
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@4b
    move-result-object v0

    #@4c
    .line 1843
    const v1, 0x1080255

    #@4f
    .line 1842
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@52
    move-result-object v0

    #@53
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@55
    .line 1845
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@57
    if-eqz v0, :cond_2

    #@59
    .line 1846
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@5b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@5e
    move-result-object v0

    #@5f
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    #@61
    .line 1847
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@63
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@66
    .line 1830
    :cond_2
    return-void

    #@67
    .line 1834
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
    .line 2121
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2122
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    #@d
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@10
    .line 2123
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    #@12
    .line 2126
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 2127
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@18
    invoke-virtual {v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    #@1b
    .line 2128
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@1d
    .line 2130
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    #@20
    .line 2120
    :cond_1
    return-void
.end method

.method private setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    #@0
    .prologue
    .line 1931
    const v0, 0x1020364

    #@3
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1932
    const v1, 0x1080259

    #@a
    .line 1931
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    #@d
    .line 1933
    const v0, 0x1020365

    #@10
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v0

    #@14
    .line 1934
    const v1, 0x1080257

    #@17
    .line 1933
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    #@1a
    .line 1930
    return-void
.end method

.method private setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    #@0
    .prologue
    .line 1893
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getDecorCaptionShade()I

    #@5
    move-result v0

    #@6
    .line 1894
    .local v0, "shade":I
    packed-switch v0, :pswitch_data_0

    #@9
    .line 1902
    new-instance v1, Landroid/util/TypedValue;

    #@b
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@e
    .line 1903
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
    .line 1907
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
    .line 1908
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    #@29
    .line 1892
    .end local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    return-void

    #@2a
    .line 1896
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    #@2d
    goto :goto_0

    #@2e
    .line 1899
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    #@31
    goto :goto_0

    #@32
    .line 1910
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    #@35
    goto :goto_0

    #@36
    .line 1894
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
    .line 1580
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 1581
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    #@9
    .line 1579
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1582
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x1

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 1583
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    #@14
    goto :goto_0
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 1741
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2
    .line 1742
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
    .line 1743
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@f
    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    #@11
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@13
    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V

    #@16
    .line 1744
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@18
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    #@1b
    .line 1745
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    #@1d
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@20
    move-result-object v0

    #@21
    .line 1746
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@23
    .line 1745
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@26
    .line 1740
    return-void
.end method

.method private setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    .line 1683
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    #@3
    .line 1684
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@5
    .line 1685
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@7
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    #@a
    .line 1686
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@c
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    #@11
    .line 1687
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 1688
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    #@17
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    #@1a
    .line 1710
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@1c
    .line 1711
    const/16 v1, 0x20

    #@1e
    .line 1710
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    #@21
    .line 1682
    return-void

    #@22
    .line 1690
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 1691
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
    .line 1692
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@3a
    new-instance v1, Lcom/android/internal/policy/DecorView$3;

    #@3c
    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;)V

    #@3f
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@42
    .line 1704
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    #@44
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    #@47
    goto :goto_0

    #@48
    .line 1706
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@4a
    const/high16 v1, 0x3f800000    # 1.0f

    #@4c
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    #@4f
    .line 1707
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@51
    const/4 v1, 0x0

    #@52
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    #@55
    goto :goto_0

    #@56
    .line 1691
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
    .line 1924
    const v0, 0x1020364

    #@3
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1925
    const v1, 0x108025a

    #@a
    .line 1924
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    #@d
    .line 1926
    const v0, 0x1020365

    #@10
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    #@13
    move-result-object v0

    #@14
    .line 1927
    const v1, 0x1080258

    #@17
    .line 1926
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    #@1a
    .line 1923
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
    .line 773
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@5
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 774
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@b
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    #@d
    invoke-interface {v3}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    #@10
    .line 775
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@12
    iput-object v6, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    #@14
    .line 779
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@16
    iget-object v0, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    #@18
    .line 780
    .local v0, "callback":Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1a
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@1c
    if-nez v3, :cond_3

    #@1e
    .line 781
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
    .line 782
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2d
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@2f
    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@32
    .line 788
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
    .line 789
    .local v2, "isPopup":Z
    :goto_1
    if-eqz v2, :cond_5

    #@41
    .line 790
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
    .line 795
    .local v1, "helper":Lcom/android/internal/view/menu/MenuHelper;
    :goto_2
    if-eqz v1, :cond_2

    #@4f
    .line 799
    if-eqz v2, :cond_6

    #@51
    move v3, v4

    #@52
    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    #@55
    .line 800
    invoke-interface {v1, v0}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@58
    .line 803
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@5a
    iput-object v1, v3, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    #@5c
    .line 804
    if-eqz v1, :cond_7

    #@5e
    :goto_4
    return v5

    #@5f
    .line 784
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
    .line 788
    goto :goto_1

    #@69
    .line 792
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
    .line 799
    goto :goto_3

    #@78
    :cond_7
    move v5, v4

    #@79
    .line 804
    goto :goto_4
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    #@0
    .prologue
    .line 831
    new-instance v3, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    #@2
    invoke-direct {v3, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    #@5
    .line 832
    .local v3, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v2, 0x0

    #@6
    .line 833
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
    .line 848
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    #@18
    .line 849
    invoke-virtual {v2}, Landroid/view/ActionMode;->getType()I

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_4

    #@1e
    .line 850
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    #@21
    .line 851
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@23
    .line 866
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
    .line 873
    :cond_2
    :goto_2
    return-object v2

    #@36
    .line 835
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
    .line 836
    .local v2, "mode":Landroid/view/ActionMode;
    :catch_0
    move-exception v0

    #@42
    .line 838
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_0

    #@44
    .line 840
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
    .line 852
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
    .line 853
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@58
    if-eqz v4, :cond_5

    #@5a
    .line 854
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@5c
    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    #@5f
    .line 856
    :cond_5
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@61
    goto :goto_1

    #@62
    .line 859
    :cond_6
    invoke-direct {p0, p3, v3, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    #@65
    move-result-object v2

    #@66
    .line 860
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
    .line 861
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    #@75
    goto :goto_1

    #@76
    .line 863
    :cond_7
    const/4 v2, 0x0

    #@77
    .local v2, "mode":Landroid/view/ActionMode;
    goto :goto_1

    #@78
    .line 868
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
    .line 869
    :catch_1
    move-exception v0

    #@83
    .restart local v0    # "ame":Ljava/lang/AbstractMethodError;
    goto :goto_2

    #@84
    .line 842
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
    .line 2223
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 2225
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
    .line 2224
    const/4 v3, 0x1

    #@10
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@13
    move-result v1

    #@14
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    #@16
    .line 2222
    return-void
.end method

.method private updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZ)V
    .locals 16
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "seascape"    # Z
    .param p7, "sideMargin"    # I
    .param p8, "animate"    # Z
    .param p9, "force"    # Z

    #@0
    .prologue
    .line 1161
    move-object/from16 v0, p1

    #@2
    iget v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->systemUiHideFlag:I

    #@4
    and-int v13, v13, p2

    #@6
    if-nez v13, :cond_5

    #@8
    .line 1162
    move-object/from16 v0, p0

    #@a
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@c
    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@f
    move-result-object v13

    #@10
    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@12
    move-object/from16 v0, p1

    #@14
    iget v14, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->hideWindowFlag:I

    #@16
    and-int/2addr v13, v14

    #@17
    if-nez v13, :cond_5

    #@19
    .line 1163
    move-object/from16 v0, p0

    #@1b
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1d
    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@20
    move-result-object v13

    #@21
    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@23
    const/high16 v14, -0x80000000

    #@25
    and-int/2addr v13, v14

    #@26
    if-nez v13, :cond_4

    #@28
    move/from16 v13, p9

    #@2a
    .line 1161
    :goto_0
    move-object/from16 v0, p1

    #@2c
    iput-boolean v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    #@2e
    .line 1165
    move-object/from16 v0, p1

    #@30
    iget-boolean v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    #@32
    if-eqz v13, :cond_7

    #@34
    .line 1166
    const/high16 v13, -0x1000000

    #@36
    and-int v13, v13, p3

    #@38
    if-eqz v13, :cond_7

    #@3a
    .line 1167
    move-object/from16 v0, p0

    #@3c
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@3e
    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@41
    move-result-object v13

    #@42
    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@44
    move-object/from16 v0, p1

    #@46
    iget v14, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->translucentFlag:I

    #@48
    and-int/2addr v13, v14

    #@49
    if-eqz v13, :cond_6

    #@4b
    .end local p9    # "force":Z
    :goto_1
    move/from16 v8, p9

    #@4d
    .line 1168
    .local v8, "show":Z
    :goto_2
    if-eqz v8, :cond_0

    #@4f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    #@52
    move-result v13

    #@53
    if-eqz v13, :cond_8

    #@55
    :cond_0
    const/4 v9, 0x0

    #@56
    .line 1170
    .local v9, "showView":Z
    :goto_3
    const/4 v12, 0x0

    #@57
    .line 1171
    .local v12, "visibilityChanged":Z
    move-object/from16 v0, p1

    #@59
    iget-object v10, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@5b
    .line 1173
    .local v10, "view":Landroid/view/View;
    if-eqz p5, :cond_9

    #@5d
    const/4 v5, -0x1

    #@5e
    .line 1174
    .local v5, "resolvedHeight":I
    :goto_4
    if-eqz p5, :cond_a

    #@60
    move/from16 v6, p4

    #@62
    .line 1175
    .local v6, "resolvedWidth":I
    :goto_5
    if-eqz p5, :cond_c

    #@64
    .line 1176
    if-eqz p6, :cond_b

    #@66
    move-object/from16 v0, p1

    #@68
    iget v4, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->seascapeGravity:I

    #@6a
    .line 1179
    .local v4, "resolvedGravity":I
    :goto_6
    if-nez v10, :cond_e

    #@6c
    .line 1180
    if-eqz v9, :cond_1

    #@6e
    .line 1181
    new-instance v10, Landroid/view/View;

    #@70
    .end local v10    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    #@72
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@74
    invoke-direct {v10, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@77
    .restart local v10    # "view":Landroid/view/View;
    move-object/from16 v0, p1

    #@79
    iput-object v10, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@7b
    .line 1182
    move/from16 v0, p3

    #@7d
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    #@80
    .line 1183
    move-object/from16 v0, p1

    #@82
    iget-object v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->transitionName:Ljava/lang/String;

    #@84
    invoke-virtual {v10, v13}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    #@87
    .line 1184
    move-object/from16 v0, p1

    #@89
    iget v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->id:I

    #@8b
    invoke-virtual {v10, v13}, Landroid/view/View;->setId(I)V

    #@8e
    .line 1185
    const/4 v12, 0x1

    #@8f
    .line 1186
    const/4 v13, 0x4

    #@90
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    #@93
    .line 1187
    const/4 v13, 0x0

    #@94
    move-object/from16 v0, p1

    #@96
    iput v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    #@98
    .line 1189
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    #@9a
    invoke-direct {v3, v6, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@9d
    .line 1191
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p6, :cond_d

    #@9f
    .line 1192
    move/from16 v0, p7

    #@a1
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@a3
    .line 1196
    :goto_7
    move-object/from16 v0, p0

    #@a5
    invoke-virtual {v0, v10, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@a8
    .line 1197
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    #@ab
    .line 1220
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_8
    if-eqz v12, :cond_3

    #@ad
    .line 1221
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@b0
    move-result-object v13

    #@b1
    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->cancel()V

    #@b4
    .line 1222
    if-eqz p8, :cond_2

    #@b6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    #@b9
    move-result v13

    #@ba
    if-eqz v13, :cond_16

    #@bc
    .line 1242
    :cond_2
    const/high16 v13, 0x3f800000    # 1.0f

    #@be
    invoke-virtual {v10, v13}, Landroid/view/View;->setAlpha(F)V

    #@c1
    .line 1243
    if-eqz v9, :cond_19

    #@c3
    const/4 v13, 0x0

    #@c4
    :goto_9
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    #@c7
    .line 1246
    :cond_3
    :goto_a
    move-object/from16 v0, p1

    #@c9
    iput-boolean v8, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    #@cb
    .line 1247
    move/from16 v0, p3

    #@cd
    move-object/from16 v1, p1

    #@cf
    iput v0, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    #@d1
    .line 1160
    return-void

    #@d2
    .line 1163
    .end local v4    # "resolvedGravity":I
    .end local v5    # "resolvedHeight":I
    .end local v6    # "resolvedWidth":I
    .end local v8    # "show":Z
    .end local v9    # "showView":Z
    .end local v10    # "view":Landroid/view/View;
    .end local v12    # "visibilityChanged":Z
    .restart local p9    # "force":Z
    :cond_4
    const/4 v13, 0x1

    #@d3
    goto/16 :goto_0

    #@d5
    .line 1161
    :cond_5
    const/4 v13, 0x0

    #@d6
    goto/16 :goto_0

    #@d8
    .line 1167
    :cond_6
    const/16 p9, 0x1

    #@da
    goto/16 :goto_1

    #@dc
    .line 1165
    :cond_7
    const/4 v8, 0x0

    #@dd
    goto/16 :goto_2

    #@df
    .line 1168
    .end local p9    # "force":Z
    .restart local v8    # "show":Z
    :cond_8
    if-lez p4, :cond_0

    #@e1
    const/4 v9, 0x1

    #@e2
    .restart local v9    # "showView":Z
    goto/16 :goto_3

    #@e4
    .line 1173
    .restart local v10    # "view":Landroid/view/View;
    .restart local v12    # "visibilityChanged":Z
    :cond_9
    move/from16 v5, p4

    #@e6
    .restart local v5    # "resolvedHeight":I
    goto/16 :goto_4

    #@e8
    .line 1174
    :cond_a
    const/4 v6, -0x1

    #@e9
    .restart local v6    # "resolvedWidth":I
    goto/16 :goto_5

    #@eb
    .line 1176
    :cond_b
    move-object/from16 v0, p1

    #@ed
    iget v4, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->horizontalGravity:I

    #@ef
    .restart local v4    # "resolvedGravity":I
    goto/16 :goto_6

    #@f1
    .line 1177
    .end local v4    # "resolvedGravity":I
    :cond_c
    move-object/from16 v0, p1

    #@f3
    iget v4, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->verticalGravity:I

    #@f5
    .restart local v4    # "resolvedGravity":I
    goto/16 :goto_6

    #@f7
    .line 1194
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_d
    move/from16 v0, p7

    #@f9
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@fb
    goto :goto_7

    #@fc
    .line 1200
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    if-eqz v9, :cond_11

    #@fe
    const/4 v11, 0x0

    #@ff
    .line 1201
    .local v11, "vis":I
    :goto_b
    move-object/from16 v0, p1

    #@101
    iget v13, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    #@103
    if-eq v13, v11, :cond_12

    #@105
    const/4 v12, 0x1

    #@106
    .line 1202
    :goto_c
    move-object/from16 v0, p1

    #@108
    iput v11, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    #@10a
    .line 1203
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10d
    move-result-object v3

    #@10e
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    #@110
    .line 1204
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p6, :cond_13

    #@112
    const/4 v7, 0x0

    #@113
    .line 1205
    .local v7, "rightMargin":I
    :goto_d
    if-eqz p6, :cond_14

    #@115
    move/from16 v2, p7

    #@117
    .line 1206
    .local v2, "leftMargin":I
    :goto_e
    iget v13, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@119
    if-ne v13, v5, :cond_f

    #@11b
    iget v13, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@11d
    if-eq v13, v6, :cond_15

    #@11f
    .line 1209
    :cond_f
    :goto_f
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@121
    .line 1210
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@123
    .line 1211
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@125
    .line 1212
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@127
    .line 1213
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@129
    .line 1214
    invoke-virtual {v10, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@12c
    .line 1216
    :cond_10
    if-eqz v9, :cond_1

    #@12e
    .line 1217
    move/from16 v0, p3

    #@130
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    #@133
    goto/16 :goto_8

    #@135
    .line 1200
    .end local v2    # "leftMargin":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "rightMargin":I
    .end local v11    # "vis":I
    :cond_11
    const/4 v11, 0x4

    #@136
    .restart local v11    # "vis":I
    goto :goto_b

    #@137
    .line 1201
    :cond_12
    const/4 v12, 0x0

    #@138
    goto :goto_c

    #@139
    .line 1204
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_13
    move/from16 v7, p7

    #@13b
    .restart local v7    # "rightMargin":I
    goto :goto_d

    #@13c
    .line 1205
    :cond_14
    const/4 v2, 0x0

    #@13d
    .restart local v2    # "leftMargin":I
    goto :goto_e

    #@13e
    .line 1207
    :cond_15
    iget v13, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@140
    if-ne v13, v4, :cond_f

    #@142
    iget v13, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@144
    if-ne v13, v7, :cond_f

    #@146
    .line 1208
    iget v13, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@148
    if-eq v13, v2, :cond_10

    #@14a
    goto :goto_f

    #@14b
    .line 1223
    .end local v2    # "leftMargin":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "rightMargin":I
    .end local v11    # "vis":I
    :cond_16
    if-eqz v9, :cond_18

    #@14d
    .line 1224
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    #@150
    move-result v13

    #@151
    if-eqz v13, :cond_17

    #@153
    .line 1225
    const/4 v13, 0x0

    #@154
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    #@157
    .line 1226
    const/4 v13, 0x0

    #@158
    invoke-virtual {v10, v13}, Landroid/view/View;->setAlpha(F)V

    #@15b
    .line 1228
    :cond_17
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@15e
    move-result-object v13

    #@15f
    const/high16 v14, 0x3f800000    # 1.0f

    #@161
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@164
    move-result-object v13

    #@165
    move-object/from16 v0, p0

    #@167
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    #@169
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@16c
    move-result-object v13

    #@16d
    .line 1229
    move-object/from16 v0, p0

    #@16f
    iget v14, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    #@171
    int-to-long v14, v14

    #@172
    .line 1228
    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@175
    goto/16 :goto_a

    #@177
    .line 1231
    :cond_18
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@17a
    move-result-object v13

    #@17b
    const/4 v14, 0x0

    #@17c
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@17f
    move-result-object v13

    #@180
    move-object/from16 v0, p0

    #@182
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    #@184
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@187
    move-result-object v13

    #@188
    .line 1232
    move-object/from16 v0, p0

    #@18a
    iget v14, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    #@18c
    int-to-long v14, v14

    #@18d
    .line 1231
    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@190
    move-result-object v13

    #@191
    .line 1233
    new-instance v14, Lcom/android/internal/policy/DecorView$1;

    #@193
    move-object/from16 v0, p0

    #@195
    move-object/from16 v1, p1

    #@197
    invoke-direct {v14, v0, v1}, Lcom/android/internal/policy/DecorView$1;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;)V

    #@19a
    .line 1231
    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    #@19d
    goto/16 :goto_a

    #@19f
    .line 1243
    :cond_19
    const/4 v13, 0x4

    #@1a0
    goto/16 :goto_9
.end method

.method private updateColorViewTranslations()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1253
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    #@3
    .line 1254
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@5
    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1255
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
    .line 1257
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@16
    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1258
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
    .line 1250
    :cond_1
    return-void

    #@25
    .restart local v0    # "rootScrollY":I
    :cond_2
    move v1, v2

    #@26
    .line 1255
    goto :goto_0

    #@27
    :cond_3
    move v0, v2

    #@28
    .line 1258
    goto :goto_1
.end method

.method private updateElevation()V
    .locals 4

    #@0
    .prologue
    .line 2149
    const/4 v0, 0x0

    #@1
    .line 2150
    .local v0, "elevation":F
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    #@3
    .line 2153
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
    .line 2167
    :cond_0
    const/4 v2, 0x0

    #@12
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    #@14
    .line 2172
    :goto_0
    if-nez v1, :cond_1

    #@16
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 2173
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    #@1d
    move-result v2

    #@1e
    cmpl-float v2, v2, v0

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 2174
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@24
    invoke-virtual {v2, v0}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    #@27
    .line 2148
    :cond_2
    return-void

    #@28
    .line 2154
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_5

    #@2e
    .line 2155
    const/16 v2, 0x14

    #@30
    .line 2154
    :goto_1
    int-to-float v0, v2

    #@31
    .line 2160
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
    .line 2161
    const/high16 v0, 0x41a00000    # 20.0f

    #@3c
    .line 2164
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    #@3f
    move-result v0

    #@40
    .line 2165
    const/4 v2, 0x1

    #@41
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    #@43
    goto :goto_0

    #@44
    .line 2155
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
    .line 1334
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
    .line 1336
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@e
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1337
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
    .line 1339
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
    .line 1340
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@2b
    move-result v2

    #@2c
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@2e
    .line 1341
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@30
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@32
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@35
    .line 1345
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@37
    if-nez v2, :cond_2

    #@39
    .line 1346
    new-instance v2, Landroid/view/View;

    #@3b
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@3d
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@40
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@42
    .line 1347
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@44
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@46
    .line 1348
    const v4, 0x1060032

    #@49
    .line 1347
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    #@4c
    move-result v3

    #@4d
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    #@50
    .line 1349
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
    .line 1350
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    #@5c
    .line 1351
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@5f
    move-result v5

    #@60
    .line 1350
    const/4 v6, -0x1

    #@61
    .line 1352
    const v7, 0x800053

    #@64
    .line 1350
    invoke-direct {v4, v6, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@67
    .line 1349
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@6a
    .line 1358
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->updateNavigationGuardColor()V

    #@6d
    .line 1332
    :cond_1
    return-void

    #@6e
    .line 1354
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@70
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@73
    move-result-object v0

    #@74
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@76
    .line 1355
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@79
    move-result v2

    #@7a
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@7c
    .line 1356
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
    .line 1263
    const/4 v6, 0x0

    #@2
    .line 1265
    .local v6, "showStatusGuard":Z
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@4
    if-eqz v7, :cond_3

    #@6
    .line 1266
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
    .line 1269
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@12
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v1

    #@16
    .line 1268
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@18
    .line 1270
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    #@19
    .line 1271
    .local v2, "mlpChanged":Z
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@1b
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_a

    #@21
    .line 1272
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    #@23
    if-nez v7, :cond_0

    #@25
    .line 1273
    new-instance v7, Landroid/graphics/Rect;

    #@27
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    #@2a
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    #@2c
    .line 1275
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    #@2e
    .line 1279
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@30
    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    #@32
    invoke-virtual {v7, p1, v5}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    #@35
    .line 1280
    iget v7, v5, Landroid/graphics/Rect;->top:I

    #@37
    if-nez v7, :cond_5

    #@39
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@3c
    move-result v3

    #@3d
    .line 1281
    .local v3, "newMargin":I
    :goto_0
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@3f
    if-eq v7, v3, :cond_1

    #@41
    .line 1282
    const/4 v2, 0x1

    #@42
    .line 1283
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@45
    move-result v7

    #@46
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@48
    .line 1285
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@4a
    if-nez v7, :cond_6

    #@4c
    .line 1286
    new-instance v7, Landroid/view/View;

    #@4e
    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@50
    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@53
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@55
    .line 1287
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@57
    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    #@59
    .line 1288
    const v10, 0x1060032

    #@5c
    .line 1287
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    #@5f
    move-result v9

    #@60
    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    #@63
    .line 1289
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
    .line 1290
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    #@6f
    .line 1291
    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@71
    .line 1290
    const/4 v12, -0x1

    #@72
    .line 1291
    const v13, 0x800033

    #@75
    .line 1290
    invoke-direct {v10, v12, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@78
    .line 1289
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@7b
    .line 1304
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@7d
    if-eqz v7, :cond_7

    #@7f
    const/4 v6, 0x1

    #@80
    .line 1310
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
    .line 1313
    .local v4, "nonOverlay":Z
    :goto_3
    if-eqz v4, :cond_9

    #@8d
    move v7, v6

    #@8e
    .line 1312
    :goto_4
    invoke-virtual {p1, v8, v7, v8, v8}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    #@91
    move-result-object p1

    #@92
    .line 1321
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    #@94
    .line 1322
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    #@96
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@99
    .line 1326
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@9b
    if-eqz v7, :cond_4

    #@9d
    .line 1327
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@9f
    if-eqz v6, :cond_b

    #@a1
    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    #@a4
    .line 1329
    :cond_4
    return-object p1

    #@a5
    .line 1280
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "mlpChanged":Z
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x0

    #@a6
    .restart local v3    # "newMargin":I
    goto :goto_0

    #@a7
    .line 1294
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@a9
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@ac
    move-result-object v0

    #@ad
    .line 1293
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@af
    .line 1295
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@b1
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@b3
    if-eq v7, v9, :cond_1

    #@b5
    .line 1296
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@b7
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    #@b9
    .line 1297
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@bb
    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@be
    goto :goto_1

    #@bf
    .line 1304
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    #@c0
    goto :goto_2

    #@c1
    :cond_8
    move v4, v8

    #@c2
    .line 1310
    goto :goto_3

    #@c3
    .restart local v4    # "nonOverlay":Z
    :cond_9
    move v7, v8

    #@c4
    .line 1313
    goto :goto_4

    #@c5
    .line 1316
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@c7
    if-eqz v7, :cond_2

    #@c9
    .line 1317
    const/4 v2, 0x1

    #@ca
    .line 1318
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@cc
    goto :goto_5

    #@cd
    .line 1327
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
    .line 2002
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2003
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@6
    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->removeContentView()V

    #@9
    .line 2001
    :cond_0
    return-void

    #@a
    .line 2007
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
    .line 2008
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    .line 2009
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
    .line 2010
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    #@24
    if-eq v1, v2, :cond_2

    #@26
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@28
    if-eq v1, v2, :cond_2

    #@2a
    .line 2011
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    #@2d
    .line 2007
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
    .line 387
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 388
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
    .line 389
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v1

    #@14
    .line 388
    :goto_0
    return v1

    #@15
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@17
    if-gez v1, :cond_0

    #@19
    .line 389
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
    .line 294
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@5
    move-result v4

    #@6
    .line 295
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@9
    move-result v0

    #@a
    .line 296
    .local v0, "action":I
    if-nez v0, :cond_0

    #@c
    move v3, v5

    #@d
    .line 298
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
    .line 301
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
    .line 302
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@24
    move-result v2

    #@25
    .line 303
    .local v2, "handled":Z
    if-eqz v2, :cond_1

    #@27
    .line 304
    return v5

    #@28
    .end local v2    # "handled":Z
    .end local v3    # "isDown":Z
    :cond_0
    move v3, v6

    #@29
    .line 296
    goto :goto_0

    #@2a
    .line 310
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
    .line 311
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
    .line 312
    return v5

    #@45
    .line 317
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@47
    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@4a
    move-result v6

    #@4b
    if-nez v6, :cond_4

    #@4d
    .line 318
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@4f
    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@52
    move-result-object v1

    #@53
    .line 319
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
    .line 321
    .restart local v2    # "handled":Z
    :goto_1
    if-eqz v2, :cond_4

    #@5f
    .line 322
    return v5

    #@60
    .line 320
    .end local v2    # "handled":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@63
    move-result v2

    #@64
    goto :goto_1

    #@65
    .line 326
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
    .line 327
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
    .line 334
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@4
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 335
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
    .line 337
    .local v1, "handled":Z
    if-eqz v1, :cond_1

    #@18
    .line 338
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1a
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 339
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@20
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@22
    iput-boolean v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    #@24
    .line 341
    :cond_0
    return v6

    #@25
    .line 346
    .end local v1    # "handled":Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@27
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@2a
    move-result-object v0

    #@2b
    .line 347
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
    .line 348
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@38
    move-result v1

    #@39
    .line 349
    .restart local v1    # "handled":Z
    :goto_0
    if-eqz v1, :cond_4

    #@3b
    .line 350
    return v6

    #@3c
    .line 347
    .end local v1    # "handled":Z
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@3e
    if-gez v3, :cond_2

    #@40
    .line 348
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    #@43
    move-result v1

    #@44
    goto :goto_0

    #@45
    .line 358
    .restart local v1    # "handled":Z
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@47
    invoke-virtual {v3, v7, v7}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@4a
    move-result-object v2

    #@4b
    .line 359
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_5

    #@4d
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@4f
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@51
    if-nez v3, :cond_5

    #@53
    .line 360
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@55
    invoke-virtual {v3, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    #@58
    .line 361
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
    .line 363
    iput-boolean v7, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    #@64
    .line 364
    if-eqz v1, :cond_5

    #@66
    .line 365
    return v6

    #@67
    .line 368
    :cond_5
    return v7
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 556
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
    .line 561
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 557
    :cond_1
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 558
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 374
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
    .line 375
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v1

    #@14
    .line 374
    :goto_0
    return v1

    #@15
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@17
    if-gez v1, :cond_0

    #@19
    .line 375
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
    .line 380
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 381
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
    .line 382
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v1

    #@14
    .line 381
    :goto_0
    return v1

    #@15
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@17
    if-gez v1, :cond_0

    #@19
    .line 382
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
    .line 753
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 755
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 756
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@c
    .line 752
    :cond_0
    return-void
.end method

.method enableCaption(Z)V
    .locals 1
    .param p1, "attachedAndVisible"    # Z

    #@0
    .prologue
    .line 1755
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1756
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    #@6
    .line 1757
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1758
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    #@f
    .line 1754
    :cond_0
    return-void
.end method

.method finishChanging()V
    .locals 1

    #@0
    .prologue
    .line 906
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    #@3
    .line 907
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    #@6
    .line 905
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 268
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@2
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    #@5
    move-result v2

    #@6
    .line 269
    .local v2, "statusOpaque":Z
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@8
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    #@b
    move-result v1

    #@c
    .line 270
    .local v1, "navOpaque":Z
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@f
    move-result v0

    #@10
    .line 273
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
    .line 277
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
    .line 281
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@10
    invoke-virtual {v0, p2}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 283
    :cond_0
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method getCaptionHeight()I
    .locals 1

    #@0
    .prologue
    .line 2183
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
    .line 2179
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
    .line 981
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
    .line 949
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v0

    #@8
    .line 950
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    #@d
    .line 951
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    and-int/lit16 v1, v1, 0x100

    #@11
    if-nez v1, :cond_1

    #@13
    .line 956
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@15
    if-ne v1, v4, :cond_0

    #@17
    .line 957
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@19
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@1c
    move-result v2

    #@1d
    iput v2, v1, Landroid/graphics/Rect;->top:I

    #@1f
    .line 958
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@21
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@24
    move-result v2

    #@25
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    #@27
    .line 959
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@2a
    move-result v1

    #@2b
    .line 960
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@2e
    move-result v2

    #@2f
    .line 959
    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@32
    move-result-object p1

    #@33
    .line 962
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
    .line 963
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@3f
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@42
    move-result v2

    #@43
    iput v2, v1, Landroid/graphics/Rect;->left:I

    #@45
    .line 964
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@47
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@4a
    move-result v2

    #@4b
    iput v2, v1, Landroid/graphics/Rect;->right:I

    #@4d
    .line 965
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@50
    move-result v1

    #@51
    .line 966
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@54
    move-result v2

    #@55
    .line 965
    invoke-virtual {p1, v3, v1, v3, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@58
    move-result-object p1

    #@59
    .line 969
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    #@5b
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@62
    .line 970
    const/4 v1, 0x1

    #@63
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@66
    move-result-object p1

    #@67
    .line 971
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@6a
    move-result-object p1

    #@6b
    .line 972
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)V

    #@6e
    .line 973
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@71
    move-result-object v1

    #@72
    if-eqz v1, :cond_2

    #@74
    .line 974
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    #@77
    .line 976
    :cond_2
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    #@0
    .prologue
    .line 1466
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    #@3
    .line 1468
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@5
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@8
    move-result-object v0

    #@9
    .line 1469
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
    .line 1473
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@15
    const/4 v2, -0x1

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 1481
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    #@1d
    .line 1484
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    #@1f
    if-nez v1, :cond_4

    #@21
    .line 1487
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    #@28
    .line 1488
    const/4 v1, 0x1

    #@29
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    #@2b
    .line 1465
    :cond_2
    :goto_1
    return-void

    #@2c
    .line 1469
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@2e
    if-gez v1, :cond_0

    #@30
    .line 1470
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    #@33
    goto :goto_0

    #@34
    .line 1489
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@36
    if-eqz v1, :cond_2

    #@38
    .line 1492
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
    .line 1536
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 1537
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    #@9
    .line 1535
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
    .line 1774
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@4
    .line 1775
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getStackId()I

    #@7
    move-result v1

    #@8
    .line 1776
    .local v1, "workspaceId":I
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@a
    if-eq v2, v1, :cond_1

    #@c
    .line 1777
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@e
    .line 1778
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
    .line 1780
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1c
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@1f
    move-result-object v0

    #@20
    .line 1781
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    #@23
    move-result-object v2

    #@24
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@26
    .line 1782
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 1783
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@2c
    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    #@2f
    move-result-object v2

    #@30
    if-nez v2, :cond_0

    #@32
    .line 1784
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@34
    .line 1785
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #@36
    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@39
    .line 1784
    const/4 v4, 0x0

    #@3a
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@3d
    .line 1787
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@3f
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    #@42
    .line 1788
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@44
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@46
    .line 1789
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    #@48
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@4b
    .line 1788
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@4e
    .line 1797
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    #@51
    .line 1798
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    #@54
    .line 1773
    return-void

    #@55
    .line 1791
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@57
    if-eqz v2, :cond_1

    #@59
    .line 1793
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
    .line 1794
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
    .line 2066
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2067
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 2069
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
    .line 1498
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    #@5
    .line 1500
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@7
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@a
    move-result-object v0

    #@b
    .line 1501
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@d
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@f
    if-gez v2, :cond_0

    #@11
    .line 1502
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    #@14
    .line 1505
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@16
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1506
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@1c
    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    #@1e
    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    #@21
    .line 1509
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 1510
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    #@27
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@2a
    .line 1511
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@2c
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_2

    #@32
    .line 1512
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@34
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    #@37
    .line 1514
    :cond_2
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    #@39
    .line 1516
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@3b
    if-eqz v2, :cond_4

    #@3d
    .line 1517
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@3f
    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    #@42
    .line 1518
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@44
    .line 1521
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@46
    invoke-virtual {v2, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@49
    move-result-object v1

    #@4a
    .line 1522
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
    .line 1523
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@56
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    #@59
    .line 1526
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    #@5c
    .line 1528
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    #@5e
    if-eqz v2, :cond_6

    #@60
    .line 1529
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    #@67
    .line 1530
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    #@69
    .line 1497
    :cond_6
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 289
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
    .line 287
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
    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@5
    move-result v0

    #@6
    .line 441
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
    .line 450
    if-nez v0, :cond_0

    #@12
    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@15
    move-result v3

    #@16
    float-to-int v1, v3

    #@17
    .line 452
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1a
    move-result v3

    #@1b
    float-to-int v2, v3

    #@1c
    .line 453
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/DecorView;->isOutOfInnerBounds(II)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 454
    return v5

    #@23
    .line 459
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@25
    if-ltz v3, :cond_1

    #@27
    .line 460
    if-nez v0, :cond_1

    #@29
    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@2c
    move-result v3

    #@2d
    float-to-int v1, v3

    #@2e
    .line 462
    .restart local v1    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@31
    move-result v3

    #@32
    float-to-int v2, v3

    #@33
    .line 463
    .restart local v2    # "y":I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_1

    #@39
    .line 464
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@3b
    iget v4, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@3d
    invoke-virtual {v3, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    #@40
    .line 465
    return v5

    #@41
    .line 471
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
    .line 726
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@4
    .line 727
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getOutsets(Landroid/graphics/Rect;)V

    #@9
    .line 728
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@b
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@d
    if-lez v0, :cond_0

    #@f
    .line 729
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@11
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@13
    neg-int v0, v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    #@17
    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@19
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@1b
    if-lez v0, :cond_1

    #@1d
    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    #@1f
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@21
    neg-int v0, v0

    #@22
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    #@25
    .line 734
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@2b
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@2d
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    #@30
    .line 737
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    #@32
    if-eqz v0, :cond_3

    #@34
    .line 738
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    #@36
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@38
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    #@3b
    .line 743
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    #@3e
    .line 744
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    #@40
    .line 746
    if-eqz p1, :cond_4

    #@42
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    #@44
    if-ne v0, v1, :cond_4

    #@46
    .line 747
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    #@4d
    .line 725
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 610
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
    .line 612
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
    .line 614
    .local v7, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@26
    move-result v17

    #@27
    .line 615
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@2a
    move-result v5

    #@2b
    .line 617
    .local v5, "heightMode":I
    const/4 v2, 0x0

    #@2c
    .line 618
    .local v2, "fixedWidth":Z
    const/16 v19, 0x0

    #@2e
    move/from16 v0, v19

    #@30
    move-object/from16 v1, p0

    #@32
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    #@34
    .line 619
    const/high16 v19, -0x80000000

    #@36
    move/from16 v0, v17

    #@38
    move/from16 v1, v19

    #@3a
    if-ne v0, v1, :cond_0

    #@3c
    .line 620
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
    .line 621
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
    .line 623
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
    .line 624
    invoke-virtual {v14, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@5f
    move-result v19

    #@60
    move/from16 v0, v19

    #@62
    float-to-int v15, v0

    #@63
    .line 631
    .local v15, "w":I
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@66
    move-result v18

    #@67
    .line 632
    .local v18, "widthSize":I
    if-lez v15, :cond_c

    #@69
    .line 634
    move/from16 v0, v18

    #@6b
    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    #@6e
    move-result v19

    #@6f
    const/high16 v20, 0x40000000    # 2.0f

    #@71
    .line 633
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@74
    move-result p1

    #@75
    .line 635
    const/4 v2, 0x1

    #@76
    .line 645
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
    .line 646
    const/high16 v19, -0x80000000

    #@80
    move/from16 v0, v19

    #@82
    if-ne v5, v0, :cond_1

    #@84
    .line 647
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
    .line 649
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
    .line 651
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
    .line 652
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@a7
    move-result v19

    #@a8
    move/from16 v0, v19

    #@aa
    float-to-int v3, v0

    #@ab
    .line 659
    .local v3, "h":I
    :goto_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@ae
    move-result v6

    #@af
    .line 660
    .local v6, "heightSize":I
    if-lez v3, :cond_10

    #@b1
    .line 662
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    #@b4
    move-result v19

    #@b5
    const/high16 v20, 0x40000000    # 2.0f

    #@b7
    .line 661
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@ba
    move-result p2

    #@bb
    .line 671
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
    .line 672
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
    .line 673
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@e7
    move-result v11

    #@e8
    .line 674
    .local v11, "mode":I
    if-eqz v11, :cond_3

    #@ea
    .line 675
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@ed
    move-result v4

    #@ee
    .line 677
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
    .line 676
    move/from16 v0, v19

    #@10c
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@10f
    move-result p2

    #@110
    .line 680
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
    .line 681
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@12f
    move-result v11

    #@130
    .line 682
    .restart local v11    # "mode":I
    if-eqz v11, :cond_5

    #@132
    .line 683
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@135
    move-result v16

    #@136
    .line 685
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
    .line 684
    move/from16 v0, v19

    #@154
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@157
    move-result p1

    #@158
    .line 689
    .end local v11    # "mode":I
    .end local v16    # "width":I
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@15b
    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    #@15e
    move-result v16

    #@15f
    .line 692
    .restart local v16    # "width":I
    const/4 v8, 0x0

    #@160
    .line 694
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
    .line 696
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
    .line 697
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
    .line 698
    .local v12, "tv":Landroid/util/TypedValue;
    :goto_7
    iget v0, v12, Landroid/util/TypedValue;->type:I

    #@182
    move/from16 v19, v0

    #@184
    if-eqz v19, :cond_6

    #@186
    .line 700
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
    .line 701
    invoke-virtual {v12, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@195
    move-result v19

    #@196
    move/from16 v0, v19

    #@198
    float-to-int v10, v0

    #@199
    .line 710
    .local v10, "min":I
    :goto_8
    move/from16 v0, v16

    #@19b
    if-ge v0, v10, :cond_6

    #@19d
    .line 711
    const/high16 v19, 0x40000000    # 2.0f

    #@19f
    move/from16 v0, v19

    #@1a1
    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1a4
    move-result p1

    #@1a5
    .line 712
    const/4 v8, 0x1

    #@1a6
    .line 719
    .end local v10    # "min":I
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_6
    if-eqz v8, :cond_7

    #@1a8
    .line 720
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@1ab
    .line 609
    :cond_7
    return-void

    #@1ac
    .line 612
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
    .line 620
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
    .line 625
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
    .line 626
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
    .line 628
    .end local v15    # "w":I
    :cond_b
    const/4 v15, 0x0

    #@1e7
    .restart local v15    # "w":I
    goto/16 :goto_2

    #@1e9
    .line 638
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
    .line 639
    const/high16 v20, -0x80000000

    #@207
    .line 637
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@20a
    move-result p1

    #@20b
    .line 640
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
    .line 648
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
    .line 653
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
    .line 654
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
    .line 656
    .end local v3    # "h":I
    :cond_f
    const/4 v3, 0x0

    #@24d
    .restart local v3    # "h":I
    goto/16 :goto_5

    #@24f
    .line 663
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
    .line 665
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
    .line 664
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@288
    move-result p2

    #@289
    .line 666
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
    .line 697
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
    .line 702
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
    .line 703
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
    .line 705
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
    .line 2086
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawResizingShadowIfNeeded(Landroid/view/DisplayListCanvas;)V

    #@3
    .line 2085
    return-void
.end method

.method public onRequestDraw(Z)V
    .locals 1
    .param p1, "reportNextDraw"    # Z

    #@0
    .prologue
    .line 2074
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 2075
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@6
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onRequestDraw(Z)V

    #@9
    .line 2073
    :cond_0
    :goto_0
    return-void

    #@a
    .line 2076
    :cond_1
    if-eqz p1, :cond_0

    #@c
    .line 2078
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 2079
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
    .line 1802
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getStackId()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    #@8
    .line 1804
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1805
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    #@f
    .line 1806
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@11
    .line 1807
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    .line 1808
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@19
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    #@1c
    move-result v5

    #@1d
    .line 1809
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@1f
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    #@22
    move-result v6

    #@23
    move-object v1, p0

    #@24
    .line 1806
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    #@27
    .line 1812
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@2d
    .line 1813
    invoke-virtual {p1, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@30
    move-result-object v7

    #@31
    .line 1814
    .local v7, "root":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@33
    if-eqz v0, :cond_2

    #@35
    .line 1815
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@37
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    #@3a
    move-result-object v0

    #@3b
    if-nez v0, :cond_1

    #@3d
    .line 1816
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@3f
    .line 1817
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    #@41
    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@44
    .line 1816
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@47
    .line 1819
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@49
    .line 1820
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@4b
    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@4e
    .line 1819
    invoke-virtual {v0, v7, v1}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@51
    .line 1826
    :goto_0
    check-cast v7, Landroid/view/ViewGroup;

    #@53
    .end local v7    # "root":Landroid/view/View;
    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@55
    .line 1827
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    #@58
    .line 1801
    return-void

    #@59
    .line 1824
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
    .line 1564
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    #@2
    .line 1565
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    #@5
    .line 1563
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 426
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
    .line 2058
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    #@3
    .line 2059
    const/4 v0, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@8
    .line 2060
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    #@b
    .line 2061
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    #@12
    .line 2057
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
    .line 2028
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2030
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    #@b
    .line 2031
    return-void

    #@c
    .line 2033
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 2034
    return-void

    #@11
    .line 2036
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHardwareRenderer()Landroid/view/ThreadedRenderer;

    #@14
    move-result-object v3

    #@15
    .line 2037
    .local v3, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v3, :cond_2

    #@17
    .line 2038
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    #@1a
    .line 2039
    new-instance v1, Lcom/android/internal/policy/BackdropFrameRenderer;

    #@1c
    .line 2040
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@1e
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    .line 2041
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@24
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    #@27
    move-result v8

    #@28
    .line 2042
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
    .line 2039
    invoke-direct/range {v1 .. v13}, Lcom/android/internal/policy/BackdropFrameRenderer;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@3b
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@3d
    .line 2048
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    #@40
    .line 2050
    const/4 v1, 0x0

    #@41
    const/4 v2, 0x0

    #@42
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@45
    .line 2052
    :cond_2
    move/from16 v0, p5

    #@47
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    #@49
    .line 2053
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    #@50
    .line 2027
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1440
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    #@4
    .line 1444
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
    .line 1449
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@13
    move-result-object v0

    #@14
    .line 1450
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
    .line 1454
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 1455
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@24
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    #@27
    .line 1457
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@29
    if-eqz v1, :cond_3

    #@2b
    .line 1458
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    #@2d
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    #@30
    .line 1461
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    #@33
    .line 1439
    return-void

    #@34
    .line 1445
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@36
    iget v1, v1, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    #@38
    if-eqz v1, :cond_0

    #@3a
    .line 1446
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@3c
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    #@3f
    goto :goto_0

    #@40
    .line 1450
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@42
    if-gez v1, :cond_1

    #@44
    .line 1451
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
    .line 2020
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2021
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@9
    .line 2019
    :cond_0
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    #@0
    .prologue
    .line 944
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    #@5
    .line 943
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
    .line 2233
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@3
    invoke-virtual {v1, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@6
    move-result-object v0

    #@7
    .line 2234
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
    .line 2235
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
    .line 2232
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
    .line 535
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
    .line 536
    return-void

    #@e
    .line 542
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 543
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@14
    const/4 v1, 0x6

    #@15
    if-ne v0, v1, :cond_2

    #@17
    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    #@1a
    move-result v0

    #@1b
    const/4 v1, 0x1

    #@1c
    if-ne v0, v1, :cond_3

    #@1e
    .line 547
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@25
    .line 534
    :goto_0
    return-void

    #@26
    .line 544
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@28
    const/4 v1, 0x2

    #@29
    if-eq v0, v1, :cond_1

    #@2b
    .line 545
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    #@2d
    const/4 v1, 0x5

    #@2e
    if-eq v0, v1, :cond_1

    #@30
    .line 549
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
    .line 262
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
    .line 263
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
    .line 261
    return-void

    #@24
    .line 263
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
    .line 566
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    #@3
    move-result v1

    #@4
    .line 567
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    #@6
    .line 568
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    #@8
    .line 569
    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    #@b
    .line 571
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v3

    #@f
    .line 572
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@11
    .line 573
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    #@13
    .line 574
    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    #@15
    iget v7, v4, Landroid/graphics/Rect;->left:I

    #@17
    add-int/2addr v6, v7

    #@18
    iput v6, v2, Landroid/graphics/Rect;->left:I

    #@1a
    .line 575
    iget v6, v2, Landroid/graphics/Rect;->top:I

    #@1c
    iget v7, v4, Landroid/graphics/Rect;->top:I

    #@1e
    add-int/2addr v6, v7

    #@1f
    iput v6, v2, Landroid/graphics/Rect;->top:I

    #@21
    .line 576
    iget v6, v2, Landroid/graphics/Rect;->right:I

    #@23
    iget v7, v4, Landroid/graphics/Rect;->right:I

    #@25
    sub-int/2addr v6, v7

    #@26
    iput v6, v2, Landroid/graphics/Rect;->right:I

    #@28
    .line 577
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    #@2a
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    #@2c
    sub-int/2addr v6, v7

    #@2d
    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    #@2f
    .line 578
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@32
    .line 579
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@34
    .line 580
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
    .line 581
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
    .line 582
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
    .line 583
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
    .line 586
    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5f
    move-result-object v0

    #@60
    .line 587
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@62
    .line 588
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@65
    .line 605
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
    .line 1554
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    #@5
    .line 1553
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    #@0
    .prologue
    const/16 v1, 0x80

    #@2
    .line 1558
    if-eqz p1, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    #@9
    .line 1557
    :goto_0
    return-void

    #@a
    .line 1559
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
    .line 1550
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    #@5
    .line 1549
    return-void
.end method

.method setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 2200
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 2201
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2202
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 2199
    :cond_0
    return-void
.end method

.method setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    #@0
    .prologue
    .line 1764
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@2
    .line 1765
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 1766
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Lcom/android/internal/policy/DecorContext;

    #@8
    if-eqz v2, :cond_0

    #@a
    move-object v1, v0

    #@b
    .line 1767
    check-cast v1, Lcom/android/internal/policy/DecorContext;

    #@d
    .line 1768
    .local v1, "decorContext":Lcom/android/internal/policy/DecorContext;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@f
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    #@12
    .line 1763
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
    .line 911
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v1

    #@5
    if-eq v1, p1, :cond_1

    #@7
    .line 912
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a
    .line 913
    if-eqz p1, :cond_2

    #@c
    .line 915
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
    .line 914
    :cond_0
    invoke-static {p1, v0}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@20
    .line 921
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    if-eqz v0, :cond_4

    #@24
    .line 922
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@26
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    #@28
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@2b
    .line 926
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    #@2e
    .line 910
    :cond_1
    return-void

    #@2f
    .line 918
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@32
    move-result-object v1

    #@33
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@35
    iget v2, v2, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    #@37
    .line 919
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
    .line 918
    :cond_3
    const/4 v3, 0x0

    #@46
    .line 917
    invoke-static {v1, v3, v2, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    #@49
    move-result-object v0

    #@4a
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    #@4c
    goto :goto_0

    #@4d
    .line 924
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
    .line 931
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 933
    if-eqz p1, :cond_1

    #@b
    .line 934
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    #@d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@10
    .line 938
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    #@13
    .line 930
    :cond_0
    return-void

    #@14
    .line 936
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
    .line 1717
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
    .line 762
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
    .line 767
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
    .line 821
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
    .line 826
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
    .line 810
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
    .line 816
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
    .line 902
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    #@3
    .line 901
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 421
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
    .line 394
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4
    move-result v1

    #@5
    const/4 v2, 0x4

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 395
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@b
    move-result v0

    #@c
    .line 397
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 398
    if-ne v0, v3, :cond_0

    #@12
    .line 399
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    #@14
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    #@17
    .line 401
    :cond_0
    return v3

    #@18
    .line 405
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
    .line 409
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
    .line 413
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
    .line 417
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
    .line 2241
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
    .line 2242
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
    .line 2241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 2242
    const-string/jumbo v1, "]"

    #@30
    .line 2241
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
    .locals 34
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 1014
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7
    move-result-object v19

    #@8
    .line 1015
    .local v19, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    #@a
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    #@c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    #@f
    move-result v3

    #@10
    or-int v4, v2, v3

    #@12
    .line 1017
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
    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_8

    #@26
    const/16 v26, 0x0

    #@28
    .line 1019
    .local v26, "disallowAnimate":Z
    :goto_0
    move-object/from16 v0, p0

    #@2a
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    #@2c
    move-object/from16 v0, v19

    #@2e
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@30
    xor-int/2addr v2, v3

    #@31
    .line 1020
    const/high16 v3, -0x80000000

    #@33
    .line 1019
    and-int/2addr v2, v3

    #@34
    if-eqz v2, :cond_9

    #@36
    const/4 v2, 0x1

    #@37
    :goto_1
    or-int v26, v26, v2

    #@39
    .line 1021
    .local v26, "disallowAnimate":Z
    move-object/from16 v0, v19

    #@3b
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    #@41
    .line 1023
    if-eqz p1, :cond_0

    #@43
    .line 1024
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    #@46
    move-result v2

    #@47
    .line 1025
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@4a
    move-result v3

    #@4b
    .line 1024
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    #@4e
    move-result v2

    #@4f
    move-object/from16 v0, p0

    #@51
    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    #@53
    .line 1026
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    #@56
    move-result v2

    #@57
    .line 1027
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@5a
    move-result v3

    #@5b
    .line 1026
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    #@5e
    move-result v2

    #@5f
    move-object/from16 v0, p0

    #@61
    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    #@63
    .line 1028
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    #@66
    move-result v2

    #@67
    .line 1029
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@6a
    move-result v3

    #@6b
    .line 1028
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    #@6e
    move-result v2

    #@6f
    move-object/from16 v0, p0

    #@71
    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@73
    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    #@76
    move-result v2

    #@77
    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@7a
    move-result v3

    #@7b
    .line 1030
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    #@7e
    move-result v2

    #@7f
    move-object/from16 v0, p0

    #@81
    iput v2, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    #@83
    .line 1036
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    #@86
    move-result v2

    #@87
    if-eqz v2, :cond_a

    #@89
    const/16 v30, 0x1

    #@8b
    .line 1037
    .local v30, "hasTopStableInset":Z
    :goto_2
    move-object/from16 v0, p0

    #@8d
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    #@8f
    move/from16 v0, v30

    #@91
    if-eq v0, v2, :cond_b

    #@93
    const/4 v2, 0x1

    #@94
    :goto_3
    or-int v26, v26, v2

    #@96
    .line 1038
    move/from16 v0, v30

    #@98
    move-object/from16 v1, p0

    #@9a
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    #@9c
    .line 1040
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    #@9f
    move-result v2

    #@a0
    if-eqz v2, :cond_c

    #@a2
    const/16 v27, 0x1

    #@a4
    .line 1041
    .local v27, "hasBottomStableInset":Z
    :goto_4
    move-object/from16 v0, p0

    #@a6
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    #@a8
    move/from16 v0, v27

    #@aa
    if-eq v0, v2, :cond_d

    #@ac
    const/4 v2, 0x1

    #@ad
    :goto_5
    or-int v26, v26, v2

    #@af
    .line 1042
    move/from16 v0, v27

    #@b1
    move-object/from16 v1, p0

    #@b3
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    #@b5
    .line 1044
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    #@b8
    move-result v2

    #@b9
    if-eqz v2, :cond_e

    #@bb
    const/16 v29, 0x1

    #@bd
    .line 1045
    .local v29, "hasRightStableInset":Z
    :goto_6
    move-object/from16 v0, p0

    #@bf
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    #@c1
    move/from16 v0, v29

    #@c3
    if-eq v0, v2, :cond_f

    #@c5
    const/4 v2, 0x1

    #@c6
    :goto_7
    or-int v26, v26, v2

    #@c8
    .line 1046
    move/from16 v0, v29

    #@ca
    move-object/from16 v1, p0

    #@cc
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    #@ce
    .line 1048
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    #@d1
    move-result v2

    #@d2
    if-eqz v2, :cond_10

    #@d4
    const/16 v28, 0x1

    #@d6
    .line 1049
    .local v28, "hasLeftStableInset":Z
    :goto_8
    move-object/from16 v0, p0

    #@d8
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    #@da
    move/from16 v0, v28

    #@dc
    if-eq v0, v2, :cond_11

    #@de
    const/4 v2, 0x1

    #@df
    :goto_9
    or-int v26, v26, v2

    #@e1
    .line 1050
    move/from16 v0, v28

    #@e3
    move-object/from16 v1, p0

    #@e5
    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    #@e7
    .line 1052
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->shouldAlwaysConsumeNavBar()Z

    #@ea
    move-result v2

    #@eb
    move-object/from16 v0, p0

    #@ed
    iput-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    #@ef
    .line 1055
    .end local v27    # "hasBottomStableInset":Z
    .end local v28    # "hasLeftStableInset":Z
    .end local v29    # "hasRightStableInset":Z
    .end local v30    # "hasTopStableInset":Z
    :cond_0
    move-object/from16 v0, p0

    #@f1
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    #@f3
    move-object/from16 v0, p0

    #@f5
    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@f7
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    #@fa
    move-result v32

    #@fb
    .line 1056
    .local v32, "navBarToRightEdge":Z
    move-object/from16 v0, p0

    #@fd
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    #@ff
    move-object/from16 v0, p0

    #@101
    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    #@103
    invoke-static {v2, v3}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    #@106
    move-result v8

    #@107
    .line 1057
    .local v8, "navBarToLeftEdge":Z
    move-object/from16 v0, p0

    #@109
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    #@10b
    move-object/from16 v0, p0

    #@10d
    iget v3, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@10f
    move-object/from16 v0, p0

    #@111
    iget v5, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    #@113
    invoke-static {v2, v3, v5}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    #@116
    move-result v6

    #@117
    .line 1058
    .local v6, "navBarSize":I
    move-object/from16 v0, p0

    #@119
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@11b
    .line 1059
    move-object/from16 v0, p0

    #@11d
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    #@11f
    iget v5, v2, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    #@121
    if-nez v32, :cond_12

    #@123
    move v7, v8

    #@124
    .line 1061
    :goto_a
    if-eqz p2, :cond_1

    #@126
    if-eqz v26, :cond_13

    #@128
    :cond_1
    const/4 v10, 0x0

    #@129
    :goto_b
    const/4 v9, 0x0

    #@12a
    const/4 v11, 0x0

    #@12b
    move-object/from16 v2, p0

    #@12d
    .line 1058
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZ)V

    #@130
    .line 1063
    if-eqz v32, :cond_14

    #@132
    .line 1064
    move-object/from16 v0, p0

    #@134
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@136
    iget-boolean v0, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    #@138
    move/from16 v33, v0

    #@13a
    .line 1065
    :goto_c
    if-eqz v8, :cond_15

    #@13c
    .line 1066
    move-object/from16 v0, p0

    #@13e
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@140
    iget-boolean v15, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    #@142
    .line 1067
    :goto_d
    if-eqz v33, :cond_16

    #@144
    move-object/from16 v0, p0

    #@146
    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@148
    move/from16 v16, v0

    #@14a
    .line 1069
    .local v16, "statusBarSideInset":I
    :goto_e
    move-object/from16 v0, p0

    #@14c
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@14e
    .line 1070
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor()I

    #@151
    move-result v12

    #@152
    move-object/from16 v0, p0

    #@154
    iget v13, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    #@156
    .line 1072
    if-eqz p2, :cond_2

    #@158
    if-eqz v26, :cond_18

    #@15a
    :cond_2
    const/16 v17, 0x0

    #@15c
    .line 1073
    :goto_f
    move-object/from16 v0, p0

    #@15e
    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    #@160
    move/from16 v18, v0

    #@162
    .line 1071
    const/4 v14, 0x0

    #@163
    move-object/from16 v9, p0

    #@165
    move v11, v4

    #@166
    .line 1069
    invoke-direct/range {v9 .. v18}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZ)V

    #@169
    .line 1080
    .end local v6    # "navBarSize":I
    .end local v8    # "navBarToLeftEdge":Z
    .end local v16    # "statusBarSideInset":I
    .end local v26    # "disallowAnimate":Z
    .end local v32    # "navBarToRightEdge":Z
    :cond_3
    move-object/from16 v0, v19

    #@16b
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@16d
    const/high16 v3, -0x80000000

    #@16f
    and-int/2addr v2, v3

    #@170
    if-eqz v2, :cond_19

    #@172
    .line 1081
    and-int/lit16 v2, v4, 0x200

    #@174
    if-nez v2, :cond_19

    #@176
    .line 1082
    and-int/lit8 v2, v4, 0x2

    #@178
    if-nez v2, :cond_19

    #@17a
    .line 1080
    const/16 v24, 0x1

    #@17c
    .line 1087
    :goto_10
    and-int/lit16 v2, v4, 0x400

    #@17e
    if-nez v2, :cond_1b

    #@180
    .line 1088
    const/high16 v2, -0x80000000

    #@182
    and-int/2addr v2, v4

    #@183
    if-nez v2, :cond_1b

    #@185
    .line 1089
    move-object/from16 v0, v19

    #@187
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@189
    and-int/lit16 v2, v2, 0x100

    #@18b
    if-nez v2, :cond_1b

    #@18d
    .line 1090
    move-object/from16 v0, v19

    #@18f
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@191
    const/high16 v3, 0x10000

    #@193
    and-int/2addr v2, v3

    #@194
    if-nez v2, :cond_1b

    #@196
    .line 1091
    move-object/from16 v0, p0

    #@198
    iget-boolean v2, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    #@19a
    .line 1087
    if-eqz v2, :cond_1b

    #@19c
    .line 1092
    move-object/from16 v0, p0

    #@19e
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    #@1a0
    if-eqz v2, :cond_1a

    #@1a2
    const/16 v25, 0x1

    #@1a4
    .line 1094
    .local v25, "consumingStatusBar":Z
    :goto_11
    if-eqz v25, :cond_1c

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    #@1aa
    move/from16 v23, v0

    #@1ac
    .line 1095
    .local v23, "consumedTop":I
    :goto_12
    if-eqz v24, :cond_1d

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    #@1b2
    move/from16 v22, v0

    #@1b4
    .line 1096
    .local v22, "consumedRight":I
    :goto_13
    if-eqz v24, :cond_1e

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    #@1ba
    move/from16 v20, v0

    #@1bc
    .line 1097
    .local v20, "consumedBottom":I
    :goto_14
    if-eqz v24, :cond_1f

    #@1be
    move-object/from16 v0, p0

    #@1c0
    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    #@1c2
    move/from16 v21, v0

    #@1c4
    .line 1099
    .local v21, "consumedLeft":I
    :goto_15
    move-object/from16 v0, p0

    #@1c6
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@1c8
    if-eqz v2, :cond_6

    #@1ca
    .line 1100
    move-object/from16 v0, p0

    #@1cc
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@1ce
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1d1
    move-result-object v2

    #@1d2
    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@1d4
    .line 1099
    if-eqz v2, :cond_6

    #@1d6
    .line 1101
    move-object/from16 v0, p0

    #@1d8
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@1da
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1dd
    move-result-object v31

    #@1de
    check-cast v31, Landroid/view/ViewGroup$MarginLayoutParams;

    #@1e0
    .line 1102
    .local v31, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v31

    #@1e2
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@1e4
    move/from16 v0, v23

    #@1e6
    if-ne v2, v0, :cond_4

    #@1e8
    move-object/from16 v0, v31

    #@1ea
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@1ec
    move/from16 v0, v22

    #@1ee
    if-eq v2, v0, :cond_20

    #@1f0
    .line 1104
    :cond_4
    :goto_16
    move/from16 v0, v23

    #@1f2
    move-object/from16 v1, v31

    #@1f4
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@1f6
    .line 1105
    move/from16 v0, v22

    #@1f8
    move-object/from16 v1, v31

    #@1fa
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@1fc
    .line 1106
    move/from16 v0, v20

    #@1fe
    move-object/from16 v1, v31

    #@200
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@202
    .line 1107
    move/from16 v0, v21

    #@204
    move-object/from16 v1, v31

    #@206
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@208
    .line 1108
    move-object/from16 v0, p0

    #@20a
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    #@20c
    move-object/from16 v0, v31

    #@20e
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@211
    .line 1110
    if-nez p1, :cond_5

    #@213
    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    #@216
    .line 1116
    :cond_5
    if-eqz p1, :cond_6

    #@218
    .line 1118
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@21b
    move-result v2

    #@21c
    sub-int v2, v2, v21

    #@21e
    .line 1119
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@221
    move-result v3

    #@222
    sub-int v3, v3, v23

    #@224
    .line 1120
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@227
    move-result v5

    #@228
    sub-int v5, v5, v22

    #@22a
    .line 1121
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@22d
    move-result v7

    #@22e
    sub-int v7, v7, v20

    #@230
    .line 1117
    move-object/from16 v0, p1

    #@232
    invoke-virtual {v0, v2, v3, v5, v7}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@235
    move-result-object p1

    #@236
    .line 1125
    .end local v31    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    if-eqz p1, :cond_7

    #@238
    .line 1126
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    #@23b
    move-result-object p1

    #@23c
    .line 1128
    :cond_7
    return-object p1

    #@23d
    .line 1018
    .end local v20    # "consumedBottom":I
    .end local v21    # "consumedLeft":I
    .end local v22    # "consumedRight":I
    .end local v23    # "consumedTop":I
    .end local v25    # "consumingStatusBar":Z
    :cond_8
    const/16 v26, 0x1

    #@23f
    .local v26, "disallowAnimate":Z
    goto/16 :goto_0

    #@241
    .line 1019
    :cond_9
    const/4 v2, 0x0

    #@242
    goto/16 :goto_1

    #@244
    .line 1036
    .local v26, "disallowAnimate":Z
    :cond_a
    const/16 v30, 0x0

    #@246
    .restart local v30    # "hasTopStableInset":Z
    goto/16 :goto_2

    #@248
    .line 1037
    :cond_b
    const/4 v2, 0x0

    #@249
    goto/16 :goto_3

    #@24b
    .line 1040
    :cond_c
    const/16 v27, 0x0

    #@24d
    .restart local v27    # "hasBottomStableInset":Z
    goto/16 :goto_4

    #@24f
    .line 1041
    :cond_d
    const/4 v2, 0x0

    #@250
    goto/16 :goto_5

    #@252
    .line 1044
    :cond_e
    const/16 v29, 0x0

    #@254
    .restart local v29    # "hasRightStableInset":Z
    goto/16 :goto_6

    #@256
    .line 1045
    :cond_f
    const/4 v2, 0x0

    #@257
    goto/16 :goto_7

    #@259
    .line 1048
    :cond_10
    const/16 v28, 0x0

    #@25b
    .restart local v28    # "hasLeftStableInset":Z
    goto/16 :goto_8

    #@25d
    .line 1049
    :cond_11
    const/4 v2, 0x0

    #@25e
    goto/16 :goto_9

    #@260
    .line 1059
    .end local v27    # "hasBottomStableInset":Z
    .end local v28    # "hasLeftStableInset":Z
    .end local v29    # "hasRightStableInset":Z
    .end local v30    # "hasTopStableInset":Z
    .restart local v6    # "navBarSize":I
    .restart local v8    # "navBarToLeftEdge":Z
    .restart local v32    # "navBarToRightEdge":Z
    :cond_12
    const/4 v7, 0x1

    #@261
    goto/16 :goto_a

    #@263
    .line 1061
    :cond_13
    const/4 v10, 0x1

    #@264
    goto/16 :goto_b

    #@266
    .line 1063
    :cond_14
    const/16 v33, 0x0

    #@268
    .local v33, "statusBarNeedsRightInset":Z
    goto/16 :goto_c

    #@26a
    .line 1065
    .end local v33    # "statusBarNeedsRightInset":Z
    :cond_15
    const/4 v15, 0x0

    #@26b
    .local v15, "statusBarNeedsLeftInset":Z
    goto/16 :goto_d

    #@26d
    .line 1068
    .end local v15    # "statusBarNeedsLeftInset":Z
    :cond_16
    if-eqz v15, :cond_17

    #@26f
    move-object/from16 v0, p0

    #@271
    iget v0, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    #@273
    move/from16 v16, v0

    #@275
    .restart local v16    # "statusBarSideInset":I
    goto/16 :goto_e

    #@277
    .end local v16    # "statusBarSideInset":I
    :cond_17
    const/16 v16, 0x0

    #@279
    .restart local v16    # "statusBarSideInset":I
    goto/16 :goto_e

    #@27b
    .line 1072
    :cond_18
    const/16 v17, 0x1

    #@27d
    goto/16 :goto_f

    #@27f
    .line 1083
    .end local v6    # "navBarSize":I
    .end local v8    # "navBarToLeftEdge":Z
    .end local v16    # "statusBarSideInset":I
    .end local v26    # "disallowAnimate":Z
    .end local v32    # "navBarToRightEdge":Z
    :cond_19
    move-object/from16 v0, p0

    #@281
    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    #@283
    move/from16 v24, v0

    #@285
    .local v24, "consumingNavBar":Z
    goto/16 :goto_10

    #@287
    .line 1092
    .end local v24    # "consumingNavBar":Z
    :cond_1a
    const/16 v25, 0x0

    #@289
    goto/16 :goto_11

    #@28b
    .line 1087
    :cond_1b
    const/16 v25, 0x0

    #@28d
    goto/16 :goto_11

    #@28f
    .line 1094
    .restart local v25    # "consumingStatusBar":Z
    :cond_1c
    const/16 v23, 0x0

    #@291
    .restart local v23    # "consumedTop":I
    goto/16 :goto_12

    #@293
    .line 1095
    :cond_1d
    const/16 v22, 0x0

    #@295
    .restart local v22    # "consumedRight":I
    goto/16 :goto_13

    #@297
    .line 1096
    :cond_1e
    const/16 v20, 0x0

    #@299
    .restart local v20    # "consumedBottom":I
    goto/16 :goto_14

    #@29b
    .line 1097
    :cond_1f
    const/16 v21, 0x0

    #@29d
    .restart local v21    # "consumedLeft":I
    goto/16 :goto_15

    #@29f
    .line 1103
    .restart local v31    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_20
    move-object/from16 v0, v31

    #@2a1
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@2a3
    move/from16 v0, v20

    #@2a5
    if-ne v2, v0, :cond_4

    #@2a7
    move-object/from16 v0, v31

    #@2a9
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@2ab
    move/from16 v0, v21

    #@2ad
    if-eq v2, v0, :cond_5

    #@2af
    goto/16 :goto_16
.end method

.method updateDecorCaptionShade()V
    .locals 2

    #@0
    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1919
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    #@a
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    #@d
    .line 1917
    :cond_0
    return-void
.end method

.method updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 2219
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
    .line 2218
    return-void
.end method

.method updateNavigationGuardColor()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1363
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1367
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
    .line 1368
    const/4 v0, 0x4

    #@10
    .line 1367
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    #@13
    .line 1362
    :cond_1
    return-void
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    #@0
    .prologue
    .line 1546
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
    .line 1542
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
