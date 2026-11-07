.class public Lcom/android/internal/widget/helper/ItemTouchHelper;
.super Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$SimpleCallback;,
        Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final blacklist ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final blacklist ACTION_MODE_IDLE_MASK:I = 0xff

.field static final blacklist ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final blacklist ACTION_STATE_DRAG:I = 0x2

.field public static final blacklist ACTION_STATE_IDLE:I = 0x0

.field public static final blacklist ACTION_STATE_SWIPE:I = 0x1

.field static final blacklist ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final blacklist ANIMATION_TYPE_DRAG:I = 0x8

.field public static final blacklist ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final blacklist ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field static final blacklist DEBUG:Z = false

.field static final blacklist DIRECTION_FLAG_COUNT:I = 0x8

.field public static final blacklist DOWN:I = 0x2

.field public static final blacklist END:I = 0x20

.field public static final blacklist LEFT:I = 0x4

.field private static final blacklist PIXELS_PER_SECOND:I = 0x3e8

.field public static final blacklist RIGHT:I = 0x8

.field public static final blacklist START:I = 0x10

.field static final blacklist TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final blacklist UP:I = 0x1


# instance fields
.field blacklist mActionState:I

.field blacklist mActivePointerId:I

.field blacklist mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

.field private blacklist mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

.field private blacklist mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDragScrollStartTimeInMs:J

.field blacklist mDx:F

.field blacklist mDy:F

.field blacklist mGestureDetector:Landroid/view/GestureDetector;

.field blacklist mInitialTouchX:F

.field blacklist mInitialTouchY:F

.field blacklist mMaxSwipeVelocity:F

.field private final blacklist mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

.field blacklist mOverdrawChild:Landroid/view/View;

.field blacklist mOverdrawChildPosition:I

.field final blacklist mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field final blacklist mScrollRunnable:Ljava/lang/Runnable;

.field blacklist mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field blacklist mSelectedFlags:I

.field blacklist mSelectedStartX:F

.field blacklist mSelectedStartY:F

.field private blacklist mSlop:I

.field private blacklist mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSwipeEscapeVelocity:F

.field private final blacklist mTmpPosition:[F

.field private blacklist mTmpRect:Landroid/graphics/Rect;

.field blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 429
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 213
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 223
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 249
    new-instance v2, Lcom/android/internal/widget/helper/ItemTouchHelper$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$1;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    iput-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 276
    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 283
    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 290
    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 297
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$2;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 430
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 431
    return-void
.end method

.method private blacklist addChildDrawingOrderCallback()V
    .registers 1

    .line 1251
    nop

    .line 1252
    return-void
.end method

.method private blacklist checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I
    .registers 10
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1198
    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_7b

    .line 1199
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-lez v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v3

    .line 1200
    .local v0, "dirFlag":I
    :goto_11
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_5e

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_5e

    .line 1201
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1202
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v5

    .line 1201
    const/16 v6, 0x3e8

    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1203
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1204
    .local v4, "xVelocity":F
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1205
    .local v5, "yVelocity":F
    cmpl-float v1, v4, v1

    if-lez v1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v3

    .line 1206
    .local v2, "velDirFlag":I
    :goto_3f
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1207
    .local v1, "absXVelocity":F
    and-int v3, v2, p2

    if-eqz v3, :cond_5e

    if-ne v0, v2, :cond_5e

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1208
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_5e

    .line 1209
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5e

    .line 1210
    return v2

    .line 1214
    .end local v1    # "absXVelocity":F
    .end local v2    # "velDirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_5e
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 1215
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1217
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_7b

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_7b

    .line 1218
    return v0

    .line 1221
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_7b
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I
    .registers 10
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1225
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_7a

    .line 1226
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lez v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v3

    .line 1227
    .local v0, "dirFlag":I
    :goto_10
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_5d

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_5d

    .line 1228
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1229
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v5

    .line 1228
    const/16 v6, 0x3e8

    invoke-virtual {v4, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1230
    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1231
    .local v4, "xVelocity":F
    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1232
    .local v5, "yVelocity":F
    cmpl-float v1, v5, v1

    if-lez v1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v3

    .line 1233
    .local v2, "velDirFlag":I
    :goto_3e
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1234
    .local v1, "absYVelocity":F
    and-int v3, v2, p2

    if-eqz v3, :cond_5d

    if-ne v2, v0, :cond_5d

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1235
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_5d

    .line 1236
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5d

    .line 1237
    return v2

    .line 1241
    .end local v1    # "absYVelocity":F
    .end local v2    # "velDirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_5d
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 1242
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1243
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_7a

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_7a

    .line 1244
    return v0

    .line 1247
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_7a
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist destroyCallbacks()V
    .registers 7

    .line 477
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->removeOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 482
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_19
    if-ltz v1, :cond_30

    .line 483
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 484
    .local v2, "recoverAnimation":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 482
    .end local v2    # "recoverAnimation":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 486
    .end local v1    # "i":I
    :cond_30
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 487
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 488
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 489
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 490
    return-void
.end method

.method private blacklist findSwapTargets(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .registers 22
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    if-nez v2, :cond_17

    .line 767
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 768
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    goto :goto_21

    .line 770
    :cond_17
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 771
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 773
    :goto_21
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v2

    .line 774
    .local v2, "margin":I
    iget v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v4, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v2

    .line 775
    .local v3, "left":I
    iget v4, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v4, v2

    .line 776
    .local v4, "top":I
    iget-object v5, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    .line 777
    .local v5, "right":I
    iget-object v6, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    .line 778
    .local v6, "bottom":I
    add-int v7, v3, v5

    div-int/lit8 v7, v7, 0x2

    .line 779
    .local v7, "centerX":I
    add-int v8, v4, v6

    div-int/lit8 v8, v8, 0x2

    .line 780
    .local v8, "centerY":I
    iget-object v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v9

    .line 781
    .local v9, "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v10

    .line 782
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_62
    if-ge v11, v10, :cond_120

    .line 783
    invoke-virtual {v9, v11}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 784
    .local v12, "other":Landroid/view/View;
    iget-object v13, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v12, v13, :cond_72

    .line 785
    move/from16 v19, v2

    move/from16 v16, v3

    goto/16 :goto_116

    .line 787
    :cond_72
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    if-lt v13, v4, :cond_112

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-gt v13, v6, :cond_112

    .line 788
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    if-lt v13, v3, :cond_10d

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    if-le v13, v5, :cond_90

    .line 789
    move/from16 v19, v2

    move/from16 v16, v3

    goto/16 :goto_116

    .line 791
    :cond_90
    iget-object v13, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v13, v12}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 792
    .local v13, "otherVh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v14, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v15, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v14, v15, v1, v13}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->canDropOver(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 794
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v1, v14

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 795
    .local v1, "dx":I
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    sub-int v14, v8, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 796
    .local v14, "dy":I
    mul-int v15, v1, v1

    mul-int v16, v14, v14

    add-int v15, v15, v16

    .line 798
    .local v15, "dist":I
    const/16 v16, 0x0

    .line 799
    .local v16, "pos":I
    move/from16 v17, v1

    .end local v1    # "dx":I
    .local v17, "dx":I
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 800
    .local v1, "cnt":I
    const/16 v18, 0x0

    move/from16 v19, v2

    move/from16 v2, v16

    move/from16 v16, v3

    move/from16 v3, v18

    .local v2, "pos":I
    .local v3, "j":I
    .local v16, "left":I
    .local v19, "margin":I
    :goto_de
    if-ge v3, v1, :cond_f7

    .line 801
    move/from16 v18, v1

    .end local v1    # "cnt":I
    .local v18, "cnt":I
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v15, v1, :cond_f9

    .line 802
    add-int/lit8 v2, v2, 0x1

    .line 800
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v18

    goto :goto_de

    .end local v18    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_f7
    move/from16 v18, v1

    .line 807
    .end local v1    # "cnt":I
    .end local v3    # "j":I
    .restart local v18    # "cnt":I
    :cond_f9
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1, v2, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 808
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_116

    .line 792
    .end local v14    # "dy":I
    .end local v15    # "dist":I
    .end local v16    # "left":I
    .end local v17    # "dx":I
    .end local v18    # "cnt":I
    .end local v19    # "margin":I
    .local v2, "margin":I
    .local v3, "left":I
    :cond_108
    move/from16 v19, v2

    move/from16 v16, v3

    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    goto :goto_116

    .line 788
    .end local v13    # "otherVh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_10d
    move/from16 v19, v2

    move/from16 v16, v3

    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    goto :goto_116

    .line 787
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_112
    move/from16 v19, v2

    move/from16 v16, v3

    .line 782
    .end local v2    # "margin":I
    .end local v3    # "left":I
    .end local v12    # "other":Landroid/view/View;
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    :goto_116
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v2, v19

    goto/16 :goto_62

    .line 811
    .end local v11    # "i":I
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_120
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    return-object v1
.end method

.method private blacklist findSwipedView(Landroid/view/MotionEvent;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 914
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 915
    .local v0, "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_d

    .line 916
    return-object v3

    .line 918
    :cond_d
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 919
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v2, v4

    .line 920
    .local v2, "dx":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v4, v5

    .line 921
    .local v4, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 922
    .local v5, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 924
    .local v6, "absDy":F
    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_38

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_38

    .line 925
    return-object v3

    .line 927
    :cond_38
    cmpl-float v7, v5, v6

    if-lez v7, :cond_43

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 928
    return-object v3

    .line 929
    :cond_43
    cmpl-float v7, v6, v5

    if-lez v7, :cond_4e

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 930
    return-object v3

    .line 932
    :cond_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    .line 933
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_55

    .line 934
    return-object v3

    .line 936
    :cond_55
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v3, v7}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    return-object v3
.end method

.method private blacklist getSelectedDxDy([F)V
    .registers 5
    .param p1, "outPosition"    # [F

    .line 501
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 502
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_23

    .line 504
    :cond_19
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 506
    :goto_23
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    .line 507
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_46

    .line 509
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    .line 511
    :goto_46
    return-void
.end method

.method private static blacklist hitTest(Landroid/view/View;FFFF)Z
    .registers 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .line 434
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_1e

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1e

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_1e

    .line 437
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 434
    :goto_1f
    return v0
.end method

.method private blacklist initGestureDetector()V
    .registers 4

    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_5

    .line 494
    return-void

    .line 496
    :cond_5
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 498
    return-void
.end method

.method private blacklist releaseVelocityTracker()V
    .registers 2

    .line 907
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 908
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 911
    :cond_c
    return-void
.end method

.method private blacklist setupCallbacks()V
    .registers 4

    .line 468
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 469
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    .line 470
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    .line 471
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->addOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V

    .line 472
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView;->addOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 473
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->initGestureDetector()V

    .line 474
    return-void
.end method

.method private blacklist swipeIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 9
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1152
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    .line 1153
    return v2

    .line 1155
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1156
    .local v0, "originalMovementFlags":I
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 1158
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v3

    .line 1156
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    .line 1159
    .local v1, "absoluteMovementFlags":I
    const v3, 0xff00

    and-int v4, v1, v3

    shr-int/lit8 v4, v4, 0x8

    .line 1161
    .local v4, "flags":I
    if-nez v4, :cond_25

    .line 1162
    return v2

    .line 1164
    :cond_25
    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    .line 1167
    .local v3, "originalFlags":I
    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_57

    .line 1168
    invoke-direct {p0, p1, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .local v6, "swipeDir":I
    if-lez v5, :cond_4f

    .line 1170
    and-int v2, v3, v6

    if-nez v2, :cond_4e

    .line 1172
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 1173
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v2

    .line 1172
    invoke-static {v6, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v2

    return v2

    .line 1175
    :cond_4e
    return v6

    .line 1177
    :cond_4f
    invoke-direct {p0, p1, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_76

    .line 1178
    return v6

    .line 1181
    .end local v6    # "swipeDir":I
    :cond_57
    invoke-direct {p0, p1, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .restart local v6    # "swipeDir":I
    if-lez v5, :cond_5f

    .line 1182
    return v6

    .line 1184
    :cond_5f
    invoke-direct {p0, p1, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_76

    .line 1186
    and-int v2, v3, v6

    if-nez v2, :cond_75

    .line 1188
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 1189
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v2

    .line 1188
    invoke-static {v6, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v2

    return v2

    .line 1191
    :cond_75
    return v6

    .line 1194
    :cond_76
    return v2
.end method


# virtual methods
.method public blacklist attachToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 4
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    .line 451
    return-void

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_c

    .line 454
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->destroyCallbacks()V

    .line 456
    :cond_c
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_2d

    .line 458
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 459
    .local v0, "resources":Landroid/content/res/Resources;
    nop

    .line 460
    const v1, 0x10501fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 461
    nop

    .line 462
    const v1, 0x10501fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 463
    invoke-direct {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->setupCallbacks()V

    .line 465
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_2d
    return-void
.end method

.method blacklist checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .registers 20
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    .line 943
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v3, 0x0

    if-nez v2, :cond_9c

    const/4 v2, 0x2

    move/from16 v4, p1

    if-ne v4, v2, :cond_9e

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    if-eq v5, v2, :cond_9e

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    .line 944
    invoke-virtual {v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_9e

    .line 947
    :cond_1c
    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getScrollState()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_26

    .line 948
    return v3

    .line 950
    :cond_26
    invoke-direct {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 951
    .local v2, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v2, :cond_2d

    .line 952
    return v3

    .line 954
    :cond_2d
    iget-object v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6, v7, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 956
    .local v6, "movementFlags":I
    const v7, 0xff00

    and-int/2addr v7, v6

    shr-int/lit8 v7, v7, 0x8

    .line 959
    .local v7, "swipeFlags":I
    if-nez v7, :cond_3e

    .line 960
    return v3

    .line 965
    :cond_3e
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 966
    .local v8, "x":F
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 969
    .local v9, "y":F
    iget v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v10, v8, v10

    .line 970
    .local v10, "dx":F
    iget v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v11, v9, v11

    .line 973
    .local v11, "dy":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 974
    .local v12, "absDx":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 976
    .local v13, "absDy":F
    iget v14, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v14, v14

    cmpg-float v14, v12, v14

    if-gez v14, :cond_65

    iget v14, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v14, v14

    cmpg-float v14, v13, v14

    if-gez v14, :cond_65

    .line 977
    return v3

    .line 979
    :cond_65
    cmpl-float v14, v12, v13

    const/4 v15, 0x0

    if-lez v14, :cond_7c

    .line 980
    cmpg-float v14, v10, v15

    if-gez v14, :cond_73

    and-int/lit8 v14, v7, 0x4

    if-nez v14, :cond_73

    .line 981
    return v3

    .line 983
    :cond_73
    cmpl-float v14, v10, v15

    if-lez v14, :cond_8e

    and-int/lit8 v14, v7, 0x8

    if-nez v14, :cond_8e

    .line 984
    return v3

    .line 987
    :cond_7c
    cmpg-float v14, v11, v15

    if-gez v14, :cond_85

    and-int/lit8 v14, v7, 0x1

    if-nez v14, :cond_85

    .line 988
    return v3

    .line 990
    :cond_85
    cmpl-float v14, v11, v15

    if-lez v14, :cond_8e

    and-int/lit8 v14, v7, 0x2

    if-nez v14, :cond_8e

    .line 991
    return v3

    .line 994
    :cond_8e
    iput v15, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v15, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 995
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 996
    invoke-virtual {v0, v2, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 997
    return v5

    .line 943
    .end local v2    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v6    # "movementFlags":I
    .end local v7    # "swipeFlags":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    .end local v12    # "absDx":F
    .end local v13    # "absDy":F
    :cond_9c
    move/from16 v4, p1

    .line 945
    :cond_9e
    :goto_9e
    return v3
.end method

.method blacklist endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I
    .registers 7
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .line 878
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 879
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_2d

    .line 880
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 881
    .local v2, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_2a

    .line 882
    iget-boolean v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 883
    iget-boolean v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_22

    .line 884
    invoke-virtual {v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 886
    :cond_22
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 887
    iget v3, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    return v3

    .line 879
    .end local v2    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 890
    .end local v1    # "i":I
    :cond_2d
    const/4 v1, 0x0

    return v1
.end method

.method blacklist findAnimation(Landroid/view/MotionEvent;)Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1117
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1118
    return-object v1

    .line 1120
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 1121
    .local v0, "target":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_2a

    .line 1122
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1123
    .local v3, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v4, v0, :cond_27

    .line 1124
    return-object v3

    .line 1121
    .end local v3    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 1127
    .end local v2    # "i":I
    :cond_2a
    return-object v1
.end method

.method blacklist findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1002
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1003
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1004
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_21

    .line 1005
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1006
    .local v2, "selectedView":Landroid/view/View;
    iget v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1007
    return-object v2

    .line 1010
    .end local v2    # "selectedView":Landroid/view/View;
    :cond_21
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_29
    if-ltz v2, :cond_45

    .line 1011
    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1012
    .local v3, "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1013
    .local v4, "view":Landroid/view/View;
    iget v5, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v3, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v4, v0, v1, v5, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1014
    return-object v4

    .line 1010
    .end local v3    # "anim":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .end local v4    # "view":Landroid/view/View;
    :cond_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 1017
    .end local v2    # "i":I
    :cond_45
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p4, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 896
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 897
    return-void
.end method

.method blacklist hasRunningRecoverAnim()Z
    .registers 4

    .line 690
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 691
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 692
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v2, v2, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v2, :cond_17

    .line 693
    const/4 v2, 0x1

    return v2

    .line 691
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 696
    .end local v1    # "i":I
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method blacklist moveIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 12
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 818
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 819
    return-void

    .line 821
    :cond_9
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 822
    return-void

    .line 825
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F

    move-result v0

    .line 826
    .local v0, "threshold":F
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v1, v2

    float-to-int v8, v1

    .line 827
    .local v8, "x":I
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v1, v2

    float-to-int v9, v1

    .line 828
    .local v9, "y":I
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_54

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 829
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 830
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_54

    .line 831
    return-void

    .line 833
    :cond_54
    invoke-direct {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->findSwapTargets(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v1

    .line 834
    .local v1, "swapTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5f

    .line 835
    return-void

    .line 838
    :cond_5f
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v2, p1, v1, v8, v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 839
    .local v6, "target":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v6, :cond_72

    .line 840
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 841
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 842
    return-void

    .line 844
    :cond_72
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v7

    .line 845
    .local v7, "toPosition":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 846
    .local v5, "fromPosition":I
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v3, p1, v6}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onMove(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 848
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    move-object v4, p1

    .end local p1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v4, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onMoved(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILcom/android/internal/widget/RecyclerView$ViewHolder;III)V

    goto :goto_8e

    .line 846
    .end local v4    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .restart local p1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_8d
    move-object v4, p1

    .line 851
    .end local p1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .restart local v4    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_8e
    return-void
.end method

.method blacklist obtainVelocityTracker()V
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 901
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 903
    :cond_9
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 904
    return-void
.end method

.method public blacklist onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 855
    return-void
.end method

.method public blacklist onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 859
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 860
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 861
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_c

    .line 862
    return-void

    .line 864
    :cond_c
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v0, v1, :cond_1a

    .line 865
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    goto :goto_2e

    .line 867
    :cond_1a
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    .line 868
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 869
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 872
    :cond_2e
    :goto_2e
    return-void
.end method

.method public blacklist onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 528
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 529
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 530
    .local v1, "dy":F
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1b

    .line 531
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 532
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 533
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x1

    aget v1, v2, v3

    move v8, v0

    move v9, v1

    goto :goto_1d

    .line 530
    :cond_1b
    move v8, v0

    move v9, v1

    .line 535
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .local v8, "dx":F
    .local v9, "dy":F
    :goto_1d
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "c":Landroid/graphics/Canvas;
    .end local p2    # "parent":Lcom/android/internal/widget/RecyclerView;
    .local v3, "c":Landroid/graphics/Canvas;
    .local v4, "parent":Lcom/android/internal/widget/RecyclerView;
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 537
    return-void
.end method

.method public blacklist onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 515
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 516
    .local v1, "dy":F
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_18

    .line 517
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 518
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 519
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x1

    aget v1, v2, v3

    move v8, v0

    move v9, v1

    goto :goto_1a

    .line 516
    :cond_18
    move v8, v0

    move v9, v1

    .line 521
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .local v8, "dx":F
    .local v9, "dy":F
    :goto_1a
    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "c":Landroid/graphics/Canvas;
    .end local p2    # "parent":Lcom/android/internal/widget/RecyclerView;
    .local v3, "c":Landroid/graphics/Canvas;
    .local v4, "parent":Lcom/android/internal/widget/RecyclerView;
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 523
    return-void
.end method

.method blacklist postDispatchSwipe(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .registers 5
    .param p1, "anim"    # Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .line 668
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    new-instance v1, Lcom/android/internal/widget/helper/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$4;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 687
    return-void
.end method

.method blacklist removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1277
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_10

    .line 1278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1280
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v1, :cond_10

    .line 1281
    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->setChildDrawingOrderCallback(Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1284
    :cond_10
    return-void
.end method

.method blacklist scrollIfNecessary()Z
    .registers 18

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    if-nez v1, :cond_c

    .line 704
    iput-wide v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 705
    return v2

    .line 707
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 709
    .local v5, "now":J
    iget-wide v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v1, v7, v3

    if-nez v1, :cond_19

    const-wide/16 v7, 0x0

    goto :goto_1d

    :cond_19
    iget-wide v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v7, v5, v7

    :goto_1d
    move-wide v14, v7

    .line 710
    .local v14, "scrollDuration":J
    iget-object v1, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 711
    .local v1, "lm":Lcom/android/internal/widget/RecyclerView$LayoutManager;
    iget-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v7, :cond_2f

    .line 712
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 714
    :cond_2f
    const/4 v7, 0x0

    .line 715
    .local v7, "scrollX":I
    const/4 v8, 0x0

    .line 716
    .local v8, "scrollY":I
    iget-object v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 717
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_8c

    .line 718
    iget v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 719
    .local v9, "curX":I
    iget-object v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v9, v11

    iget-object v12, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 720
    .local v11, "leftDiff":I
    iget v12, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    cmpg-float v12, v12, v10

    if-gez v12, :cond_61

    if-gez v11, :cond_61

    .line 721
    move v7, v11

    move/from16 v16, v2

    move v12, v7

    goto :goto_8f

    .line 722
    :cond_61
    iget v12, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    cmpl-float v12, v12, v10

    if-lez v12, :cond_89

    .line 723
    iget-object v12, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 724
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    iget-object v13, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 725
    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v13

    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v13, v2

    sub-int/2addr v12, v13

    .line 726
    .local v12, "rightDiff":I
    if-lez v12, :cond_8e

    .line 727
    move v7, v12

    goto :goto_8f

    .line 722
    .end local v12    # "rightDiff":I
    :cond_89
    move/from16 v16, v2

    goto :goto_8e

    .line 717
    .end local v9    # "curX":I
    .end local v11    # "leftDiff":I
    :cond_8c
    move/from16 v16, v2

    .line 731
    :cond_8e
    :goto_8e
    move v12, v7

    .end local v7    # "scrollX":I
    .local v12, "scrollX":I
    :goto_8f
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 732
    iget v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v2, v7

    float-to-int v2, v2

    .line 733
    .local v2, "curY":I
    iget-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int v7, v2, v7

    iget-object v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v9}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v7, v9

    .line 734
    .local v7, "topDiff":I
    iget v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_b2

    if-gez v7, :cond_b2

    .line 735
    move v8, v7

    goto :goto_d7

    .line 736
    :cond_b2
    iget v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_d7

    .line 737
    iget-object v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v2

    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 738
    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v10

    iget-object v11, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v11}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v9, v10

    .line 739
    .local v9, "bottomDiff":I
    if-lez v9, :cond_d7

    .line 740
    move v8, v9

    .line 744
    .end local v2    # "curY":I
    .end local v7    # "topDiff":I
    .end local v9    # "bottomDiff":I
    :cond_d7
    :goto_d7
    if-eqz v12, :cond_f1

    .line 745
    iget-object v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 746
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    iget-object v2, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 747
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v13

    .line 745
    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I

    move-result v12

    move v2, v12

    goto :goto_f2

    .line 744
    :cond_f1
    move v2, v12

    .line 749
    .end local v12    # "scrollX":I
    .local v2, "scrollX":I
    :goto_f2
    if-eqz v8, :cond_10c

    .line 750
    iget-object v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v10, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 751
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v11

    iget-object v7, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 752
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v13

    .line 750
    move v12, v8

    .end local v8    # "scrollY":I
    .local v12, "scrollY":I
    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I

    move-result v8

    .end local v12    # "scrollY":I
    .restart local v8    # "scrollY":I
    goto :goto_10d

    .line 749
    :cond_10c
    move v12, v8

    .line 754
    :goto_10d
    if-nez v2, :cond_115

    if-eqz v8, :cond_112

    goto :goto_115

    .line 761
    :cond_112
    iput-wide v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 762
    return v16

    .line 755
    :cond_115
    :goto_115
    iget-wide v9, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v3, v9, v3

    if-nez v3, :cond_11d

    .line 756
    iput-wide v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 758
    :cond_11d
    iget-object v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v3, v2, v8}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    .line 759
    const/4 v3, 0x1

    return v3
.end method

.method blacklist select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 22
    .param p1, "selected"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 547
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v11, v0, :cond_f

    iget v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    if-ne v12, v0, :cond_f

    .line 548
    return-void

    .line 550
    :cond_f
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 551
    iget v4, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 553
    .local v4, "prevActionState":I
    const/4 v13, 0x1

    invoke-virtual {v1, v11, v13}, Lcom/android/internal/widget/helper/ItemTouchHelper;->endRecoverAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)I

    .line 554
    iput v12, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    .line 555
    const/4 v14, 0x2

    if-ne v12, v14, :cond_25

    .line 559
    iget-object v0, v11, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 560
    invoke-direct {v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 562
    :cond_25
    mul-int/lit8 v0, v12, 0x8

    add-int/lit8 v0, v0, 0x8

    shl-int v0, v13, v0

    add-int/lit8 v15, v0, -0x1

    .line 564
    .local v15, "actionStateMask":I
    const/16 v16, 0x0

    .line 566
    .local v16, "preventLayout":Z
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-eqz v0, :cond_c8

    .line 567
    move v0, v2

    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 568
    .local v2, "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_b6

    .line 569
    if-ne v4, v14, :cond_43

    move v9, v0

    goto :goto_48

    .line 570
    :cond_43
    invoke-direct {v1, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper;->swipeIfNecessary(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v3

    move v9, v3

    :goto_48
    nop

    .line 571
    .local v9, "swipeDir":I
    invoke-direct {v1}, Lcom/android/internal/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    .line 575
    sparse-switch v9, :sswitch_data_12a

    .line 589
    const/4 v5, 0x0

    .line 590
    .local v5, "targetTranslateX":F
    const/4 v3, 0x0

    move v8, v3

    move v7, v5

    .local v3, "targetTranslateY":F
    goto :goto_77

    .line 580
    .end local v3    # "targetTranslateY":F
    .end local v5    # "targetTranslateX":F
    :sswitch_54
    const/4 v3, 0x0

    .line 581
    .restart local v3    # "targetTranslateY":F
    iget v5, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget-object v6, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 582
    .restart local v5    # "targetTranslateX":F
    move v8, v3

    move v7, v5

    goto :goto_77

    .line 585
    .end local v3    # "targetTranslateY":F
    .end local v5    # "targetTranslateX":F
    :sswitch_66
    const/4 v5, 0x0

    .line 586
    .restart local v5    # "targetTranslateX":F
    iget v3, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget-object v6, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    .line 587
    .restart local v3    # "targetTranslateY":F
    move v8, v3

    move v7, v5

    .line 592
    .end local v3    # "targetTranslateY":F
    .end local v5    # "targetTranslateX":F
    .local v7, "targetTranslateX":F
    .local v8, "targetTranslateY":F
    :goto_77
    if-ne v4, v14, :cond_7c

    .line 593
    const/16 v3, 0x8

    .local v3, "animationType":I
    goto :goto_81

    .line 594
    .end local v3    # "animationType":I
    :cond_7c
    if-lez v9, :cond_80

    .line 595
    const/4 v3, 0x2

    .restart local v3    # "animationType":I
    goto :goto_81

    .line 597
    .end local v3    # "animationType":I
    :cond_80
    const/4 v3, 0x4

    .line 599
    .restart local v3    # "animationType":I
    :goto_81
    iget-object v5, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v1, v5}, Lcom/android/internal/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 600
    iget-object v5, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v5, v5, v0

    .line 601
    .local v5, "currentTranslateX":F
    iget-object v6, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v6, v6, v13

    .line 602
    .local v6, "currentTranslateY":F
    move v10, v0

    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$3;

    move/from16 v17, v10

    move-object v10, v2

    move/from16 v13, v17

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/helper/ItemTouchHelper$3;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFFILcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 631
    .local v0, "rv":Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
    iget-object v10, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v13, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    sub-float v14, v7, v5

    move/from16 v18, v4

    .end local v4    # "prevActionState":I
    .local v18, "prevActionState":I
    sub-float v4, v8, v6

    invoke-virtual {v10, v13, v3, v14, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Lcom/android/internal/widget/RecyclerView;IFF)J

    move-result-wide v13

    .line 633
    .local v13, "duration":J
    invoke-virtual {v0, v13, v14}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 634
    iget-object v4, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->start()V

    .line 636
    const/4 v0, 0x1

    .line 637
    .end local v3    # "animationType":I
    .end local v5    # "currentTranslateX":F
    .end local v6    # "currentTranslateY":F
    .end local v7    # "targetTranslateX":F
    .end local v8    # "targetTranslateY":F
    .end local v9    # "swipeDir":I
    .end local v13    # "duration":J
    .end local v16    # "preventLayout":Z
    .local v0, "preventLayout":Z
    move/from16 v16, v0

    goto :goto_c4

    .line 638
    .end local v0    # "preventLayout":Z
    .end local v18    # "prevActionState":I
    .restart local v4    # "prevActionState":I
    .restart local v16    # "preventLayout":Z
    :cond_b6
    move/from16 v18, v4

    .end local v4    # "prevActionState":I
    .restart local v18    # "prevActionState":I
    iget-object v0, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 639
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 641
    :goto_c4
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    goto :goto_ca

    .line 566
    .end local v2    # "prevSelected":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v18    # "prevActionState":I
    .restart local v4    # "prevActionState":I
    :cond_c8
    move/from16 v18, v4

    .line 643
    .end local v4    # "prevActionState":I
    .restart local v18    # "prevActionState":I
    :goto_ca
    if-eqz v11, :cond_fe

    .line 644
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 645
    invoke-virtual {v0, v2, v11}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int/2addr v0, v15

    iget v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v2, v2, 0x8

    shr-int/2addr v0, v2

    iput v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    .line 647
    iget-object v0, v11, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    .line 648
    iget-object v0, v11, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    .line 649
    iput-object v11, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 651
    const/4 v0, 0x2

    if-ne v12, v0, :cond_fc

    .line 652
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_ff

    .line 651
    :cond_fc
    const/4 v13, 0x0

    goto :goto_ff

    .line 643
    :cond_fe
    const/4 v13, 0x0

    .line 655
    :goto_ff
    iget-object v0, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 656
    .local v0, "rvParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_10f

    .line 657
    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_10c

    const/4 v13, 0x1

    :cond_10c
    invoke-interface {v0, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 659
    :cond_10f
    if-nez v16, :cond_11a

    .line 660
    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 662
    :cond_11a
    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mSelected:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mActionState:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 663
    iget-object v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 664
    return-void

    nop

    :sswitch_data_12a
    .sparse-switch
        0x1 -> :sswitch_66
        0x2 -> :sswitch_66
        0x4 -> :sswitch_54
        0x8 -> :sswitch_54
        0x10 -> :sswitch_54
        0x20 -> :sswitch_54
    .end sparse-switch
.end method

.method public blacklist startDrag(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1055
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_12

    .line 1056
    const-string v0, "Start drag has been called but dragging is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void

    .line 1059
    :cond_12
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eq v0, v2, :cond_22

    .line 1060
    const-string v0, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return-void

    .line 1064
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1066
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 1067
    return-void
.end method

.method public blacklist startSwipe(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1102
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mCallback:Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->hasSwipeFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_12

    .line 1103
    const-string v0, "Start swipe has been called but swiping is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return-void

    .line 1106
    :cond_12
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eq v0, v2, :cond_22

    .line 1107
    const-string v0, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return-void

    .line 1111
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/helper/ItemTouchHelper;->select(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 1114
    return-void
.end method

.method blacklist updateDxDy(Landroid/view/MotionEvent;II)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .line 1131
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1132
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1135
    .local v1, "y":F
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1136
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1137
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x0

    if-nez v2, :cond_21

    .line 1138
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1140
    :cond_21
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_2d

    .line 1141
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDx:F

    .line 1143
    :cond_2d
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_39

    .line 1144
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1146
    :cond_39
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_45

    .line 1147
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper;->mDy:F

    .line 1149
    :cond_45
    return-void
.end method
