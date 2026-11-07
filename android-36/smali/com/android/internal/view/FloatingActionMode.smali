.class public final Lcom/android/internal/view/FloatingActionMode;
.super Landroid/view/ActionMode;
.source "FloatingActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    }
.end annotation


# static fields
.field private static final blacklist MAX_HIDE_DURATION:I = 0xbb8

.field private static final blacklist MOVING_HIDE_DELAY:I = 0x32


# instance fields
.field private final blacklist mBottomAllowance:I

.field private final blacklist mCallback:Landroid/view/ActionMode$Callback2;

.field private final blacklist mContentRect:Landroid/graphics/Rect;

.field private final blacklist mContentRectOnScreen:Landroid/graphics/Rect;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDisplaySize:Landroid/graphics/Point;

.field private blacklist mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field private blacklist mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

.field private final blacklist mHideOff:Ljava/lang/Runnable;

.field private final blacklist mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final blacklist mMovingOff:Ljava/lang/Runnable;

.field private final blacklist mOriginatingView:Landroid/view/View;

.field private final blacklist mPreviousContentRectOnScreen:Landroid/graphics/Rect;

.field private final blacklist mPreviousViewPositionOnScreen:[I

.field private final blacklist mPreviousViewRectOnScreen:Landroid/graphics/Rect;

.field private final blacklist mRootViewPositionOnScreen:[I

.field private final blacklist mScreenRect:Landroid/graphics/Rect;

.field private final blacklist mViewPositionOnScreen:[I

.field private final blacklist mViewRectOnScreen:Landroid/graphics/Rect;


# direct methods
.method public static synthetic blacklist $r8$lambda$Y9Hq7gobR_VYnOvJY4KEpwtp1Qg(Lcom/android/internal/view/FloatingActionMode;Landroid/view/MenuItem;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/view/FloatingActionMode;->lambda$setFloatingToolbar$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/android/internal/view/FloatingActionMode;)Landroid/view/ActionMode$Callback2;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFloatingToolbarVisibilityHelper(Lcom/android/internal/view/FloatingActionMode;)Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misViewStillActive(Lcom/android/internal/view/FloatingActionMode;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->isViewStillActive()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;
    .param p4, "floatingToolbar"    # Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 85
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 62
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$1;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$2;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode$Callback2;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    .line 88
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 90
    invoke-virtual {p0, v1}, Lcom/android/internal/view/FloatingActionMode;->setType(I)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v1, Lcom/android/internal/view/FloatingActionMode$3;

    invoke-direct {v1, p0}, Lcom/android/internal/view/FloatingActionMode$3;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    .line 103
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    .line 104
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    .line 105
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    .line 109
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    const v1, 0x1050125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/FloatingActionMode;->mBottomAllowance:I

    .line 115
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    .line 116
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {p0, v0}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    .line 117
    return-void
.end method

.method private static blacklist intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4
    .param p0, "a"    # Landroid/graphics/Rect;
    .param p1, "b"    # Landroid/graphics/Rect;

    .line 235
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_1a

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1a

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private blacklist isContentRectWithinBounds()Z
    .registers 6

    .line 223
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    .line 228
    invoke-static {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3d

    move v3, v4

    goto :goto_3e

    :cond_3d
    nop

    .line 227
    :goto_3e
    return v3
.end method

.method private blacklist isViewStillActive()Z
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 317
    :goto_13
    return v0
.end method

.method private synthetic blacklist lambda$setFloatingToolbar$0(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 122
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method private blacklist repositionToolbar()V
    .registers 10

    .line 175
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 179
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 180
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2c

    .line 181
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Z)Z

    .line 184
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    aget v5, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_39

    .line 186
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v5, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 189
    :goto_39
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->isContentRectWithinBounds()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 190
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    .line 192
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 193
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 194
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 195
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/internal/view/FloatingActionMode;->mBottomAllowance:I

    add-int/2addr v7, v8

    .line 196
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 192
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 199
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 201
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 202
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 203
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1, v3}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    :cond_a3
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 211
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    goto :goto_ba

    .line 214
    :cond_b0
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1, v3}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 217
    :cond_ba
    :goto_ba
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 219
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 220
    return-void
.end method

.method private blacklist reset()V
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 311
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->deactivate()V

    .line 312
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 313
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 314
    return-void
.end method

.method private blacklist setFloatingToolbar(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V
    .registers 4
    .param p1, "floatingToolbar"    # Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 120
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 121
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    move-result-object v0

    new-instance v1, Lcom/android/internal/view/FloatingActionMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/view/FloatingActionMode$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 123
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;-><init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    .line 124
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->activate()V

    .line 125
    return-void
.end method

.method private blacklist updateViewLocationInWindow(Z)V
    .registers 7
    .param p1, "forceRepositionToolbar"    # Z

    .line 159
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 162
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 164
    if-nez p1, :cond_3e

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    .line 165
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    .line 166
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 167
    :cond_3e
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->repositionToolbar()V

    .line 168
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v1, v1, v2

    aput v1, v0, v2

    .line 169
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    aget v1, v1, v4

    aput v1, v0, v4

    .line 170
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 172
    :cond_58
    return-void
.end method


# virtual methods
.method public whitelist finish()V
    .registers 2

    .line 280
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->reset()V

    .line 281
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p0}, Landroid/view/ActionMode$Callback2;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 282
    return-void
.end method

.method public whitelist getCustomView()Landroid/view/View;
    .registers 2

    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public whitelist getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 306
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 296
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist hide(J)V
    .registers 5
    .param p1, "duration"    # J

    .line 241
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    .line 242
    invoke-static {}, Landroid/view/ViewConfiguration;->getDefaultActionModeHideDuration()J

    move-result-wide p1

    .line 244
    :cond_a
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 245
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 246
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_23

    .line 247
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_35

    .line 249
    :cond_23
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setHideRequested(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    :goto_35
    return-void
.end method

.method public whitelist invalidate()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0, v1}, Landroid/view/ActionMode$Callback2;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/view/FloatingActionMode;->invalidateContentRect()V

    .line 146
    return-void
.end method

.method public whitelist invalidateContentRect()V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow(Z)V

    .line 152
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .line 274
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setWindowFocused(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 276
    return-void
.end method

.method public whitelist setCustomView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 140
    return-void
.end method

.method public blacklist setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V
    .registers 4
    .param p1, "outsideTouchable"    # Z
    .param p2, "onDismiss"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 269
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V

    .line 270
    return-void
.end method

.method public whitelist setSubtitle(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 137
    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 134
    return-void
.end method

.method public whitelist setTitle(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 131
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 128
    return-void
.end method

.method public blacklist updateViewLocationInWindow()V
    .registers 2

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow(Z)V

    .line 156
    return-void
.end method
