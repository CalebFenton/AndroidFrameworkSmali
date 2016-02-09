.class public final Lcom/android/internal/widget/FloatingToolbar;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;,
        Lcom/android/internal/widget/FloatingToolbar$ViewFader;,
        Lcom/android/internal/widget/FloatingToolbar$1;,
        Lcom/android/internal/widget/FloatingToolbar$2;
    }
.end annotation


# static fields
.field private static final NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mMenu:Landroid/view/Menu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

.field private final mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field private final mPreviousContentRect:Landroid/graphics/Rect;

.field private mShowingMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedWidth:I

.field private mWidthChanged:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/FloatingToolbar;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDelay"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/widget/FloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "content"    # Landroid/view/View;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap5(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createOverflowMenuItemButton(Landroid/content/Context;)Landroid/widget/TextView;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap6(Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->getEstimatedToolbarHeight(Landroid/content/Context;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 77
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/widget/FloatingToolbar$1;-><init>()V

    #@5
    .line 76
    sput-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@7
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    #@a
    .line 88
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    #@11
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    #@18
    .line 92
    sget-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@1a
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@1c
    .line 95
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    #@1f
    .line 97
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$2;

    #@21
    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$2;-><init>(Lcom/android/internal/widget/FloatingToolbar;)V

    #@24
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    #@26
    .line 114
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 115
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 116
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    #@32
    .line 117
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@34
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    #@36
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@39
    move-result-object v2

    #@3a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    #@3d
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@3f
    .line 113
    return-void
.end method

.method private static applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;
    .locals 7
    .param p0, "originalContext"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1519
    new-array v3, v6, [I

    #@4
    const/high16 v4, 0x1160000

    #@6
    aput v4, v3, v5

    #@8
    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 1520
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f
    move-result v1

    #@10
    .line 1521
    .local v1, "isLightTheme":Z
    if-eqz v1, :cond_0

    #@12
    const v2, 0x1030237

    #@15
    .line 1522
    .local v2, "themeId":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@18
    .line 1523
    new-instance v3, Landroid/view/ContextThemeWrapper;

    #@1a
    invoke-direct {v3, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@1d
    return-object v3

    #@1e
    .line 1521
    .end local v2    # "themeId":I
    :cond_0
    const v2, 0x1030224

    #@21
    .restart local v2    # "themeId":I
    goto :goto_0
.end method

.method private static createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1463
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@3
    move-result-object v0

    #@4
    .line 1464
    const v1, 0x1090059

    #@7
    const/4 v2, 0x0

    #@8
    .line 1463
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/ViewGroup;

    #@e
    return-object v0
.end method

.method private static createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 1489
    new-instance v0, Landroid/animation/AnimatorSet;

    #@5
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@8
    .line 1490
    .local v0, "animation":Landroid/animation/AnimatorSet;
    new-array v1, v8, [Landroid/animation/Animator;

    #@a
    .line 1491
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@c
    new-array v3, v8, [F

    #@e
    const/4 v4, 0x0

    #@f
    aput v4, v3, v6

    #@11
    const/high16 v4, 0x3f800000    # 1.0f

    #@13
    aput v4, v3, v7

    #@15
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@18
    move-result-object v2

    #@19
    const-wide/16 v4, 0xc8

    #@1b
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@1e
    move-result-object v2

    #@1f
    aput-object v2, v1, v6

    #@21
    .line 1493
    sget-object v2, Landroid/view/View;->X:Landroid/util/Property;

    #@23
    new-array v3, v8, [F

    #@25
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    #@28
    move-result v4

    #@29
    aput v4, v3, v6

    #@2b
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    #@2e
    move-result v4

    #@2f
    aput v4, v3, v7

    #@31
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@34
    move-result-object v2

    #@35
    aput-object v2, v1, v7

    #@37
    .line 1490
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@3a
    .line 1494
    const-wide/16 v2, 0x32

    #@3c
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    #@3f
    .line 1495
    return-object v0
.end method

.method private static createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDelay"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1507
    new-instance v0, Landroid/animation/AnimatorSet;

    #@4
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    #@7
    .line 1508
    .local v0, "animation":Landroid/animation/AnimatorSet;
    new-array v1, v5, [Landroid/animation/Animator;

    #@9
    .line 1509
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@b
    const/4 v3, 0x2

    #@c
    new-array v3, v3, [F

    #@e
    const/high16 v4, 0x3f800000    # 1.0f

    #@10
    aput v4, v3, v6

    #@12
    const/4 v4, 0x0

    #@13
    aput v4, v3, v5

    #@15
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@18
    move-result-object v2

    #@19
    const-wide/16 v4, 0xc8

    #@1b
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@1e
    move-result-object v2

    #@1f
    aput-object v2, v1, v6

    #@21
    .line 1508
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@24
    .line 1510
    int-to-long v2, p1

    #@25
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    #@28
    .line 1511
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@2b
    .line 1512
    return-object v0
.end method

.method private static createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1438
    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1439
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@a
    move-result-object v2

    #@b
    .line 1440
    const v3, 0x109005b

    #@e
    .line 1439
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    .line 1442
    .local v0, "imageMenuItemButton":Landroid/view/View;
    const v2, 0x1020054

    #@15
    .line 1441
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/widget/ImageButton;

    #@1b
    .line 1443
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v3

    #@1f
    .line 1441
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 1444
    return-object v0

    #@23
    .line 1447
    .end local v0    # "imageMenuItemButton":Landroid/view/View;
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@26
    move-result-object v2

    #@27
    .line 1448
    const v3, 0x109005a

    #@2a
    .line 1447
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Landroid/widget/Button;

    #@30
    .line 1449
    .local v1, "menuItemButton":Landroid/widget/Button;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@37
    .line 1450
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    #@3e
    .line 1451
    return-object v1
.end method

.method private static createOverflowMenuItemButton(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1458
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@3
    move-result-object v0

    #@4
    .line 1459
    const v1, 0x109005e

    #@7
    const/4 v2, 0x0

    #@8
    .line 1458
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/widget/TextView;

    #@e
    return-object v0
.end method

.method private static createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 5
    .param p0, "content"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, -0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 1468
    new-instance v0, Landroid/widget/LinearLayout;

    #@4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@b
    .line 1469
    .local v0, "popupContentHolder":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/PopupWindow;

    #@d
    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    #@10
    .line 1472
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    #@13
    .line 1474
    const/16 v2, 0x3ed

    #@15
    .line 1473
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    #@18
    .line 1475
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    #@1b
    .line 1476
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    #@1d
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@20
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@23
    .line 1477
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@25
    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@28
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@2b
    .line 1479
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@2e
    .line 1480
    return-object v1
.end method

.method private static getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1531
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 1532
    const v1, 0x105009c

    #@7
    .line 1531
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private static getEstimatedToolbarHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1527
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    const v1, 0x1050095

    #@7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 262
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 263
    .local v2, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "menuItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/view/MenuItem;

    #@15
    .line 264
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 265
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v3

    #@1f
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 267
    :cond_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    #@26
    move-result-object v3

    #@27
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_0

    #@2b
    .line 270
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    return-object v2
.end method

.method private getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 246
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 247
    .local v2, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_2

    #@8
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    #@b
    move-result v4

    #@c
    if-ge v0, v4, :cond_2

    #@e
    .line 248
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    #@11
    move-result-object v1

    #@12
    .line 249
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 250
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    #@21
    move-result-object v3

    #@22
    .line 251
    .local v3, "subMenu":Landroid/view/Menu;
    if-eqz v3, :cond_1

    #@24
    .line 252
    invoke-direct {p0, v3}, Lcom/android/internal/widget/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    #@27
    move-result-object v4

    #@28
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@2b
    .line 247
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 254
    .restart local v3    # "subMenu":Landroid/view/Menu;
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    goto :goto_1

    #@32
    .line 258
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_2
    return-object v2
.end method

.method private isCurrentlyShowing(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 238
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    #@2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private static isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1428
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1429
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 1431
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    #@2
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    #@7
    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    #@c
    .line 207
    return-void
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hide()V

    #@5
    .line 216
    return-void
.end method

.method public isHidden()Z
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isHidden()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    #@2
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Rect;

    #@8
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@b
    .line 151
    return-object p0
.end method

.method public setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 126
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/Menu;

    #@6
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenu:Landroid/view/Menu;

    #@8
    .line 127
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 1
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    #@0
    .prologue
    .line 135
    if-eqz p1, :cond_0

    #@2
    .line 136
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@4
    .line 140
    :goto_0
    return-object p0

    #@5
    .line 138
    :cond_0
    sget-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@7
    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@9
    goto :goto_0
.end method

.method public setSuggestedWidth(I)Lcom/android/internal/widget/FloatingToolbar;
    .locals 8
    .param p1, "suggestedWidth"    # I

    #@0
    .prologue
    .line 163
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    #@2
    sub-int v1, p1, v1

    #@4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@7
    move-result v0

    #@8
    .line 164
    .local v0, "difference":I
    int-to-double v2, v0

    #@9
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    #@b
    int-to-double v4, v1

    #@c
    const-wide v6, 0x3fc999999999999aL    # 0.2

    #@11
    mul-double/2addr v4, v6

    #@12
    cmpl-double v1, v2, v4

    #@14
    if-lez v1, :cond_0

    #@16
    const/4 v1, 0x1

    #@17
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    #@19
    .line 166
    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    #@1b
    .line 167
    return-object p0

    #@1c
    .line 164
    :cond_0
    const/4 v1, 0x0

    #@1d
    goto :goto_0
.end method

.method public show()Lcom/android/internal/widget/FloatingToolbar;
    .locals 4

    #@0
    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    #@2
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    #@4
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    #@7
    .line 175
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    #@9
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    #@b
    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    #@e
    .line 176
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenu:Landroid/view/Menu;

    #@10
    invoke-direct {p0, v1}, Lcom/android/internal/widget/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    .line 177
    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0, v0}, Lcom/android/internal/widget/FloatingToolbar;->isCurrentlyShowing(Ljava/util/List;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    #@23
    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@25
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@27
    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    #@29
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    #@2c
    .line 180
    invoke-direct {p0, v0}, Lcom/android/internal/widget/FloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    #@2f
    move-result-object v1

    #@30
    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    #@32
    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_3

    #@3a
    .line 183
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@3c
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    #@3e
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    #@41
    .line 187
    :cond_2
    :goto_0
    const/4 v1, 0x0

    #@42
    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    #@44
    .line 188
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    #@46
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    #@48
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4b
    .line 189
    return-object p0

    #@4c
    .line 184
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    #@4e
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    #@50
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v1

    #@54
    if-nez v1, :cond_2

    #@56
    .line 185
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@58
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    #@5a
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    #@5d
    goto :goto_0
.end method

.method public updateLayout()Lcom/android/internal/widget/FloatingToolbar;
    .locals 1

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar;->show()Lcom/android/internal/widget/FloatingToolbar;

    #@b
    .line 201
    :cond_0
    return-object p0
.end method
