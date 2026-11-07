.class public Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final blacklist UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private blacklist mChanged:Z

.field private blacklist mConsecutiveUpdates:I

.field private blacklist mDuration:I

.field private blacklist mDx:I

.field private blacklist mDy:I

.field private blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mJumpToPosition:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 10978
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 10979
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 10987
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 10988
    return-void
.end method

.method public constructor blacklist <init>(IIILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 10997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10963
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10971
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 10998
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 10999
    iput p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11000
    iput p3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11001
    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11002
    return-void
.end method

.method private blacklist validate()V
    .registers 3

    .line 11061
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_a

    goto :goto_12

    .line 11062
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11064
    :cond_12
    :goto_12
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_17

    .line 11067
    return-void

    .line 11065
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getDuration()I
    .registers 2

    .line 11088
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public blacklist getDx()I
    .registers 2

    .line 11070
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public blacklist getDy()I
    .registers 2

    .line 11079
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public blacklist getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 11097
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method blacklist hasJumpTarget()Z
    .registers 2

    .line 11024
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist jumpTo(I)V
    .registers 2
    .param p1, "targetPosition"    # I

    .line 11020
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11021
    return-void
.end method

.method blacklist runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V
    .registers 8
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 11028
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_10

    .line 11029
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11030
    .local v0, "position":I
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11031
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11032
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11033
    return-void

    .line 11035
    .end local v0    # "position":I
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_5a

    .line 11036
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 11037
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_37

    .line 11038
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2b

    .line 11039
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_44

    .line 11041
    :cond_2b
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_44

    .line 11044
    :cond_37
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 11047
    :goto_44
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11048
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_57

    .line 11051
    const-string v0, "RecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11054
    :cond_57
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_5c

    .line 11056
    :cond_5a
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11058
    :goto_5c
    return-void
.end method

.method public blacklist setDuration(I)V
    .registers 3
    .param p1, "duration"    # I

    .line 11092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11093
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11094
    return-void
.end method

.method public blacklist setDx(I)V
    .registers 3
    .param p1, "dx"    # I

    .line 11074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11075
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11076
    return-void
.end method

.method public blacklist setDy(I)V
    .registers 3
    .param p1, "dy"    # I

    .line 11083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11084
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11085
    return-void
.end method

.method public blacklist setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 11107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11108
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11109
    return-void
.end method

.method public blacklist update(IIILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 11120
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11121
    iput p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11122
    iput p3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11123
    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11125
    return-void
.end method
