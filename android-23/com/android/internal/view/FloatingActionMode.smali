.class public Lcom/android/internal/view/FloatingActionMode;
.super Landroid/view/ActionMode;
.source "FloatingActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;,
        Lcom/android/internal/view/FloatingActionMode$1;,
        Lcom/android/internal/view/FloatingActionMode$2;
    }
.end annotation


# static fields
.field private static final MAX_HIDE_DURATION:I = 0xbb8

.field private static final MOVING_HIDE_DELAY:I = 0x12c


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

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x2

    #@2
    .line 72
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    #@5
    .line 55
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$1;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    #@a
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    #@c
    .line 62
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$2;

    #@e
    invoke-direct {v0, p0}, Lcom/android/internal/view/FloatingActionMode$2;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    #@11
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    #@13
    .line 74
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/content/Context;

    #@19
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    #@1b
    .line 75
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/view/ActionMode$Callback2;

    #@21
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    #@23
    .line 76
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    #@25
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@28
    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2e
    .line 78
    invoke-virtual {p0, v2}, Lcom/android/internal/view/FloatingActionMode;->setType(I)V

    #@31
    .line 79
    new-instance v0, Landroid/graphics/Rect;

    #@33
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@36
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    #@38
    .line 80
    new-instance v0, Landroid/graphics/Rect;

    #@3a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3d
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@3f
    .line 81
    new-instance v0, Landroid/graphics/Rect;

    #@41
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@44
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    #@46
    .line 82
    new-array v0, v1, [I

    #@48
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@4a
    .line 83
    new-array v0, v1, [I

    #@4c
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    #@4e
    .line 84
    new-array v0, v1, [I

    #@50
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mRootViewPositionOnScreen:[I

    #@52
    .line 85
    new-instance v0, Landroid/graphics/Rect;

    #@54
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@57
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@59
    .line 86
    new-instance v0, Landroid/graphics/Rect;

    #@5b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5e
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    #@60
    .line 87
    new-instance v0, Landroid/graphics/Rect;

    #@62
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@65
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    #@67
    .line 88
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    move-result-object v0

    #@6b
    check-cast v0, Landroid/view/View;

    #@6d
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@6f
    .line 89
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@71
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@73
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@76
    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@79
    move-result-object v0

    #@7a
    .line 93
    const v1, 0x10500a2

    #@7d
    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@80
    move-result v0

    #@81
    iput v0, p0, Lcom/android/internal/view/FloatingActionMode;->mBottomAllowance:I

    #@83
    .line 73
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
    .line 270
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@a
    .line 271
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@c
    if-eqz v0, :cond_1

    #@e
    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@11
    .line 269
    return-void

    #@12
    :cond_0
    move v0, v2

    #@13
    .line 270
    goto :goto_0

    #@14
    :cond_1
    move v1, v2

    #@15
    .line 271
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
    .line 205
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
    .line 206
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
    .line 205
    :cond_0
    return v0
.end method

.method private isContentRectWithinBounds()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 191
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    #@3
    .line 194
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@c
    move-result-object v2

    #@d
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@f
    .line 195
    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContext:Landroid/content/Context;

    #@11
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@18
    move-result-object v3

    #@19
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    #@1b
    .line 191
    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@1e
    .line 197
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@20
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mScreenRect:Landroid/graphics/Rect;

    #@22
    invoke-static {v1, v2}, Lcom/android/internal/view/FloatingActionMode;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 198
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@2a
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@2c
    invoke-static {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@2f
    move-result v0

    #@30
    .line 197
    :cond_0
    return v0
.end method

.method private repositionToolbar()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 156
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@5
    .line 158
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@7
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    #@9
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@c
    .line 159
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@e
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@10
    aget v1, v1, v3

    #@12
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@14
    aget v2, v2, v7

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    #@19
    .line 161
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->isContentRectWithinBounds()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 162
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@21
    invoke-virtual {v0, v3}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    #@24
    .line 164
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@26
    .line 165
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@28
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@2a
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@2c
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@2e
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@31
    move-result v1

    #@32
    .line 166
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@34
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@36
    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@38
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@3a
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@3d
    move-result v2

    #@3e
    .line 167
    iget-object v3, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@40
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@42
    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@44
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@46
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@49
    move-result v3

    #@4a
    .line 168
    iget-object v4, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@4c
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@4e
    .line 169
    iget-object v5, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@50
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@52
    iget v6, p0, Lcom/android/internal/view/FloatingActionMode;->mBottomAllowance:I

    #@54
    add-int/2addr v5, v6

    #@55
    .line 168
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@58
    move-result v4

    #@59
    .line 164
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@5c
    .line 171
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@5e
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    #@60
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v0

    #@64
    if-nez v0, :cond_0

    #@66
    .line 173
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@68
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    #@6a
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@6d
    .line 174
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@6f
    invoke-virtual {v0, v7}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    #@72
    .line 175
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@74
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    #@77
    .line 176
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@79
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    #@7b
    const-wide/16 v2, 0x12c

    #@7d
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@80
    .line 178
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@82
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@84
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;->setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/FloatingToolbar;

    #@87
    .line 179
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@89
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/FloatingToolbar;

    #@8c
    .line 187
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    #@8e
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@90
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@93
    .line 155
    return-void

    #@94
    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@96
    invoke-virtual {v0, v7}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    #@99
    .line 183
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@9b
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    #@9e
    .line 184
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRectOnScreen:Landroid/graphics/Rect;

    #@a0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@a3
    goto :goto_0
.end method

.method private reset()V
    .locals 2

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    #@5
    .line 276
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->deactivate()V

    #@a
    .line 277
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@c
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMovingOff:Ljava/lang/Runnable;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@11
    .line 278
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@13
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@18
    .line 274
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    #@0
    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@3
    .line 237
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->reset()V

    #@6
    .line 238
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    #@8
    invoke-virtual {v0, p0}, Landroid/view/ActionMode$Callback2;->onDestroyActionMode(Landroid/view/ActionMode;)V

    #@b
    .line 235
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 258
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    #@0
    .prologue
    .line 263
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
    .line 253
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 248
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public hide(J)V
    .locals 3
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@3
    .line 213
    const-wide/16 v0, -0x1

    #@5
    cmp-long v0, p1, v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 214
    invoke-static {}, Landroid/view/ViewConfiguration;->getDefaultActionModeHideDuration()J

    #@c
    move-result-wide p1

    #@d
    .line 216
    :cond_0
    const-wide/16 v0, 0xbb8

    #@f
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    #@12
    move-result-wide p1

    #@13
    .line 217
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@15
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    #@17
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1a
    .line 218
    const-wide/16 v0, 0x0

    #@1c
    cmp-long v0, p1, v0

    #@1e
    if-gtz v0, :cond_1

    #@20
    .line 219
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mHideOff:Ljava/lang/Runnable;

    #@22
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@25
    .line 210
    :goto_0
    return-void

    #@26
    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@28
    const/4 v1, 0x1

    #@29
    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setHideRequested(Z)V

    #@2c
    .line 222
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@2e
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    #@31
    .line 223
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
    .line 126
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@3
    .line 127
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    #@5
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@7
    invoke-virtual {v0, p0, v1}, Landroid/view/ActionMode$Callback2;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    #@a
    .line 128
    invoke-virtual {p0}, Lcom/android/internal/view/FloatingActionMode;->invalidateContentRect()V

    #@d
    .line 125
    return-void
.end method

.method public invalidateContentRect()V
    .locals 3

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@3
    .line 134
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mCallback:Landroid/view/ActionMode$Callback2;

    #@5
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@7
    iget-object v2, p0, Lcom/android/internal/view/FloatingActionMode;->mContentRect:Landroid/graphics/Rect;

    #@9
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    #@c
    .line 135
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->repositionToolbar()V

    #@f
    .line 132
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@3
    .line 230
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->setWindowFocused(Z)V

    #@8
    .line 231
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    #@d
    .line 228
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 122
    return-void
.end method

.method public setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V
    .locals 2
    .param p1, "floatingToolbar"    # Lcom/android/internal/widget/FloatingToolbar;

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    .line 97
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/FloatingToolbar;->setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/FloatingToolbar;

    #@5
    move-result-object v0

    #@6
    .line 99
    new-instance v1, Lcom/android/internal/view/FloatingActionMode$3;

    #@8
    invoke-direct {v1, p0}, Lcom/android/internal/view/FloatingActionMode$3;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    #@b
    .line 97
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/FloatingToolbar;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@11
    .line 105
    new-instance v0, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@13
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    #@15
    invoke-direct {v0, v1}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;-><init>(Lcom/android/internal/widget/FloatingToolbar;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@1a
    .line 106
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mFloatingToolbarVisibilityHelper:Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;

    #@1c
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;->activate()V

    #@1f
    .line 96
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 119
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 116
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 113
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 110
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
    .line 139
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->checkToolbarInitialized()V

    #@5
    .line 141
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@7
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@9
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    #@c
    .line 142
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
    .line 143
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mOriginatingView:Landroid/view/View;

    #@19
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@1b
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    #@1e
    .line 144
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
    .line 146
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
    .line 147
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
    .line 138
    :goto_0
    return-void

    #@40
    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/view/FloatingActionMode;->repositionToolbar()V

    #@43
    .line 149
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    #@45
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@47
    aget v1, v1, v3

    #@49
    aput v1, v0, v3

    #@4b
    .line 150
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewPositionOnScreen:[I

    #@4d
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewPositionOnScreen:[I

    #@4f
    aget v1, v1, v4

    #@51
    aput v1, v0, v4

    #@53
    .line 151
    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    #@55
    iget-object v1, p0, Lcom/android/internal/view/FloatingActionMode;->mViewRectOnScreen:Landroid/graphics/Rect;

    #@57
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5a
    goto :goto_0
.end method
