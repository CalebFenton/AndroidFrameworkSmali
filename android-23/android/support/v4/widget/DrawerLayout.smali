.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$State;,
        Landroid/support/v4/widget/DrawerLayout$LockMode;,
        Landroid/support/v4/widget/DrawerLayout$EdgeGravity;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field private static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field private static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    #@2
    return v0
.end method

.method static synthetic -get1()[I
    .locals 1

    #@0
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    #@0
    .prologue
    invoke-static {p0}, Landroid/support/v4/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x15

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 164
    new-array v1, v2, [I

    #@6
    .line 165
    const v4, 0x10100b3

    #@9
    aput v4, v1, v3

    #@b
    .line 164
    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    #@d
    .line 169
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@f
    const/16 v4, 0x13

    #@11
    if-lt v1, v4, :cond_0

    #@13
    move v1, v2

    #@14
    :goto_0
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    #@16
    .line 173
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@18
    if-lt v1, v5, :cond_1

    #@1a
    .line 172
    :goto_1
    sput-boolean v2, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    #@1c
    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1e
    .line 333
    .local v0, "version":I
    if-lt v0, v5, :cond_2

    #@20
    .line 334
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    #@22
    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    #@25
    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    #@27
    .line 90
    :goto_2
    return-void

    #@28
    .end local v0    # "version":I
    :cond_0
    move v1, v3

    #@29
    .line 169
    goto :goto_0

    #@2a
    :cond_1
    move v2, v3

    #@2b
    .line 173
    goto :goto_1

    #@2c
    .line 336
    .restart local v0    # "version":I
    :cond_2
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;

    #@2e
    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    #@31
    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    #@33
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 343
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 342
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 347
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 346
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    #@0
    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 351
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@7
    .line 176
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    #@9
    invoke-direct {v2, p0}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    #@c
    .line 175
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    #@e
    .line 181
    const/high16 v2, -0x67000000

    #@10
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    #@12
    .line 183
    new-instance v2, Landroid/graphics/Paint;

    #@14
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@17
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@19
    .line 191
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@1b
    .line 213
    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@1d
    .line 214
    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@1f
    .line 215
    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@21
    .line 216
    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@23
    .line 352
    const/high16 v2, 0x40000

    #@25
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    #@28
    .line 353
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@2f
    move-result-object v2

    #@30
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    #@32
    .line 354
    .local v0, "density":F
    const/high16 v2, 0x42800000    # 64.0f

    #@34
    mul-float/2addr v2, v0

    #@35
    const/high16 v3, 0x3f000000    # 0.5f

    #@37
    add-float/2addr v2, v3

    #@38
    float-to-int v2, v2

    #@39
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    #@3b
    .line 355
    const/high16 v2, 0x43c80000    # 400.0f

    #@3d
    mul-float v1, v2, v0

    #@3f
    .line 357
    .local v1, "minVel":F
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@41
    const/4 v3, 0x3

    #@42
    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    #@45
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@47
    .line 358
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@49
    const/4 v3, 0x5

    #@4a
    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    #@4d
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@4f
    .line 360
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@51
    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    #@54
    move-result-object v2

    #@55
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@57
    .line 361
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@59
    invoke-virtual {v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    #@5c
    .line 362
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@5e
    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    #@61
    .line 363
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@63
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@65
    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    #@68
    .line 365
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@6a
    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    #@6d
    move-result-object v2

    #@6e
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@70
    .line 366
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@72
    const/4 v3, 0x2

    #@73
    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    #@76
    .line 367
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@78
    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    #@7b
    .line 368
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@7d
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@7f
    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    #@82
    .line 371
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    #@85
    .line 373
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@88
    .line 376
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    #@8a
    invoke-direct {v2, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    #@8d
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    #@90
    .line 377
    const/4 v2, 0x0

    #@91
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    #@94
    .line 378
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@97
    move-result v2

    #@98
    if-eqz v2, :cond_0

    #@9a
    .line 379
    sget-object v2, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    #@9c
    invoke-interface {v2, p0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V

    #@9f
    .line 380
    sget-object v2, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    #@a1
    invoke-interface {v2, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@a4
    move-result-object v2

    #@a5
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@a7
    .line 383
    :cond_0
    const/high16 v2, 0x41200000    # 10.0f

    #@a9
    mul-float/2addr v2, v0

    #@aa
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    #@ac
    .line 385
    new-instance v2, Ljava/util/ArrayList;

    #@ae
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@b1
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    #@b3
    .line 350
    return-void
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 4

    #@0
    .prologue
    .line 1650
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 1651
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@7
    .line 1652
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 1653
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 1654
    return-object v0

    #@18
    .line 1651
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1657
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "gravity"    # I

    #@0
    .prologue
    .line 855
    and-int/lit8 v0, p0, 0x3

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 856
    const-string/jumbo v0, "LEFT"

    #@8
    return-object v0

    #@9
    .line 858
    :cond_0
    and-int/lit8 v0, p0, 0x5

    #@b
    const/4 v1, 0x5

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 859
    const-string/jumbo v0, "RIGHT"

    #@11
    return-object v0

    #@12
    .line 861
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1136
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 1137
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    #@7
    .line 1138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@a
    move-result v2

    #@b
    const/4 v3, -0x1

    #@c
    if-ne v2, v3, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    :cond_0
    return v1

    #@10
    .line 1140
    :cond_1
    return v1
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    #@0
    .prologue
    .line 1576
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 1577
    .local v0, "childCount":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 1578
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@11
    .line 1579
    .local v2, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 1580
    const/4 v3, 0x1

    #@16
    return v3

    #@17
    .line 1577
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1583
    .end local v2    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    #@1b
    return v3
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    #@0
    .prologue
    .line 1646
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1758
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@4
    move-result v1

    #@5
    .line 1759
    const/4 v2, 0x4

    #@6
    .line 1758
    if-eq v1, v2, :cond_0

    #@8
    .line 1760
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@b
    move-result v1

    #@c
    .line 1761
    const/4 v2, 0x2

    #@d
    .line 1760
    if-eq v1, v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    .line 1758
    :cond_0
    return v0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    #@0
    .prologue
    .line 1020
    if-eqz p1, :cond_0

    #@2
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1024
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V

    #@b
    .line 1025
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 1021
    :cond_0
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 978
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 980
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    #@6
    .line 981
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 983
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    #@f
    .line 984
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@11
    return-object v1

    #@12
    .line 987
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 989
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@18
    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    #@1b
    .line 990
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@1d
    return-object v1

    #@1e
    .line 993
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@20
    return-object v1
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 997
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 998
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    #@6
    .line 999
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 1001
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    #@f
    .line 1002
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@11
    return-object v1

    #@12
    .line 1005
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 1007
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@18
    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    #@1b
    .line 1008
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@1d
    return-object v1

    #@1e
    .line 1011
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@20
    return-object v1
.end method

.method private resolveShadowDrawables()V
    .locals 1

    #@0
    .prologue
    .line 970
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 971
    return-void

    #@5
    .line 973
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@b
    .line 974
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@11
    .line 969
    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "isDrawerOpen"    # Z

    #@0
    .prologue
    .line 755
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 756
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    #@7
    .line 757
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 758
    .local v0, "child":Landroid/view/View;
    if-nez p2, :cond_0

    #@d
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 759
    :cond_0
    if-eqz p2, :cond_2

    #@15
    if-ne v0, p1, :cond_2

    #@17
    .line 763
    :cond_1
    const/4 v3, 0x1

    #@18
    .line 762
    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@1b
    .line 756
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 766
    :cond_2
    const/4 v3, 0x4

    #@1f
    .line 765
    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@22
    goto :goto_1

    #@23
    .line 754
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1612
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    #@3
    move-result v5

    #@4
    const/high16 v6, 0x60000

    #@6
    if-ne v5, v6, :cond_0

    #@8
    .line 1613
    return-void

    #@9
    .line 1618
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@c
    move-result v1

    #@d
    .line 1619
    .local v1, "childCount":I
    const/4 v3, 0x0

    #@e
    .line 1620
    .local v3, "isDrawerOpen":Z
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    #@11
    .line 1621
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 1622
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 1623
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_1

    #@21
    .line 1624
    const/4 v3, 0x1

    #@22
    .line 1625
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    #@25
    .line 1620
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1628
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    goto :goto_1

    #@2e
    .line 1632
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    if-nez v3, :cond_5

    #@30
    .line 1633
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v4

    #@36
    .line 1634
    .local v4, "nonDrawerViewsCount":I
    const/4 v2, 0x0

    #@37
    :goto_2
    if-ge v2, v4, :cond_5

    #@39
    .line 1635
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Landroid/view/View;

    #@41
    .line 1636
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@44
    move-result v5

    #@45
    if-nez v5, :cond_4

    #@47
    .line 1637
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    #@4a
    .line 1634
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_2

    #@4d
    .line 1642
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "nonDrawerViewsCount":I
    :cond_5
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@52
    .line 1611
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1730
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 1732
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 1733
    .local v0, "openDrawer":Landroid/view/View;
    if-nez v0, :cond_0

    #@9
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 1737
    :cond_0
    const/4 v1, 0x4

    #@10
    .line 1736
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@13
    .line 1747
    :goto_0
    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    #@15
    if-nez v1, :cond_1

    #@17
    .line 1748
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    #@19
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    #@1c
    .line 1729
    :cond_1
    return-void

    #@1d
    .line 1742
    :cond_2
    const/4 v1, 0x1

    #@1e
    .line 1741
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@21
    goto :goto_0
.end method

.method cancelChildViewTouch()V
    .locals 11

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1662
    iget-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@3
    if-nez v2, :cond_1

    #@5
    .line 1663
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@8
    move-result-wide v0

    #@9
    .line 1665
    .local v0, "now":J
    const/4 v4, 0x3

    #@a
    const/4 v7, 0x0

    #@b
    move-wide v2, v0

    #@c
    move v6, v5

    #@d
    .line 1664
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@10
    move-result-object v8

    #@11
    .line 1666
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@14
    move-result v9

    #@15
    .line 1667
    .local v9, "childCount":I
    const/4 v10, 0x0

    #@16
    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    #@18
    .line 1668
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@1f
    .line 1667
    add-int/lit8 v10, v10, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1670
    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@25
    .line 1671
    const/4 v2, 0x1

    #@26
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@28
    .line 1660
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v9    # "childCount":I
    .end local v10    # "i":I
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "checkFor"    # I

    #@0
    .prologue
    .line 801
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 802
    .local v0, "absGravity":I
    and-int v1, v0, p2

    #@6
    if-ne v1, p2, :cond_0

    #@8
    const/4 v1, 0x1

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    const/4 v1, 0x0

    #@b
    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1602
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public closeDrawer(I)V
    .locals 4
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 1502
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 1503
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    #@6
    .line 1504
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "No drawer view found with gravity "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 1505
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 1504
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 1507
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    #@27
    .line 1501
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    #@0
    .prologue
    .line 1476
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1477
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "View "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " is not a sliding drawer"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 1480
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 1481
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@31
    .line 1482
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const/4 v1, 0x0

    #@32
    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@34
    .line 1483
    const/4 v1, 0x0

    #@35
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@37
    .line 1492
    .end local v0    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@3a
    .line 1475
    return-void

    #@3b
    .line 1485
    :cond_1
    const/4 v1, 0x3

    #@3c
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_2

    #@42
    .line 1486
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@44
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@47
    move-result v2

    #@48
    neg-int v2, v2

    #@49
    .line 1487
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@4c
    move-result v3

    #@4d
    .line 1486
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@50
    goto :goto_0

    #@51
    .line 1489
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@53
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@56
    move-result v2

    #@57
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@5a
    move-result v3

    #@5b
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@5e
    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 1

    #@0
    .prologue
    .line 1393
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    #@4
    .line 1392
    return-void
.end method

.method closeDrawers(Z)V
    .locals 9
    .param p1, "peekingOnly"    # Z

    #@0
    .prologue
    .line 1397
    const/4 v5, 0x0

    #@1
    .line 1398
    .local v5, "needsInvalidate":Z
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 1399
    .local v1, "childCount":I
    const/4 v3, 0x0

    #@6
    .end local v5    # "needsInvalidate":Z
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    #@8
    .line 1400
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 1401
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@12
    .line 1403
    .local v4, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_1

    #@18
    if-eqz p1, :cond_0

    #@1a
    iget-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@1c
    if-eqz v6, :cond_1

    #@1e
    .line 1407
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@21
    move-result v2

    #@22
    .line 1409
    .local v2, "childWidth":I
    const/4 v6, 0x3

    #@23
    invoke-virtual {p0, v0, v6}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_2

    #@29
    .line 1410
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@2b
    .line 1411
    neg-int v7, v2

    #@2c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@2f
    move-result v8

    #@30
    .line 1410
    invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@33
    move-result v6

    #@34
    or-int/2addr v5, v6

    #@35
    .line 1417
    .local v5, "needsInvalidate":Z
    :goto_1
    const/4 v6, 0x0

    #@36
    iput-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@38
    .line 1399
    .end local v2    # "childWidth":I
    .end local v5    # "needsInvalidate":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 1413
    .restart local v2    # "childWidth":I
    :cond_2
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@3d
    .line 1414
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@40
    move-result v7

    #@41
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@44
    move-result v8

    #@45
    .line 1413
    invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@48
    move-result v6

    #@49
    or-int/2addr v5, v6

    #@4a
    .restart local v5    # "needsInvalidate":Z
    goto :goto_1

    #@4b
    .line 1420
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childWidth":I
    .end local v4    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v5    # "needsInvalidate":Z
    :cond_3
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@4d
    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@50
    .line 1421
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@52
    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@55
    .line 1423
    if-eqz v5, :cond_4

    #@57
    .line 1424
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@5a
    .line 1396
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 1121
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@4
    move-result v0

    #@5
    .line 1122
    .local v0, "childCount":I
    const/4 v3, 0x0

    #@6
    .line 1123
    .local v3, "scrimOpacity":F
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 1124
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@13
    iget v2, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@15
    .line 1125
    .local v2, "onscreen":F
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    #@18
    move-result v3

    #@19
    .line 1123
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1127
    .end local v2    # "onscreen":F
    :cond_0
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    #@1e
    .line 1130
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@20
    invoke-virtual {v4, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    #@23
    move-result v4

    #@24
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@26
    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    #@29
    move-result v5

    #@2a
    or-int/2addr v4, v5

    #@2b
    if-eqz v4, :cond_1

    #@2d
    .line 1131
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@30
    .line 1120
    :cond_1
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@7
    .line 715
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 716
    iput-boolean v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@d
    .line 717
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 718
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@13
    invoke-interface {v2, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    #@16
    .line 721
    :cond_0
    invoke-direct {p0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    #@19
    .line 726
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 727
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    #@22
    move-result-object v1

    #@23
    .line 728
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_1

    #@25
    .line 729
    const/16 v2, 0x20

    #@27
    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@2a
    .line 713
    .end local v1    # "rootView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 736
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@7
    .line 737
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@9
    if-nez v1, :cond_2

    #@b
    .line 738
    iput-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@d
    .line 739
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 740
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@13
    invoke-interface {v1, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    #@16
    .line 743
    :cond_0
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    #@19
    .line 746
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 747
    const/16 v1, 0x20

    #@21
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    #@24
    .line 750
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    #@27
    .line 735
    :cond_2
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    #@0
    .prologue
    .line 772
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 773
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@6
    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    #@9
    .line 771
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    #@0
    .prologue
    .line 1204
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    #@3
    move-result v18

    #@4
    .line 1205
    .local v18, "height":I
    move-object/from16 v0, p0

    #@6
    move-object/from16 v1, p2

    #@8
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@b
    move-result v17

    #@c
    .line 1206
    .local v17, "drawingContent":Z
    const/4 v13, 0x0

    #@d
    .local v13, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@10
    move-result v14

    #@11
    .line 1208
    .local v14, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@14
    move-result v21

    #@15
    .line 1209
    .local v21, "restoreCount":I
    if-eqz v17, :cond_4

    #@17
    .line 1210
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@1a
    move-result v10

    #@1b
    .line 1211
    .local v10, "childCount":I
    const/16 v19, 0x0

    #@1d
    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    #@1f
    if-ge v0, v10, :cond_3

    #@21
    .line 1212
    move-object/from16 v0, p0

    #@23
    move/from16 v1, v19

    #@25
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@28
    move-result-object v25

    #@29
    .line 1213
    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, v25

    #@2b
    move-object/from16 v1, p2

    #@2d
    if-eq v0, v1, :cond_0

    #@2f
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_1

    #@35
    .line 1211
    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1214
    :cond_1
    invoke-static/range {v25 .. v25}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_0

    #@3e
    move-object/from16 v0, p0

    #@40
    move-object/from16 v1, v25

    #@42
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_0

    #@48
    .line 1215
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    #@4b
    move-result v2

    #@4c
    move/from16 v0, v18

    #@4e
    if-lt v2, v0, :cond_0

    #@50
    .line 1219
    const/4 v2, 0x3

    #@51
    move-object/from16 v0, p0

    #@53
    move-object/from16 v1, v25

    #@55
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_2

    #@5b
    .line 1220
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    #@5e
    move-result v27

    #@5f
    .line 1221
    .local v27, "vright":I
    move/from16 v0, v27

    #@61
    if-le v0, v13, :cond_0

    #@63
    move/from16 v13, v27

    #@65
    goto :goto_1

    #@66
    .line 1223
    .end local v27    # "vright":I
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    #@69
    move-result v26

    #@6a
    .line 1224
    .local v26, "vleft":I
    move/from16 v0, v26

    #@6c
    if-ge v0, v14, :cond_0

    #@6e
    move/from16 v14, v26

    #@70
    goto :goto_1

    #@71
    .line 1227
    .end local v25    # "v":Landroid/view/View;
    .end local v26    # "vleft":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    #@74
    move-result v2

    #@75
    const/4 v3, 0x0

    #@76
    move-object/from16 v0, p1

    #@78
    invoke-virtual {v0, v13, v3, v14, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@7b
    .line 1229
    .end local v10    # "childCount":I
    .end local v19    # "i":I
    :cond_4
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@7e
    move-result v22

    #@7f
    .line 1230
    .local v22, "result":Z
    move-object/from16 v0, p1

    #@81
    move/from16 v1, v21

    #@83
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@86
    .line 1232
    move-object/from16 v0, p0

    #@88
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    #@8a
    const/4 v3, 0x0

    #@8b
    cmpl-float v2, v2, v3

    #@8d
    if-lez v2, :cond_6

    #@8f
    if-eqz v17, :cond_6

    #@91
    .line 1233
    move-object/from16 v0, p0

    #@93
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    #@95
    const/high16 v3, -0x1000000

    #@97
    and-int/2addr v2, v3

    #@98
    ushr-int/lit8 v9, v2, 0x18

    #@9a
    .line 1234
    .local v9, "baseAlpha":I
    int-to-float v2, v9

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    #@9f
    mul-float/2addr v2, v3

    #@a0
    float-to-int v0, v2

    #@a1
    move/from16 v20, v0

    #@a3
    .line 1235
    .local v20, "imag":I
    shl-int/lit8 v2, v20, 0x18

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    #@a9
    const v4, 0xffffff

    #@ac
    and-int/2addr v3, v4

    #@ad
    or-int v15, v2, v3

    #@af
    .line 1236
    .local v15, "color":I
    move-object/from16 v0, p0

    #@b1
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@b3
    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    #@b6
    .line 1238
    int-to-float v3, v13

    #@b7
    const/4 v4, 0x0

    #@b8
    int-to-float v5, v14

    #@b9
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    #@bc
    move-result v2

    #@bd
    int-to-float v6, v2

    #@be
    move-object/from16 v0, p0

    #@c0
    iget-object v7, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@c2
    move-object/from16 v2, p1

    #@c4
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@c7
    .line 1263
    .end local v9    # "baseAlpha":I
    .end local v15    # "color":I
    .end local v20    # "imag":I
    :cond_5
    :goto_2
    return v22

    #@c8
    .line 1239
    :cond_6
    move-object/from16 v0, p0

    #@ca
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@cc
    if-eqz v2, :cond_7

    #@ce
    .line 1240
    const/4 v2, 0x3

    #@cf
    move-object/from16 v0, p0

    #@d1
    move-object/from16 v1, p2

    #@d3
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@d6
    move-result v2

    #@d7
    .line 1239
    if-eqz v2, :cond_7

    #@d9
    .line 1241
    move-object/from16 v0, p0

    #@db
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@dd
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@e0
    move-result v23

    #@e1
    .line 1242
    .local v23, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    #@e4
    move-result v12

    #@e5
    .line 1243
    .local v12, "childRight":I
    move-object/from16 v0, p0

    #@e7
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@e9
    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    #@ec
    move-result v16

    #@ed
    .line 1245
    .local v16, "drawerPeekDistance":I
    const/4 v2, 0x0

    #@ee
    int-to-float v3, v12

    #@ef
    move/from16 v0, v16

    #@f1
    int-to-float v4, v0

    #@f2
    div-float/2addr v3, v4

    #@f3
    const/high16 v4, 0x3f800000    # 1.0f

    #@f5
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    #@f8
    move-result v3

    #@f9
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    #@fc
    move-result v8

    #@fd
    .line 1246
    .local v8, "alpha":F
    move-object/from16 v0, p0

    #@ff
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@101
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    #@104
    move-result v3

    #@105
    .line 1247
    add-int v4, v12, v23

    #@107
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    #@10a
    move-result v5

    #@10b
    .line 1246
    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@10e
    .line 1248
    move-object/from16 v0, p0

    #@110
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@112
    const/high16 v3, 0x437f0000    # 255.0f

    #@114
    mul-float/2addr v3, v8

    #@115
    float-to-int v3, v3

    #@116
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@119
    .line 1249
    move-object/from16 v0, p0

    #@11b
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@11d
    move-object/from16 v0, p1

    #@11f
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@122
    goto :goto_2

    #@123
    .line 1250
    .end local v8    # "alpha":F
    .end local v12    # "childRight":I
    .end local v16    # "drawerPeekDistance":I
    .end local v23    # "shadowWidth":I
    :cond_7
    move-object/from16 v0, p0

    #@125
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@127
    if-eqz v2, :cond_5

    #@129
    .line 1251
    const/4 v2, 0x5

    #@12a
    move-object/from16 v0, p0

    #@12c
    move-object/from16 v1, p2

    #@12e
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@131
    move-result v2

    #@132
    .line 1250
    if-eqz v2, :cond_5

    #@134
    .line 1252
    move-object/from16 v0, p0

    #@136
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@138
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@13b
    move-result v23

    #@13c
    .line 1253
    .restart local v23    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    #@13f
    move-result v11

    #@140
    .line 1254
    .local v11, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@143
    move-result v2

    #@144
    sub-int v24, v2, v11

    #@146
    .line 1255
    .local v24, "showing":I
    move-object/from16 v0, p0

    #@148
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@14a
    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    #@14d
    move-result v16

    #@14e
    .line 1257
    .restart local v16    # "drawerPeekDistance":I
    const/4 v2, 0x0

    #@14f
    move/from16 v0, v24

    #@151
    int-to-float v3, v0

    #@152
    move/from16 v0, v16

    #@154
    int-to-float v4, v0

    #@155
    div-float/2addr v3, v4

    #@156
    const/high16 v4, 0x3f800000    # 1.0f

    #@158
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    #@15b
    move-result v3

    #@15c
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    #@15f
    move-result v8

    #@160
    .line 1258
    .restart local v8    # "alpha":F
    move-object/from16 v0, p0

    #@162
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@164
    sub-int v3, v11, v23

    #@166
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    #@169
    move-result v4

    #@16a
    .line 1259
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    #@16d
    move-result v5

    #@16e
    .line 1258
    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@171
    .line 1260
    move-object/from16 v0, p0

    #@173
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@175
    const/high16 v3, 0x437f0000    # 255.0f

    #@177
    mul-float/2addr v3, v8

    #@178
    float-to-int v3, v3

    #@179
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@17c
    .line 1261
    move-object/from16 v0, p0

    #@17e
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@180
    move-object/from16 v0, p1

    #@182
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@185
    goto/16 :goto_2
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 6
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 836
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v5

    #@4
    .line 835
    invoke-static {p1, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result v5

    #@8
    and-int/lit8 v0, v5, 0x7

    #@a
    .line 837
    .local v0, "absHorizGravity":I
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@d
    move-result v3

    #@e
    .line 838
    .local v3, "childCount":I
    const/4 v4, 0x0

    #@f
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    #@11
    .line 839
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    .line 840
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    #@18
    move-result v2

    #@19
    .line 841
    .local v2, "childAbsGravity":I
    and-int/lit8 v5, v2, 0x7

    #@1b
    if-ne v5, v0, :cond_0

    #@1d
    .line 842
    return-object v1

    #@1e
    .line 838
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@20
    goto :goto_0

    #@21
    .line 845
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :cond_1
    const/4 v5, 0x0

    #@22
    return-object v5
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 4

    #@0
    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 807
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@7
    .line 808
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 809
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@11
    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 810
    return-object v0

    #@16
    .line 807
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 813
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    #@1a
    return-object v3
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1588
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1607
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1593
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1594
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@8
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    #@b
    .line 1593
    :goto_0
    return-object v0

    #@c
    .line 1595
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1596
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@12
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@14
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@17
    goto :goto_0

    #@18
    .line 1597
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@1a
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@1d
    goto :goto_0
.end method

.method public getDrawerElevation()F
    .locals 1

    #@0
    .prologue
    .line 412
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 413
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    #@6
    return v0

    #@7
    .line 415
    :cond_0
    const/4 v0, 0x0

    #@8
    return v0
.end method

.method public getDrawerLockMode(I)I
    .locals 2
    .param p1, "edgeGravity"    # I

    #@0
    .prologue
    .line 611
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v1

    #@4
    .line 610
    invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result v0

    #@8
    .line 612
    .local v0, "absGravity":I
    const/4 v1, 0x3

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 613
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    #@d
    return v1

    #@e
    .line 614
    :cond_0
    const/4 v1, 0x5

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 615
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    #@13
    return v1

    #@14
    .line 617
    :cond_1
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    #@0
    .prologue
    .line 629
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 630
    .local v0, "absGravity":I
    const/4 v1, 0x3

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 631
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    #@9
    return v1

    #@a
    .line 632
    :cond_0
    const/4 v1, 0x5

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 633
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    #@f
    return v1

    #@10
    .line 635
    :cond_1
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "edgeGravity"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    #@0
    .prologue
    .line 669
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v1

    #@4
    .line 668
    invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result v0

    #@8
    .line 670
    .local v0, "absGravity":I
    const/4 v1, 0x3

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 671
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    #@d
    return-object v1

    #@e
    .line 672
    :cond_0
    const/4 v1, 0x5

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 673
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    #@13
    return-object v1

    #@14
    .line 675
    :cond_1
    const/4 v1, 0x0

    #@15
    return-object v1
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    #@0
    .prologue
    .line 796
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@8
    .line 797
    .local v0, "gravity":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@f
    move-result v1

    #@10
    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    #@0
    .prologue
    .line 788
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@8
    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 1160
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@7
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@9
    if-nez v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    move v0, v1

    #@e
    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    #@0
    .prologue
    .line 1537
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 1538
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 1539
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1541
    :cond_0
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;

    #@0
    .prologue
    .line 1521
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "View "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " is not a drawer"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 1524
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2d
    iget-boolean v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@2f
    return v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1271
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v2

    #@5
    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@7
    iget v1, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@9
    .line 1273
    .local v1, "gravity":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@c
    move-result v2

    #@d
    .line 1272
    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@10
    move-result v0

    #@11
    .line 1274
    .local v0, "absGravity":I
    and-int/lit8 v2, v0, 0x7

    #@13
    if-eqz v2, :cond_0

    #@15
    const/4 v2, 0x1

    #@16
    :goto_0
    return v2

    #@17
    :cond_0
    move v2, v3

    #@18
    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    #@0
    .prologue
    .line 1568
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 1569
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 1570
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1572
    :cond_0
    const/4 v1, 0x0

    #@c
    return v1
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;

    #@0
    .prologue
    .line 1553
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "View "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " is not a drawer"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 1556
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2d
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@2f
    const/4 v1, 0x0

    #@30
    cmpl-float v0, v0, v1

    #@32
    if-lez v0, :cond_1

    #@34
    const/4 v0, 0x1

    #@35
    :goto_0
    return v0

    #@36
    :cond_1
    const/4 v0, 0x0

    #@37
    goto :goto_0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    #@0
    .prologue
    .line 817
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    #@3
    move-result v2

    #@4
    .line 818
    .local v2, "oldOffset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@7
    move-result v4

    #@8
    .line 819
    .local v4, "width":I
    int-to-float v5, v4

    #@9
    mul-float/2addr v5, v2

    #@a
    float-to-int v3, v5

    #@b
    .line 820
    .local v3, "oldPos":I
    int-to-float v5, v4

    #@c
    mul-float/2addr v5, p2

    #@d
    float-to-int v1, v5

    #@e
    .line 821
    .local v1, "newPos":I
    sub-int v0, v1, v3

    #@10
    .line 824
    .local v0, "dx":I
    const/4 v5, 0x3

    #@11
    invoke-virtual {p0, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 823
    .end local v0    # "dx":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@1a
    .line 825
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    #@1d
    .line 816
    return-void

    #@1e
    .line 824
    .restart local v0    # "dx":I
    :cond_0
    neg-int v0, v0

    #@1f
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 872
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 873
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@6
    .line 871
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 866
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 867
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@6
    .line 865
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1192
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    #@4
    .line 1193
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1194
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    #@e
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    #@10
    invoke-interface {v1, v2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    #@13
    move-result v0

    #@14
    .line 1195
    .local v0, "inset":I
    if-lez v0, :cond_0

    #@16
    .line 1196
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@18
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1f
    .line 1197
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@21
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@24
    .line 1191
    .end local v0    # "inset":I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 1279
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@5
    move-result v0

    #@6
    .line 1282
    .local v0, "action":I
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@8
    invoke-virtual {v7, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@b
    move-result v7

    #@c
    .line 1283
    iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@e
    invoke-virtual {v8, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@11
    move-result v8

    #@12
    .line 1282
    or-int v2, v7, v8

    #@14
    .line 1285
    .local v2, "interceptForDrag":Z
    const/4 v3, 0x0

    #@15
    .line 1287
    .local v3, "interceptForTap":Z
    packed-switch v0, :pswitch_data_0

    #@18
    .line 1321
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@1a
    if-nez v3, :cond_1

    #@1c
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    #@1f
    move-result v7

    #@20
    if-nez v7, :cond_1

    #@22
    iget-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@24
    :cond_1
    return v6

    #@25
    .line 1289
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@28
    move-result v4

    #@29
    .line 1290
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2c
    move-result v5

    #@2d
    .line 1291
    .local v5, "y":F
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    #@2f
    .line 1292
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    #@31
    .line 1293
    iget v7, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    #@33
    const/4 v8, 0x0

    #@34
    cmpl-float v7, v7, v8

    #@36
    if-lez v7, :cond_2

    #@38
    .line 1294
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@3a
    float-to-int v8, v4

    #@3b
    float-to-int v9, v5

    #@3c
    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@3f
    move-result-object v1

    #@40
    .line 1295
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    #@42
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@45
    move-result v7

    #@46
    if-eqz v7, :cond_2

    #@48
    .line 1296
    const/4 v3, 0x1

    #@49
    .line 1299
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@4b
    .line 1300
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@4d
    goto :goto_0

    #@4e
    .line 1306
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_1
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@50
    const/4 v8, 0x3

    #@51
    invoke-virtual {v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    #@54
    move-result v7

    #@55
    if-eqz v7, :cond_0

    #@57
    .line 1307
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@59
    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@5c
    .line 1308
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #@5e
    invoke-virtual {v7}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@61
    goto :goto_0

    #@62
    .line 1315
    :pswitch_2
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    #@65
    .line 1316
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@67
    .line 1317
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@69
    goto :goto_0

    #@6a
    .line 1287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1677
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_0

    #@3
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1678
    invoke-static {p2}, Landroid/support/v4/view/KeyEventCompat;->startTracking(Landroid/view/KeyEvent;)V

    #@c
    .line 1679
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 1681
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1686
    const/4 v2, 0x4

    #@2
    if-ne p1, v2, :cond_2

    #@4
    .line 1687
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    .line 1688
    .local v0, "visibleDrawer":Landroid/view/View;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 1689
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    #@13
    .line 1691
    :cond_0
    if-eqz v0, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    :cond_1
    return v1

    #@17
    .line 1693
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@1a
    move-result v1

    #@1b
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1030
    const/16 v18, 0x1

    #@2
    move/from16 v0, v18

    #@4
    move-object/from16 v1, p0

    #@6
    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    #@8
    .line 1031
    sub-int v17, p4, p2

    #@a
    .line 1032
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@d
    move-result v6

    #@e
    .line 1033
    .local v6, "childCount":I
    const/4 v12, 0x0

    #@f
    .local v12, "i":I
    :goto_0
    if-ge v12, v6, :cond_9

    #@11
    .line 1034
    move-object/from16 v0, p0

    #@13
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v5

    #@17
    .line 1036
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@1a
    move-result v18

    #@1b
    const/16 v19, 0x8

    #@1d
    move/from16 v0, v18

    #@1f
    move/from16 v1, v19

    #@21
    if-ne v0, v1, :cond_1

    #@23
    .line 1033
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1040
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@29
    move-result-object v13

    #@2a
    check-cast v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@2c
    .line 1042
    .local v13, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    move-object/from16 v0, p0

    #@2e
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@31
    move-result v18

    #@32
    if-eqz v18, :cond_2

    #@34
    .line 1043
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@36
    move/from16 v18, v0

    #@38
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@3a
    move/from16 v19, v0

    #@3c
    .line 1044
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@3e
    move/from16 v20, v0

    #@40
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@43
    move-result v21

    #@44
    add-int v20, v20, v21

    #@46
    .line 1045
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@48
    move/from16 v21, v0

    #@4a
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@4d
    move-result v22

    #@4e
    add-int v21, v21, v22

    #@50
    .line 1043
    move/from16 v0, v18

    #@52
    move/from16 v1, v19

    #@54
    move/from16 v2, v20

    #@56
    move/from16 v3, v21

    #@58
    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    #@5b
    goto :goto_1

    #@5c
    .line 1047
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@5f
    move-result v10

    #@60
    .line 1048
    .local v10, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@63
    move-result v7

    #@64
    .line 1052
    .local v7, "childHeight":I
    const/16 v18, 0x3

    #@66
    move-object/from16 v0, p0

    #@68
    move/from16 v1, v18

    #@6a
    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@6d
    move-result v18

    #@6e
    if-eqz v18, :cond_4

    #@70
    .line 1053
    neg-int v0, v10

    #@71
    move/from16 v18, v0

    #@73
    int-to-float v0, v10

    #@74
    move/from16 v19, v0

    #@76
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@78
    move/from16 v20, v0

    #@7a
    mul-float v19, v19, v20

    #@7c
    move/from16 v0, v19

    #@7e
    float-to-int v0, v0

    #@7f
    move/from16 v19, v0

    #@81
    add-int v8, v18, v19

    #@83
    .line 1054
    .local v8, "childLeft":I
    add-int v18, v10, v8

    #@85
    move/from16 v0, v18

    #@87
    int-to-float v0, v0

    #@88
    move/from16 v18, v0

    #@8a
    int-to-float v0, v10

    #@8b
    move/from16 v19, v0

    #@8d
    div-float v14, v18, v19

    #@8f
    .line 1060
    .local v14, "newOffset":F
    :goto_2
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@91
    move/from16 v18, v0

    #@93
    cmpl-float v18, v14, v18

    #@95
    if-eqz v18, :cond_5

    #@97
    const/4 v4, 0x1

    #@98
    .line 1062
    .local v4, "changeOffset":Z
    :goto_3
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@9a
    move/from16 v18, v0

    #@9c
    and-int/lit8 v16, v18, 0x70

    #@9e
    .line 1064
    .local v16, "vgrav":I
    sparse-switch v16, :sswitch_data_0

    #@a1
    .line 1067
    :sswitch_0
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@a3
    move/from16 v18, v0

    #@a5
    add-int v19, v8, v10

    #@a7
    .line 1068
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@a9
    move/from16 v20, v0

    #@ab
    add-int v20, v20, v7

    #@ad
    .line 1067
    move/from16 v0, v18

    #@af
    move/from16 v1, v19

    #@b1
    move/from16 v2, v20

    #@b3
    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    #@b6
    .line 1098
    :goto_4
    if-eqz v4, :cond_3

    #@b8
    .line 1099
    move-object/from16 v0, p0

    #@ba
    invoke-virtual {v0, v5, v14}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    #@bd
    .line 1102
    :cond_3
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@bf
    move/from16 v18, v0

    #@c1
    const/16 v19, 0x0

    #@c3
    cmpl-float v18, v18, v19

    #@c5
    if-lez v18, :cond_8

    #@c7
    const/4 v15, 0x0

    #@c8
    .line 1103
    .local v15, "newVisibility":I
    :goto_5
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@cb
    move-result v18

    #@cc
    move/from16 v0, v18

    #@ce
    if-eq v0, v15, :cond_0

    #@d0
    .line 1104
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    #@d3
    goto/16 :goto_1

    #@d5
    .line 1056
    .end local v4    # "changeOffset":Z
    .end local v8    # "childLeft":I
    .end local v14    # "newOffset":F
    .end local v15    # "newVisibility":I
    .end local v16    # "vgrav":I
    :cond_4
    int-to-float v0, v10

    #@d6
    move/from16 v18, v0

    #@d8
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@da
    move/from16 v19, v0

    #@dc
    mul-float v18, v18, v19

    #@de
    move/from16 v0, v18

    #@e0
    float-to-int v0, v0

    #@e1
    move/from16 v18, v0

    #@e3
    sub-int v8, v17, v18

    #@e5
    .line 1057
    .restart local v8    # "childLeft":I
    sub-int v18, v17, v8

    #@e7
    move/from16 v0, v18

    #@e9
    int-to-float v0, v0

    #@ea
    move/from16 v18, v0

    #@ec
    int-to-float v0, v10

    #@ed
    move/from16 v19, v0

    #@ef
    div-float v14, v18, v19

    #@f1
    .restart local v14    # "newOffset":F
    goto :goto_2

    #@f2
    .line 1060
    :cond_5
    const/4 v4, 0x0

    #@f3
    .restart local v4    # "changeOffset":Z
    goto :goto_3

    #@f4
    .line 1073
    .restart local v16    # "vgrav":I
    :sswitch_1
    sub-int v11, p5, p3

    #@f6
    .line 1075
    .local v11, "height":I
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@f8
    move/from16 v18, v0

    #@fa
    sub-int v18, v11, v18

    #@fc
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@ff
    move-result v19

    #@100
    sub-int v18, v18, v19

    #@102
    .line 1076
    add-int v19, v8, v10

    #@104
    .line 1077
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@106
    move/from16 v20, v0

    #@108
    sub-int v20, v11, v20

    #@10a
    .line 1074
    move/from16 v0, v18

    #@10c
    move/from16 v1, v19

    #@10e
    move/from16 v2, v20

    #@110
    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    #@113
    goto :goto_4

    #@114
    .line 1082
    .end local v11    # "height":I
    :sswitch_2
    sub-int v11, p5, p3

    #@116
    .line 1083
    .restart local v11    # "height":I
    sub-int v18, v11, v7

    #@118
    div-int/lit8 v9, v18, 0x2

    #@11a
    .line 1087
    .local v9, "childTop":I
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@11c
    move/from16 v18, v0

    #@11e
    move/from16 v0, v18

    #@120
    if-ge v9, v0, :cond_7

    #@122
    .line 1088
    iget v9, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@124
    .line 1092
    :cond_6
    :goto_6
    add-int v18, v8, v10

    #@126
    .line 1093
    add-int v19, v9, v7

    #@128
    .line 1092
    move/from16 v0, v18

    #@12a
    move/from16 v1, v19

    #@12c
    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@12f
    goto :goto_4

    #@130
    .line 1089
    :cond_7
    add-int v18, v9, v7

    #@132
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@134
    move/from16 v19, v0

    #@136
    sub-int v19, v11, v19

    #@138
    move/from16 v0, v18

    #@13a
    move/from16 v1, v19

    #@13c
    if-le v0, v1, :cond_6

    #@13e
    .line 1090
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@140
    move/from16 v18, v0

    #@142
    sub-int v18, v11, v18

    #@144
    sub-int v9, v18, v7

    #@146
    goto :goto_6

    #@147
    .line 1102
    .end local v9    # "childTop":I
    .end local v11    # "height":I
    :cond_8
    const/4 v15, 0x4

    #@148
    .restart local v15    # "newVisibility":I
    goto :goto_5

    #@149
    .line 1108
    .end local v4    # "changeOffset":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v14    # "newOffset":F
    .end local v15    # "newVisibility":I
    .end local v16    # "vgrav":I
    :cond_9
    const/16 v18, 0x0

    #@14b
    move/from16 v0, v18

    #@14d
    move-object/from16 v1, p0

    #@14f
    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    #@151
    .line 1109
    const/16 v18, 0x0

    #@153
    move/from16 v0, v18

    #@155
    move-object/from16 v1, p0

    #@157
    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@159
    .line 1029
    return-void

    #@15a
    .line 1064
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 878
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v17

    #@4
    .line 879
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v12

    #@8
    .line 880
    .local v12, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@b
    move-result v18

    #@c
    .line 881
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result v13

    #@10
    .line 883
    .local v13, "heightSize":I
    const/high16 v19, 0x40000000    # 2.0f

    #@12
    move/from16 v0, v17

    #@14
    move/from16 v1, v19

    #@16
    if-ne v0, v1, :cond_0

    #@18
    const/high16 v19, 0x40000000    # 2.0f

    #@1a
    move/from16 v0, v19

    #@1c
    if-eq v12, v0, :cond_2

    #@1e
    .line 884
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    #@21
    move-result v19

    #@22
    if-eqz v19, :cond_5

    #@24
    .line 889
    const/high16 v19, -0x80000000

    #@26
    move/from16 v0, v17

    #@28
    move/from16 v1, v19

    #@2a
    if-ne v0, v1, :cond_3

    #@2c
    .line 890
    const/high16 v17, 0x40000000    # 2.0f

    #@2e
    .line 895
    :cond_1
    :goto_0
    const/high16 v19, -0x80000000

    #@30
    move/from16 v0, v19

    #@32
    if-ne v12, v0, :cond_4

    #@34
    .line 896
    const/high16 v12, 0x40000000    # 2.0f

    #@36
    .line 908
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    #@38
    move/from16 v1, v18

    #@3a
    invoke-virtual {v0, v1, v13}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    #@3d
    .line 910
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    #@41
    move-object/from16 v19, v0

    #@43
    if-eqz v19, :cond_6

    #@45
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@48
    move-result v3

    #@49
    .line 911
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@4c
    move-result v15

    #@4d
    .line 915
    .local v15, "layoutDirection":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@50
    move-result v6

    #@51
    .line 916
    .local v6, "childCount":I
    const/4 v14, 0x0

    #@52
    .local v14, "i":I
    :goto_3
    if-ge v14, v6, :cond_e

    #@54
    .line 917
    move-object/from16 v0, p0

    #@56
    invoke-virtual {v0, v14}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@59
    move-result-object v5

    #@5a
    .line 919
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@5d
    move-result v19

    #@5e
    const/16 v20, 0x8

    #@60
    move/from16 v0, v19

    #@62
    move/from16 v1, v20

    #@64
    if-ne v0, v1, :cond_7

    #@66
    .line 916
    :goto_4
    add-int/lit8 v14, v14, 0x1

    #@68
    goto :goto_3

    #@69
    .line 891
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v14    # "i":I
    .end local v15    # "layoutDirection":I
    :cond_3
    if-nez v17, :cond_1

    #@6b
    .line 892
    const/high16 v17, 0x40000000    # 2.0f

    #@6d
    .line 893
    const/16 v18, 0x12c

    #@6f
    goto :goto_0

    #@70
    .line 898
    :cond_4
    if-nez v12, :cond_2

    #@72
    .line 899
    const/high16 v12, 0x40000000    # 2.0f

    #@74
    .line 900
    const/16 v13, 0x12c

    #@76
    goto :goto_1

    #@77
    .line 903
    :cond_5
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@79
    .line 904
    const-string/jumbo v20, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    #@7c
    .line 903
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v19

    #@80
    .line 910
    :cond_6
    const/4 v3, 0x0

    #@81
    .local v3, "applyInsets":Z
    goto :goto_2

    #@82
    .line 923
    .end local v3    # "applyInsets":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v14    # "i":I
    .restart local v15    # "layoutDirection":I
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@85
    move-result-object v16

    #@86
    check-cast v16, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@88
    .line 925
    .local v16, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    if-eqz v3, :cond_8

    #@8a
    .line 926
    move-object/from16 v0, v16

    #@8c
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@8e
    move/from16 v19, v0

    #@90
    move/from16 v0, v19

    #@92
    invoke-static {v0, v15}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@95
    move-result v4

    #@96
    .line 927
    .local v4, "cgrav":I
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@99
    move-result v19

    #@9a
    if-eqz v19, :cond_9

    #@9c
    .line 928
    sget-object v19, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    #@9e
    move-object/from16 v0, p0

    #@a0
    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    #@a2
    move-object/from16 v20, v0

    #@a4
    move-object/from16 v0, v19

    #@a6
    move-object/from16 v1, v20

    #@a8
    invoke-interface {v0, v5, v1, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    #@ab
    .line 934
    .end local v4    # "cgrav":I
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    #@ad
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@b0
    move-result v19

    #@b1
    if-eqz v19, :cond_a

    #@b3
    .line 937
    move-object/from16 v0, v16

    #@b5
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@b7
    move/from16 v19, v0

    #@b9
    sub-int v19, v18, v19

    #@bb
    move-object/from16 v0, v16

    #@bd
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    #@bf
    move/from16 v20, v0

    #@c1
    sub-int v19, v19, v20

    #@c3
    const/high16 v20, 0x40000000    # 2.0f

    #@c5
    .line 936
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@c8
    move-result v9

    #@c9
    .line 939
    .local v9, "contentWidthSpec":I
    move-object/from16 v0, v16

    #@cb
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@cd
    move/from16 v19, v0

    #@cf
    sub-int v19, v13, v19

    #@d1
    move-object/from16 v0, v16

    #@d3
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@d5
    move/from16 v20, v0

    #@d7
    sub-int v19, v19, v20

    #@d9
    const/high16 v20, 0x40000000    # 2.0f

    #@db
    .line 938
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@de
    move-result v8

    #@df
    .line 940
    .local v8, "contentHeightSpec":I
    invoke-virtual {v5, v9, v8}, Landroid/view/View;->measure(II)V

    #@e2
    goto :goto_4

    #@e3
    .line 930
    .end local v8    # "contentHeightSpec":I
    .end local v9    # "contentWidthSpec":I
    .restart local v4    # "cgrav":I
    :cond_9
    sget-object v19, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    #@e9
    move-object/from16 v20, v0

    #@eb
    move-object/from16 v0, v19

    #@ed
    move-object/from16 v1, v16

    #@ef
    move-object/from16 v2, v20

    #@f1
    invoke-interface {v0, v1, v2, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    #@f4
    goto :goto_5

    #@f5
    .line 941
    .end local v4    # "cgrav":I
    :cond_a
    move-object/from16 v0, p0

    #@f7
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@fa
    move-result v19

    #@fb
    if-eqz v19, :cond_d

    #@fd
    .line 942
    sget-boolean v19, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    #@ff
    if-eqz v19, :cond_b

    #@101
    .line 943
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@104
    move-result v19

    #@105
    move-object/from16 v0, p0

    #@107
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    #@109
    move/from16 v20, v0

    #@10b
    cmpl-float v19, v19, v20

    #@10d
    if-eqz v19, :cond_b

    #@10f
    .line 944
    move-object/from16 v0, p0

    #@111
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    #@113
    move/from16 v19, v0

    #@115
    move/from16 v0, v19

    #@117
    invoke-static {v5, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    #@11a
    .line 948
    :cond_b
    move-object/from16 v0, p0

    #@11c
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    #@11f
    move-result v19

    #@120
    and-int/lit8 v7, v19, 0x7

    #@122
    .line 949
    .local v7, "childGravity":I
    and-int/lit8 v19, v7, 0x0

    #@124
    if-eqz v19, :cond_c

    #@126
    .line 950
    new-instance v19, Ljava/lang/IllegalStateException;

    #@128
    new-instance v20, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v21, "Child drawer has absolute gravity "

    #@130
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v20

    #@134
    .line 951
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    #@137
    move-result-object v21

    #@138
    .line 950
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v20

    #@13c
    .line 951
    const-string/jumbo v21, " but this "

    #@13f
    .line 950
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v20

    #@143
    .line 951
    const-string/jumbo v21, "DrawerLayout"

    #@146
    .line 950
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v20

    #@14a
    .line 951
    const-string/jumbo v21, " already has a "

    #@14d
    .line 950
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v20

    #@151
    .line 952
    const-string/jumbo v21, "drawer view along that edge"

    #@154
    .line 950
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v20

    #@158
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v20

    #@15c
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15f
    throw v19

    #@160
    .line 955
    :cond_c
    move-object/from16 v0, p0

    #@162
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    #@164
    move/from16 v19, v0

    #@166
    move-object/from16 v0, v16

    #@168
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@16a
    move/from16 v20, v0

    #@16c
    add-int v19, v19, v20

    #@16e
    move-object/from16 v0, v16

    #@170
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    #@172
    move/from16 v20, v0

    #@174
    add-int v19, v19, v20

    #@176
    .line 956
    move-object/from16 v0, v16

    #@178
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    #@17a
    move/from16 v20, v0

    #@17c
    .line 954
    move/from16 v0, p1

    #@17e
    move/from16 v1, v19

    #@180
    move/from16 v2, v20

    #@182
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    #@185
    move-result v11

    #@186
    .line 958
    .local v11, "drawerWidthSpec":I
    move-object/from16 v0, v16

    #@188
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@18a
    move/from16 v19, v0

    #@18c
    move-object/from16 v0, v16

    #@18e
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@190
    move/from16 v20, v0

    #@192
    add-int v19, v19, v20

    #@194
    .line 959
    move-object/from16 v0, v16

    #@196
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    #@198
    move/from16 v20, v0

    #@19a
    .line 957
    move/from16 v0, p2

    #@19c
    move/from16 v1, v19

    #@19e
    move/from16 v2, v20

    #@1a0
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    #@1a3
    move-result v10

    #@1a4
    .line 960
    .local v10, "drawerHeightSpec":I
    invoke-virtual {v5, v11, v10}, Landroid/view/View;->measure(II)V

    #@1a7
    goto/16 :goto_4

    #@1a9
    .line 962
    .end local v7    # "childGravity":I
    .end local v10    # "drawerHeightSpec":I
    .end local v11    # "drawerWidthSpec":I
    :cond_d
    new-instance v19, Ljava/lang/IllegalStateException;

    #@1ab
    new-instance v20, Ljava/lang/StringBuilder;

    #@1ad
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1b0
    const-string/jumbo v21, "Child "

    #@1b3
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v20

    #@1b7
    move-object/from16 v0, v20

    #@1b9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v20

    #@1bd
    const-string/jumbo v21, " at index "

    #@1c0
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v20

    #@1c4
    move-object/from16 v0, v20

    #@1c6
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v20

    #@1ca
    .line 963
    const-string/jumbo v21, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    #@1cd
    .line 962
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v20

    #@1d1
    .line 964
    const-string/jumbo v21, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    #@1d4
    .line 962
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v20

    #@1d8
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1db
    move-result-object v20

    #@1dc
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1df
    throw v19

    #@1e0
    .line 877
    .end local v5    # "child":Landroid/view/View;
    .end local v16    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_e
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 1698
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$SavedState;

    #@3
    .line 1699
    .local v0, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v2

    #@7
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 1701
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1702
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@10
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@13
    move-result-object v1

    #@14
    .line 1703
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_0

    #@16
    .line 1704
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    #@19
    .line 1708
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_0
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    #@1b
    const/4 v3, 0x3

    #@1c
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@1f
    .line 1709
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    #@21
    const/4 v3, 0x5

    #@22
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@25
    .line 1697
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 1187
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    #@3
    .line 1186
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    #@0
    .prologue
    .line 1714
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v2

    #@4
    .line 1715
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    #@6
    invoke-direct {v1, v2}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1717
    .local v1, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 1718
    .local v0, "openDrawer":Landroid/view/View;
    if-eqz v0, :cond_0

    #@f
    .line 1719
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@15
    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@17
    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@19
    .line 1722
    :cond_0
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    #@1b
    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    #@1d
    .line 1723
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    #@1f
    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    #@21
    .line 1725
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 1326
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@3
    invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    #@6
    .line 1327
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@8
    invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    #@b
    .line 1329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@e
    move-result v0

    #@f
    .line 1330
    .local v0, "action":I
    const/4 v7, 0x1

    #@10
    .line 1332
    .local v7, "wantTouchEvents":Z
    and-int/lit16 v10, v0, 0xff

    #@12
    packed-switch v10, :pswitch_data_0

    #@15
    .line 1373
    :goto_0
    :pswitch_0
    return v7

    #@16
    .line 1334
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@19
    move-result v8

    #@1a
    .line 1335
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1d
    move-result v9

    #@1e
    .line 1336
    .local v9, "y":F
    iput v8, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    #@20
    .line 1337
    iput v9, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    #@22
    .line 1338
    iput-boolean v13, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@24
    .line 1339
    iput-boolean v13, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@26
    goto :goto_0

    #@27
    .line 1344
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@2a
    move-result v8

    #@2b
    .line 1345
    .restart local v8    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2e
    move-result v9

    #@2f
    .line 1346
    .restart local v9    # "y":F
    const/4 v4, 0x1

    #@30
    .line 1347
    .local v4, "peekingOnly":Z
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@32
    float-to-int v11, v8

    #@33
    float-to-int v12, v9

    #@34
    invoke-virtual {v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@37
    move-result-object v6

    #@38
    .line 1348
    .local v6, "touchedView":Landroid/view/View;
    if-eqz v6, :cond_0

    #@3a
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@3d
    move-result v10

    #@3e
    if-eqz v10, :cond_0

    #@40
    .line 1349
    iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    #@42
    sub-float v1, v8, v10

    #@44
    .line 1350
    .local v1, "dx":F
    iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    #@46
    sub-float v2, v9, v10

    #@48
    .line 1351
    .local v2, "dy":F
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@4a
    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    #@4d
    move-result v5

    #@4e
    .line 1352
    .local v5, "slop":I
    mul-float v10, v1, v1

    #@50
    mul-float v11, v2, v2

    #@52
    add-float/2addr v10, v11

    #@53
    mul-int v11, v5, v5

    #@55
    int-to-float v11, v11

    #@56
    cmpg-float v10, v10, v11

    #@58
    if-gez v10, :cond_0

    #@5a
    .line 1354
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    #@5d
    move-result-object v3

    #@5e
    .line 1355
    .local v3, "openDrawer":Landroid/view/View;
    if-eqz v3, :cond_0

    #@60
    .line 1356
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@63
    move-result v10

    #@64
    const/4 v11, 0x2

    #@65
    if-ne v10, v11, :cond_1

    #@67
    const/4 v4, 0x1

    #@68
    .line 1360
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v5    # "slop":I
    :cond_0
    :goto_1
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    #@6b
    .line 1361
    iput-boolean v13, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@6d
    goto :goto_0

    #@6e
    .line 1356
    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    .restart local v3    # "openDrawer":Landroid/view/View;
    .restart local v5    # "slop":I
    :cond_1
    const/4 v4, 0x0

    #@6f
    goto :goto_1

    #@70
    .line 1366
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v4    # "peekingOnly":Z
    .end local v5    # "slop":I
    .end local v6    # "touchedView":Landroid/view/View;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    const/4 v10, 0x1

    #@71
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    #@74
    .line 1367
    iput-boolean v13, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@76
    .line 1368
    iput-boolean v13, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@78
    goto :goto_0

    #@79
    .line 1332
    nop

    #@7a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 4
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 1462
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 1463
    .local v0, "drawerView":Landroid/view/View;
    if-nez v0, :cond_0

    #@6
    .line 1464
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "No drawer view found with gravity "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 1465
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 1464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 1467
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    #@27
    .line 1461
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1434
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1435
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "View "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, " is not a sliding drawer"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 1438
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    #@2a
    if-eqz v1, :cond_1

    #@2c
    .line 1439
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@32
    .line 1440
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    #@34
    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@36
    .line 1441
    iput-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->knownOpen:Z

    #@38
    .line 1443
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    #@3b
    .line 1452
    .end local v0    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@3e
    .line 1433
    return-void

    #@3f
    .line 1445
    :cond_1
    const/4 v1, 0x3

    #@40
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_2

    #@46
    .line 1446
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@48
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@4b
    move-result v2

    #@4c
    const/4 v3, 0x0

    #@4d
    invoke-virtual {v1, p1, v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@50
    goto :goto_0

    #@51
    .line 1448
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@53
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@56
    move-result v2

    #@57
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@5a
    move-result v3

    #@5b
    sub-int/2addr v2, v3

    #@5c
    .line 1449
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@5f
    move-result v3

    #@60
    .line 1448
    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@63
    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    #@0
    .prologue
    .line 1381
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    #@3
    .line 1383
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    #@5
    .line 1384
    if-eqz p1, :cond_0

    #@7
    .line 1385
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    #@b
    .line 1376
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    #@0
    .prologue
    .line 1114
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1115
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@7
    .line 1113
    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "draw"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 424
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    #@3
    .line 425
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    #@5
    .line 426
    if-nez p2, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v1

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    #@11
    .line 427
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    #@14
    .line 423
    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 3
    .param p1, "elevation"    # F

    #@0
    .prologue
    .line 395
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    #@2
    .line 396
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 397
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 398
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 399
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    #@15
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    #@18
    .line 396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 394
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@0
    .prologue
    .line 504
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@2
    .line 503
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .param p1, "lockMode"    # I

    #@0
    .prologue
    .line 521
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@4
    .line 522
    const/4 v0, 0x5

    #@5
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@8
    .line 520
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 6
    .param p1, "lockMode"    # I
    .param p2, "edgeGravity"    # I

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    .line 546
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@4
    move-result v4

    #@5
    .line 545
    invoke-static {p2, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@8
    move-result v0

    #@9
    .line 547
    .local v0, "absGravity":I
    if-ne v0, v5, :cond_3

    #@b
    .line 548
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    #@d
    .line 552
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    #@f
    .line 554
    if-ne v0, v5, :cond_4

    #@11
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@13
    .line 555
    .local v1, "helper":Landroid/support/v4/widget/ViewDragHelper;
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@16
    .line 557
    .end local v1    # "helper":Landroid/support/v4/widget/ViewDragHelper;
    :cond_1
    packed-switch p1, :pswitch_data_0

    #@19
    .line 544
    :cond_2
    :goto_2
    return-void

    #@1a
    .line 549
    :cond_3
    const/4 v4, 0x5

    #@1b
    if-ne v0, v4, :cond_0

    #@1d
    .line 550
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    #@1f
    goto :goto_0

    #@20
    .line 554
    :cond_4
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@22
    .restart local v1    # "helper":Landroid/support/v4/widget/ViewDragHelper;
    goto :goto_1

    #@23
    .line 559
    .end local v1    # "helper":Landroid/support/v4/widget/ViewDragHelper;
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@26
    move-result-object v3

    #@27
    .line 560
    .local v3, "toOpen":Landroid/view/View;
    if-eqz v3, :cond_2

    #@29
    .line 561
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    #@2c
    goto :goto_2

    #@2d
    .line 565
    .end local v3    # "toOpen":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@30
    move-result-object v2

    #@31
    .line 566
    .local v2, "toClose":Landroid/view/View;
    if-eqz v2, :cond_2

    #@33
    .line 567
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    #@36
    goto :goto_2

    #@37
    .line 557
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 4
    .param p1, "lockMode"    # I
    .param p2, "drawerView"    # Landroid/view/View;

    #@0
    .prologue
    .line 593
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 594
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "View "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " is not a "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 595
    const-string/jumbo v3, "drawer with appropriate layout_gravity"

    #@22
    .line 594
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 597
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@34
    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    #@36
    .line 598
    .local v0, "gravity":I
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@39
    .line 592
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "gravity"    # I

    #@0
    .prologue
    .line 484
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    #@b
    .line 483
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I

    #@0
    .prologue
    const v2, 0x800005

    #@3
    const v1, 0x800003

    #@6
    .line 450
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 452
    return-void

    #@b
    .line 454
    :cond_0
    and-int v0, p2, v1

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 455
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@11
    .line 465
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    #@14
    .line 466
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@17
    .line 444
    return-void

    #@18
    .line 456
    :cond_1
    and-int v0, p2, v2

    #@1a
    if-ne v0, v2, :cond_2

    #@1c
    .line 457
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@1e
    goto :goto_0

    #@1f
    .line 458
    :cond_2
    and-int/lit8 v0, p2, 0x3

    #@21
    const/4 v1, 0x3

    #@22
    if-ne v0, v1, :cond_3

    #@24
    .line 459
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@26
    goto :goto_0

    #@27
    .line 460
    :cond_3
    and-int/lit8 v0, p2, 0x5

    #@29
    const/4 v1, 0x5

    #@2a
    if-ne v0, v1, :cond_4

    #@2c
    .line 461
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@2e
    goto :goto_0

    #@2f
    .line 463
    :cond_4
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "edgeGravity"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 650
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v1

    #@4
    .line 649
    invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result v0

    #@8
    .line 651
    .local v0, "absGravity":I
    const/4 v1, 0x3

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 652
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    #@d
    .line 648
    :cond_0
    :goto_0
    return-void

    #@e
    .line 653
    :cond_1
    const/4 v1, 0x5

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 654
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    #@13
    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    #@0
    .prologue
    .line 778
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    .line 779
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@8
    cmpl-float v1, p2, v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 780
    return-void

    #@d
    .line 783
    :cond_0
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@f
    .line 784
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    #@12
    .line 777
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    #@0
    .prologue
    .line 493
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    #@2
    .line 494
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@5
    .line 492
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1170
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    :goto_0
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@c
    .line 1171
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@f
    .line 1169
    return-void

    #@10
    .line 1170
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1150
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@2
    .line 1151
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@5
    .line 1149
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    #@0
    .prologue
    .line 1182
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@2
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@5
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@7
    .line 1183
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@a
    .line 1181
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 7
    .param p1, "forGravity"    # I
    .param p2, "activeState"    # I
    .param p3, "activeDrawer"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    .line 683
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@4
    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    #@7
    move-result v0

    #@8
    .line 684
    .local v0, "leftState":I
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@a
    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    #@d
    move-result v2

    #@e
    .line 687
    .local v2, "rightState":I
    if-eq v0, v5, :cond_0

    #@10
    if-ne v2, v5, :cond_3

    #@12
    .line 688
    :cond_0
    const/4 v3, 0x1

    #@13
    .line 695
    .local v3, "state":I
    :goto_0
    if-eqz p3, :cond_1

    #@15
    if-nez p2, :cond_1

    #@17
    .line 696
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@1d
    .line 697
    .local v1, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v4, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@1f
    const/4 v5, 0x0

    #@20
    cmpl-float v4, v4, v5

    #@22
    if-nez v4, :cond_6

    #@24
    .line 698
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    #@27
    .line 704
    .end local v1    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    :goto_1
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    #@29
    if-eq v3, v4, :cond_2

    #@2b
    .line 705
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    #@2d
    .line 707
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 708
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    #@33
    invoke-interface {v4, v3}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    #@36
    .line 682
    :cond_2
    return-void

    #@37
    .line 689
    .end local v3    # "state":I
    :cond_3
    if-eq v0, v6, :cond_4

    #@39
    if-ne v2, v6, :cond_5

    #@3b
    .line 690
    :cond_4
    const/4 v3, 0x2

    #@3c
    .line 689
    .restart local v3    # "state":I
    goto :goto_0

    #@3d
    .line 692
    .end local v3    # "state":I
    :cond_5
    const/4 v3, 0x0

    #@3e
    .restart local v3    # "state":I
    goto :goto_0

    #@3f
    .line 699
    .restart local v1    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_6
    iget v4, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@41
    const/high16 v5, 0x3f800000    # 1.0f

    #@43
    cmpl-float v4, v4, v5

    #@45
    if-nez v4, :cond_1

    #@47
    .line 700
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    #@4a
    goto :goto_1
.end method
