.class public Lcom/android/internal/view/FloatingActionMode;
.super Landroid/view/ActionMode;
.source "FloatingActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/FloatingActionMode$1;,
        Lcom/android/internal/view/FloatingActionMode$2;,
        Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    }
.end annotation


# static fields
.field private static final MAX_HIDE_DURATION:I = 0xbb8

.field private static final MOVING_HIDE_DELAY:I = 0x32


# instance fields
.field private final mBottomAllowance:I

.field private final mCallback:Landroid/view/ActionMode$Callback2;

.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContentRectOnScreen:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

.field private final mHideOff:Ljava/lang/Runnable;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mMovingOff:Ljava/lang/Runnable;

.field private final mOriginatingView:Landroid/view/View;

.field private final mPreviousContentRectOnScreen:Landroid/graphics/Rect;

.field private final mPreviousViewPositionOnScreen:[I

.field private final mPreviousViewRectOnScreen:Landroid/graphics/Rect;

.field private final mRootViewPositionOnScreen:[I

.field private final mScreenRect:Landroid/graphics/Rect;

.field private final mViewPositionOnScreen:[I

.field private final mViewRectOnScreen:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/FloatingActionMode;)Landroid/view/ActionMode$Callback2;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x2

    #@2
    .line 75
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    #@5
    .line 58
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$1;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    #@a
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    #@c
    .line 65
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$2;

    #@e
    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$2;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    #@11
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    #@13
    .line 77
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/content/Context;

    #@19
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    #@1b
    .line 78
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/view/ActionMode$Callback2;

    #@21
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    #@23
    .line 79
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    #@25
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@28
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2e
    .line 81
    invoke-virtual {p0, v1}, Lcom/android/internal/view/FloatingActionMode;->setType(I)V

    #@31
    .line 82
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@33
    new-instance v1, Lcom/android/internal/view/FloatingActionMode$3;

    #@35
    invoke-direct {v1, p0}, Lcom/android/internal/view/FloatingActionMode$3;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    #@38
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@3b
    .line 91
    new-instance v0, Landroid/graphics/Rect;

    #@3d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    #@42
    .line 92
    new-instance v0, Landroid/graphics/Rect;

    #@44
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@47
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@49
    .line 93
    new-instance v0, Landroid/graphics/Rect;

    #@4b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4e
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    #@50
    .line 94
    new-array v0, v2, [I

    #@52
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@54
    .line 95
    new-array v0, v2, [I

    #@56
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    #@58
    .line 96
    new-array v0, v2, [I

    #@5a
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    #@5c
    .line 97
    new-instance v0, Landroid/graphics/Rect;

    #@5e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@61
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@63
    .line 98
    new-instance v0, Landroid/graphics/Rect;

    #@65
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@68
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    #@6a
    .line 99
    new-instance v0, Landroid/graphics/Rect;

    #@6c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@6f
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    #@71
    .line 100
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    move-result-object v0

    #@75
    check-cast v0, Landroid/view/View;

    #@77
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@79
    .line 101
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@7b
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@7d
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@80
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@83
    move-result-object v0

    #@84
    .line 105
    const v1, 0x10500b8

    #@87
    .line 104
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@8a
    move-result v0

    #@8b
    iput v0, p0, Lcom/android/internal/view/FloatingActionMode;->mBottomAllowance:I

    #@8d
    .line 76
    return-void
.end method

.method private checkToolbarInitialized()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 290
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@a
    .line 291
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@c
    if-eqz v0, :cond_1

    #@e
    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@11
    .line 289
    return-void

    #@12
    :cond_0
    move v0, v2

    #@13
    .line 290
    goto :goto_0

    #@14
    :cond_1
    move v1, v2

    #@15
    .line 291
    goto :goto_1
.end method

.method private static intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "a"    # Landroid/graphics/Rect;
    .param p1, "b"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 225
    iget v1, p0, Landroid/graphics/Rect;->left:I

    #@3
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@5
    if-gt v1, v2, :cond_0

    #@7
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@9
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@b
    if-gt v1, v2, :cond_0

    #@d
    .line 226
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@f
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@11
    if-gt v1, v2, :cond_0

    #@13
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@15
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    #@17
    if-gt v1, v2, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    .line 225
    :cond_0
    return v0
.end method

.method private isContentRectWithinBounds()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 213
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@e
    move-result-object v0

    #@f
    .line 215
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    #@11
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@13
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@15
    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@18
    .line 217
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@1a
    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    #@1c
    invoke-static {v2, v3}, Lcom/android/internal/view/FloatingActionMode;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 218
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@24
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@26
    invoke-static {v1, v2}, Lcom/android/internal/view/FloatingActionMode;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@29
    move-result v1

    #@2a
    .line 217
    :cond_0
    return v1
.end method

.method private repositionToolbar()V
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 168
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@5
    .line 170
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@7
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    #@9
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@c
    .line 174
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@e
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v0

    #@12
    .line 175
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 176
    check-cast v0, Landroid/view/ViewGroup;

    #@18
    .line 177
    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@1a
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@1c
    .line 178
    const/4 v3, 0x0

    #@1d
    .line 176
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    #@20
    .line 179
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@22
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    #@24
    aget v2, v2, v4

    #@26
    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    #@28
    aget v3, v3, v8

    #@2a
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@2d
    .line 184
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->isContentRectWithinBounds()Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 185
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@35
    invoke-virtual {v1, v4}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    #@38
    .line 187
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@3a
    .line 188
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@3c
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@3e
    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@40
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@42
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@45
    move-result v2

    #@46
    .line 189
    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@48
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@4a
    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@4c
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@4e
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@51
    move-result v3

    #@52
    .line 190
    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@54
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@56
    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@58
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@5a
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@5d
    move-result v4

    #@5e
    .line 191
    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@60
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@62
    .line 192
    iget-object v6, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@64
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@66
    iget v7, p0, Lcom/android/internal/view/FloatingActionMode;->mBottomAllowance:I

    #@68
    add-int/2addr v6, v7

    #@69
    .line 191
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@6c
    move-result v5

    #@6d
    .line 187
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    #@70
    .line 194
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@72
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    #@74
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v1

    #@78
    if-nez v1, :cond_0

    #@7a
    .line 196
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@7c
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    #@7e
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@81
    .line 197
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@83
    invoke-virtual {v1, v8}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    #@86
    .line 198
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@88
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    #@8a
    const-wide/16 v4, 0x32

    #@8c
    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@8f
    .line 200
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@91
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@93
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar;->setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/FloatingToolbar;

    #@96
    .line 201
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@98
    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/FloatingToolbar;

    #@9b
    .line 207
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@9d
    invoke-virtual {v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    #@a0
    .line 209
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    #@a2
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@a4
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a7
    .line 167
    return-void

    #@a8
    .line 181
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@aa
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@ac
    aget v2, v2, v4

    #@ae
    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@b0
    aget v3, v3, v8

    #@b2
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    #@b5
    goto/16 :goto_0

    #@b7
    .line 204
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@b9
    invoke-virtual {v1, v8}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    #@bc
    .line 205
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@be
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    #@c1
    goto :goto_1
.end method

.method private reset()V
    .locals 2

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    #@5
    .line 296
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->deactivate()V

    #@a
    .line 297
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@c
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@11
    .line 298
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@13
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@18
    .line 294
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@3
    .line 257
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->reset()V

    #@6
    .line 258
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    #@8
    invoke-virtual {v0, p0}, Landroid/view/ActionMode$Callback2;->onDestroyActionMode(Landroid/view/ActionMode;)V

    #@b
    .line 255
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 278
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    #@0
    .prologue
    .line 283
    new-instance v0, Landroid/view/MenuInflater;

    #@2
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    #@7
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 273
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 268
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public hide(J)V
    .locals 3
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@3
    .line 233
    const-wide/16 v0, -0x1

    #@5
    cmp-long v0, p1, v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 234
    invoke-static {}, Landroid/view/ViewConfiguration;->getDefaultActionModeHideDuration()J

    #@c
    move-result-wide p1

    #@d
    .line 236
    :cond_0
    const-wide/16 v0, 0xbb8

    #@f
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    #@12
    move-result-wide p1

    #@13
    .line 237
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@15
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    #@17
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1a
    .line 238
    const-wide/16 v0, 0x0

    #@1c
    cmp-long v0, p1, v0

    #@1e
    if-gtz v0, :cond_1

    #@20
    .line 239
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    #@22
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@25
    .line 230
    :goto_0
    return-void

    #@26
    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@28
    const/4 v1, 0x1

    #@29
    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setHideRequested(Z)V

    #@2c
    .line 242
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@2e
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    #@31
    .line 243
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@33
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    #@35
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@38
    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@3
    .line 139
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    #@5
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@7
    invoke-virtual {v0, p0, v1}, Landroid/view/ActionMode$Callback2;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@a
    .line 140
    invoke-virtual {p0}, Lcom/android/internal/view/FloatingActionMode;->invalidateContentRect()V

    #@d
    .line 137
    return-void
.end method

.method public invalidateContentRect()V
    .locals 3

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@3
    .line 146
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    #@5
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@7
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    #@9
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    #@c
    .line 147
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->repositionToolbar()V

    #@f
    .line 144
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@3
    .line 250
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setWindowFocused(Z)V

    #@8
    .line 251
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    #@d
    .line 248
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 134
    return-void
.end method

.method public setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V
    .locals 2
    .param p1, "floatingToolbar"    # Lcom/android/internal/widget/FloatingToolbar;

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    .line 109
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/FloatingToolbar;->setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/FloatingToolbar;

    #@5
    move-result-object v0

    #@6
    .line 111
    new-instance v1, Lcom/android/internal/view/FloatingActionMode$4;

    #@8
    invoke-direct {v1, p0}, Lcom/android/internal/view/FloatingActionMode$4;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    #@b
    .line 109
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/FloatingToolbar;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@11
    .line 117
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@13
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@15
    invoke-direct {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;-><init>(Lcom/android/internal/widget/FloatingToolbar;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@1a
    .line 118
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@1c
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->activate()V

    #@1f
    .line 108
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 131
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 128
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 125
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 122
    return-void
.end method

.method public updateViewLocationInWindow()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 151
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@5
    .line 153
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@7
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@9
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@c
    .line 154
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@e
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    #@14
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@17
    .line 155
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@19
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    #@1e
    .line 156
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@20
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    #@22
    aget v1, v1, v3

    #@24
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    #@26
    aget v2, v2, v4

    #@28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    #@2b
    .line 158
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@2d
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    #@2f
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_0

    #@35
    .line 159
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@37
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_0

    #@3f
    .line 150
    :goto_0
    return-void

    #@40
    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->repositionToolbar()V

    #@43
    .line 161
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    #@45
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@47
    aget v1, v1, v3

    #@49
    aput v1, v0, v3

    #@4b
    .line 162
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    #@4d
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@4f
    aget v1, v1, v4

    #@51
    aput v1, v0, v4

    #@53
    .line 163
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    #@55
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@57
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5a
    goto :goto_0
.end method
