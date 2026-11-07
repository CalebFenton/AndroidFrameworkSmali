.class final Landroid/inputmethodservice/NavigationBarController$Impl;
.super Ljava/lang/Object;
.source "NavigationBarController.java"

# interfaces
.implements Landroid/inputmethodservice/NavigationBarController$Callback;
.implements Landroid/view/Window$DecorCallback;
.implements Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/NavigationBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Impl"
.end annotation


# static fields
.field private static final blacklist DEFAULT_COLOR_ADAPT_TRANSITION_TIME:I = 0x6a4

.field private static final blacklist LEGACY_DECELERATE:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mCustomImeSwitcherButtonRequestedVisible:Z

.field private blacklist mDarkIntensity:F

.field private blacklist mDestroyed:Z

.field private blacklist mDrawLegacyNavigationBarBackground:Z

.field private blacklist mImeDrawsImeNavBar:Z

.field blacklist mLastInsets:Landroid/graphics/Insets;

.field private blacklist mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

.field private final blacklist mService:Landroid/inputmethodservice/InputMethodService;

.field private blacklist mShouldShowImeSwitcherWhenImeIsShown:Z

.field private final blacklist mTempPos:[I

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mTintAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic blacklist $r8$lambda$BTqYxiYSEoN6u1LxgBuq02uEewI(Landroid/inputmethodservice/NavigationBarController$Impl;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/NavigationBarController$Impl;->lambda$onSystemBarAppearanceChanged$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LeW2_jAdgO1YT6PUdb1mPSGj9vg(Landroid/inputmethodservice/NavigationBarController$Impl;Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/NavigationBarController$Impl;->lambda$scheduleRelayout$1(Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Y8cUfiVR_BiPejPvETKg89BeAwg(Landroid/inputmethodservice/NavigationBarController$Impl;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/NavigationBarController$Impl;->lambda$installNavigationBarFrameIfNecessary$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 156
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/NavigationBarController$Impl;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 3
    .param p1, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    .line 191
    iput-object p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 192
    return-void
.end method

.method private static blacklist calculateTargetDarkIntensity(IZ)F
    .registers 4
    .param p0, "appearance"    # I
    .param p1, "drawLegacyNavigationBarBackground"    # Z

    .line 577
    if-nez p1, :cond_8

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 579
    .local v0, "lightNavBar":Z
    :goto_9
    if-eqz v0, :cond_e

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private blacklist checkCustomImeSwitcherButtonRequestedVisible(ZZZ)V
    .registers 7
    .param p1, "buttonVisible"    # Z
    .param p2, "shouldDrawImeNavBar"    # Z
    .param p3, "imeNavBarNotVisible"    # Z

    .line 646
    invoke-static {}, Landroid/view/inputmethod/Flags;->imeSwitcherRevampApi()Z

    move-result v0

    if-nez v0, :cond_7

    .line 647
    return-void

    .line 650
    :cond_7
    if-eqz p2, :cond_b

    move v0, p3

    goto :goto_18

    .line 651
    :cond_b
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_18
    nop

    .line 653
    .local v0, "navBarNotVisible":Z
    if-eqz p1, :cond_1f

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 654
    .local v1, "visible":Z
    :goto_20
    iget-boolean v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mCustomImeSwitcherButtonRequestedVisible:Z

    if-eq v1, v2, :cond_2b

    .line 655
    iput-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mCustomImeSwitcherButtonRequestedVisible:Z

    .line 656
    iget-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/InputMethodService;->onCustomImeSwitcherButtonRequestedVisible(Z)V

    .line 658
    :cond_2b
    return-void
.end method

.method private blacklist getImeCaptionBarHeight(Z)I
    .registers 4
    .param p1, "imeDrawsImeNavBar"    # Z

    .line 621
    if-eqz p1, :cond_10

    .line 622
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050262

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_11

    .line 624
    :cond_10
    const/4 v0, 0x0

    .line 621
    :goto_11
    return v0
.end method

.method private blacklist getSystemInsets()Landroid/graphics/Insets;
    .registers 6

    .line 196
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 197
    return-object v1

    .line 199
    :cond_8
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_17

    .line 201
    return-object v1

    .line 203
    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    .line 204
    .local v2, "windowInsets":Landroid/view/WindowInsets;
    if-nez v2, :cond_1e

    .line 205
    return-object v1

    .line 207
    :cond_1e
    nop

    .line 208
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 209
    .local v1, "stableBarInsets":Landroid/graphics/Insets;
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    .line 210
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    .line 209
    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    return-object v3
.end method

.method private blacklist installNavigationBarFrameIfNecessary()V
    .registers 9

    .line 214
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-nez v0, :cond_5

    .line 215
    return-void

    .line 217
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_a

    .line 218
    return-void

    .line 220
    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, "rawDecorView":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1b

    .line 222
    return-void

    .line 224
    :cond_1b
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 225
    .local v1, "decorView":Landroid/view/ViewGroup;
    const-class v2, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 226
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    .line 225
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 227
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 228
    .local v2, "systemInsets":Landroid/graphics/Insets;
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/16 v4, 0x50

    const/4 v5, -0x1

    if-nez v3, :cond_97

    .line 229
    new-instance v3, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v3, v6}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 230
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x1090095

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 233
    if-eqz v2, :cond_63

    .line 234
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v6, v5, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    goto :goto_72

    .line 242
    :cond_63
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/inputmethodservice/NavigationBarController$Impl;->getImeCaptionBarHeight(Z)I

    move-result v3

    .line 243
    .local v3, "height":I
    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .end local v3    # "height":I
    :goto_72
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const-class v4, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 247
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    .line 246
    invoke-virtual {v3, v5}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 248
    .local v3, "navigationBarView":Landroid/inputmethodservice/navigationbar/NavigationBarView;
    if-eqz v3, :cond_96

    .line 251
    nop

    .line 252
    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-eqz v4, :cond_8d

    .line 253
    const/4 v4, 0x4

    goto :goto_8e

    :cond_8d
    const/4 v4, 0x0

    :goto_8e
    or-int/lit8 v4, v4, 0x3

    .line 254
    .local v4, "flags":I
    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setNavbarFlags(I)V

    .line 255
    invoke-virtual {v3, p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->prepareNavButtons(Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;)V

    .line 257
    .end local v3    # "navigationBarView":Landroid/inputmethodservice/navigationbar/NavigationBarView;
    .end local v4    # "flags":I
    :cond_96
    goto :goto_a5

    .line 258
    :cond_97
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v6, v5, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v6}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    .line 263
    :goto_a5
    iget-boolean v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v3, :cond_b1

    .line 264
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackgroundColor(I)V

    goto :goto_b7

    .line 266
    :cond_b1
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :goto_b7
    iget v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-static {v3, v4}, Landroid/inputmethodservice/NavigationBarController$Impl;->calculateTargetDarkIntensity(IZ)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/inputmethodservice/NavigationBarController$Impl;->setIconTintInternal(F)V

    .line 272
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v4, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;-><init>(Landroid/inputmethodservice/NavigationBarController$Impl;)V

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 284
    return-void
.end method

.method private synthetic blacklist lambda$installNavigationBarFrameIfNecessary$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 273
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_20

    .line 276
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    .line 277
    .local v0, "visible":Z
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_12

    const/4 v2, 0x0

    goto :goto_14

    :cond_12
    const/16 v2, 0x8

    :goto_14
    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setVisibility(I)V

    .line 278
    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    iget-boolean v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    xor-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/inputmethodservice/NavigationBarController$Impl;->checkCustomImeSwitcherButtonRequestedVisible(ZZZ)V

    .line 282
    .end local v0    # "visible":Z
    :cond_20
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$onSystemBarAppearanceChanged$2(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 554
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl;->setIconTintInternal(F)V

    return-void
.end method

.method private synthetic blacklist lambda$scheduleRelayout$1(Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V
    .registers 10
    .param p1, "frame"    # Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 401
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 402
    return-void

    .line 404
    :cond_5
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_c

    .line 405
    return-void

    .line 407
    :cond_c
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 408
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_17

    .line 409
    return-void

    .line 411
    :cond_17
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 412
    .local v1, "decor":Landroid/view/View;
    if-nez v1, :cond_1e

    .line 413
    return-void

    .line 415
    :cond_1e
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_23

    .line 416
    return-void

    .line 418
    :cond_23
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 419
    .local v2, "decorGroup":Landroid/view/ViewGroup;
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 420
    .local v3, "currentSystemInsets":Landroid/graphics/Insets;
    iget-object v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 421
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v3, Landroid/graphics/Insets;->bottom:I

    const/16 v6, 0x50

    const/4 v7, -0x1

    invoke-direct {v4, v7, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iput-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    .line 426
    :cond_41
    nop

    .line 427
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v4

    .line 428
    .local v4, "navbarBackgroundView":Landroid/view/View;
    if-eqz v4, :cond_55

    .line 429
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 430
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-le v5, v6, :cond_55

    .line 431
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 433
    :cond_55
    return-void
.end method

.method private blacklist scheduleRelayout()V
    .registers 3

    .line 399
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 400
    .local v0, "frame":Landroid/inputmethodservice/navigationbar/NavigationBarFrame;
    new-instance v1, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda3;-><init>(Landroid/inputmethodservice/NavigationBarController$Impl;Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method

.method private blacklist setIconTintInternal(F)V
    .registers 5
    .param p1, "darkIntensity"    # F

    .line 562
    iput p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    .line 563
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_7

    .line 564
    return-void

    .line 566
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const-class v1, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 567
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 568
    .local v0, "navigationBarView":Landroid/inputmethodservice/navigationbar/NavigationBarView;
    if-nez v0, :cond_1c

    .line 569
    return-void

    .line 571
    :cond_1c
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setDarkIntensity(F)V

    .line 572
    return-void
.end method

.method private blacklist uninstallNavigationBarFrameIfNecessary()V
    .registers 4

    .line 287
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_5

    .line 288
    return-void

    .line 290
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 291
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    .line 292
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 294
    :cond_17
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 295
    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 296
    return-void
.end method


# virtual methods
.method public blacklist isShown()Z
    .registers 2

    .line 629
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 630
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 629
    :goto_f
    return v0
.end method

.method public blacklist onDestroy()V
    .registers 2

    .line 453
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 454
    return-void

    .line 456
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    .line 457
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 460
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    .line 461
    return-void
.end method

.method public blacklist onDrawLegacyNavigationBarBackgroundChanged(Z)Z
    .registers 4
    .param p1, "drawLegacyNavigationBarBackground"    # Z

    .line 585
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_6

    .line 586
    const/4 v0, 0x0

    return v0

    .line 589
    :cond_6
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    if-eq p1, v0, :cond_2a

    .line 590
    iput-boolean p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    .line 591
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_25

    .line 592
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_1c

    .line 593
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackgroundColor(I)V

    goto :goto_22

    .line 595
    :cond_1c
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 597
    :goto_22
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->scheduleRelayout()V

    .line 599
    :cond_25
    iget v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl;->onSystemBarAppearanceChanged(I)V

    .line 601
    :cond_2a
    return p1
.end method

.method public blacklist onImeSwitchButtonClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 606
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onImeSwitchButtonClickFromClient()V

    .line 607
    return-void
.end method

.method public blacklist onImeSwitchButtonLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 612
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .registers 10
    .param p1, "navButtonFlags"    # I

    .line 492
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 493
    return-void

    .line 496
    :cond_5
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    .line 498
    .local v0, "imeDrawsImeNavBar":Z
    :goto_e
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v1

    .line 502
    .local v3, "shouldShowImeSwitcherWhenImeIsShown":Z
    :goto_15
    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    .line 503
    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    .line 505
    .local v4, "prevShouldShowImeSwitcherWhenImeIsShown":Z
    iput-boolean v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    .line 507
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v5, v5, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v5}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v5

    .line 508
    invoke-direct {p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getImeCaptionBarHeight(Z)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/WindowInsetsController;->setImeCaptionBarInsetsHeight(I)V

    .line 510
    if-eqz v0, :cond_61

    .line 511
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->installNavigationBarFrameIfNecessary()V

    .line 512
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v5, :cond_64

    iget-boolean v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-eq v5, v4, :cond_64

    .line 514
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const-class v6, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 515
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5, v7}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    .line 516
    .local v5, "navigationBarView":Landroid/inputmethodservice/navigationbar/NavigationBarView;
    if-eqz v5, :cond_60

    .line 519
    nop

    .line 520
    iget-boolean v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-eqz v6, :cond_5a

    .line 521
    const/4 v1, 0x4

    goto :goto_5b

    :cond_5a
    nop

    :goto_5b
    or-int/lit8 v1, v1, 0x3

    .line 522
    .local v1, "flags":I
    invoke-virtual {v5, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setNavbarFlags(I)V

    .line 524
    .end local v1    # "flags":I
    .end local v5    # "navigationBarView":Landroid/inputmethodservice/navigationbar/NavigationBarView;
    :cond_60
    goto :goto_64

    .line 526
    :cond_61
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->uninstallNavigationBarFrameIfNecessary()V

    .line 530
    :cond_64
    :goto_64
    nop

    .line 531
    invoke-virtual {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->isShown()Z

    move-result v1

    .line 530
    xor-int/2addr v1, v2

    invoke-direct {p0, v3, v0, v1}, Landroid/inputmethodservice/NavigationBarController$Impl;->checkCustomImeSwitcherButtonRequestedVisible(ZZZ)V

    .line 532
    return-void
.end method

.method public blacklist onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .registers 4
    .param p1, "softInputWindow"    # Landroid/inputmethodservice/SoftInputWindow;

    .line 438
    invoke-virtual {p1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 439
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getSystemBarAppearance()I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    .line 440
    invoke-virtual {v0, p0}, Landroid/view/Window;->setDecorCallback(Landroid/view/Window$DecorCallback;)V

    .line 441
    return-void
.end method

.method public blacklist onSystemBarAppearanceChanged(I)V
    .registers 6
    .param p1, "appearance"    # I

    .line 536
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 537
    return-void

    .line 540
    :cond_5
    iput p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    .line 542
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_c

    .line 543
    return-void

    .line 546
    :cond_c
    iget v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-static {v0, v1}, Landroid/inputmethodservice/NavigationBarController$Impl;->calculateTargetDarkIntensity(IZ)F

    move-result v0

    .line 549
    .local v0, "targetDarkIntensity":F
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1d

    .line 550
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 552
    :cond_1d
    iget v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 553
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/NavigationBarController$Impl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 555
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 556
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 557
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/inputmethodservice/NavigationBarController$Impl;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 559
    return-void
.end method

.method public blacklist onViewInitialized()V
    .registers 2

    .line 445
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 446
    return-void

    .line 448
    :cond_5
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->installNavigationBarFrameIfNecessary()V

    .line 449
    return-void
.end method

.method public blacklist onWindowShown()V
    .registers 8

    .line 465
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-nez v0, :cond_57

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_d

    goto :goto_57

    .line 468
    :cond_d
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 469
    .local v0, "systemInsets":Landroid/graphics/Insets;
    if-eqz v0, :cond_56

    .line 470
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 471
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    const/16 v4, 0x50

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    .line 476
    :cond_2c
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 477
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 478
    .local v2, "rawDecorView":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_56

    .line 479
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .line 480
    .local v3, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v4

    .line 481
    .local v4, "navbarBackgroundView":Landroid/view/View;
    if-eqz v4, :cond_56

    .line 482
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 483
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-le v5, v6, :cond_56

    .line 484
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 488
    .end local v1    # "window":Landroid/view/Window;
    .end local v2    # "rawDecorView":Landroid/view/View;
    .end local v3    # "decor":Landroid/view/ViewGroup;
    .end local v4    # "navbarBackgroundView":Landroid/view/View;
    :cond_56
    return-void

    .line 466
    .end local v0    # "systemInsets":Landroid/graphics/Insets;
    :cond_57
    :goto_57
    return-void
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 3

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mImeDrawsImeNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNavigationBarFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShouldShowImeSwitcherWhenImeIsShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCustomImeSwitcherButtonRequestedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mCustomImeSwitcherButtonRequestedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAppearance=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    .line 668
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDarkIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDrawLegacyNavigationBarBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    return-object v0
.end method

.method public blacklist updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 6
    .param p1, "originalInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .line 300
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 301
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getVisibility()I

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 302
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_37

    .line 306
    :cond_19
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 307
    .local v0, "loc":[I
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getLocationInWindow([I)V

    .line 308
    iget v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    const/4 v2, 0x1

    aget v3, v0, v2

    if-le v1, v3, :cond_2c

    .line 309
    aget v1, v0, v2

    iput v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 311
    :cond_2c
    iget v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    aget v3, v0, v2

    if-le v1, v3, :cond_36

    .line 312
    aget v1, v0, v2

    iput v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 314
    :cond_36
    return-void

    .line 303
    .end local v0    # "loc":[I
    :cond_37
    :goto_37
    return-void
.end method

.method public blacklist updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 16
    .param p1, "originalInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p2, "dest"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 319
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_131

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_a

    goto/16 :goto_131

    .line 323
    :cond_a
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 324
    .local v0, "systemInsets":Landroid/graphics/Insets;
    if-eqz v0, :cond_130

    .line 325
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 326
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 330
    .local v2, "decor":Landroid/view/View;
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_104

    .line 331
    const/4 v3, 0x0

    .line 332
    .local v3, "touchableRegion":Landroid/graphics/Region;
    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v6, v6, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 333
    .local v6, "inputFrame":Landroid/view/View;
    iget v7, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    packed-switch v7, :pswitch_data_132

    goto/16 :goto_d3

    .line 362
    :pswitch_32
    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    move-object v3, v7

    .line 363
    iget-object v7, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto/16 :goto_d3

    .line 353
    :pswitch_3f
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_d3

    .line 354
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 355
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v8, v8, v5

    iget v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iget-object v10, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v10, v10, v5

    .line 356
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v4

    .line 357
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 355
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 358
    new-instance v7, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v7

    goto :goto_d3

    .line 344
    :pswitch_70
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_d3

    .line 345
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 346
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v8, v8, v5

    iget v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iget-object v10, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v10, v10, v5

    .line 347
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v4

    .line 348
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 346
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 349
    new-instance v7, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v7

    goto :goto_d3

    .line 335
    :pswitch_a1
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_d3

    .line 336
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 337
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v8, v8, v5

    iget-object v9, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v9, v9, v4

    iget-object v10, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v10, v10, v5

    .line 338
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v4

    .line 339
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 337
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 340
    new-instance v7, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v7

    .line 367
    :cond_d3
    :goto_d3
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v9, v10

    .line 368
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 367
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 369
    if-nez v3, :cond_f6

    .line 370
    new-instance v7, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v7

    goto :goto_fb

    .line 372
    :cond_f6
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 375
    :goto_fb
    iget-object v7, p2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 376
    const/4 v7, 0x3

    invoke-virtual {p2, v7}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 382
    .end local v3    # "touchableRegion":Landroid/graphics/Region;
    .end local v6    # "inputFrame":Landroid/view/View;
    :cond_104
    const/4 v3, 0x0

    .line 383
    .local v3, "zOrderChanged":Z
    instance-of v6, v2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_122

    .line 384
    move-object v6, v2

    check-cast v6, Landroid/view/ViewGroup;

    .line 385
    .local v6, "decorGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v7

    .line 386
    .local v7, "navbarBackgroundView":Landroid/view/View;
    if-eqz v7, :cond_120

    .line 387
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    .line 388
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    if-le v8, v9, :cond_120

    move v5, v4

    goto :goto_121

    :cond_120
    nop

    :goto_121
    move v3, v5

    .line 390
    .end local v6    # "decorGroup":Landroid/view/ViewGroup;
    .end local v7    # "navbarBackgroundView":Landroid/view/View;
    :cond_122
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v4, v5

    .line 391
    .local v4, "insetChanged":Z
    if-nez v3, :cond_12d

    if-eqz v4, :cond_130

    .line 392
    :cond_12d
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->scheduleRelayout()V

    .line 395
    .end local v1    # "window":Landroid/view/Window;
    .end local v2    # "decor":Landroid/view/View;
    .end local v3    # "zOrderChanged":Z
    .end local v4    # "insetChanged":Z
    :cond_130
    return-void

    .line 320
    .end local v0    # "systemInsets":Landroid/graphics/Insets;
    :cond_131
    :goto_131
    return-void

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_70
        :pswitch_3f
        :pswitch_32
    .end packed-switch
.end method
