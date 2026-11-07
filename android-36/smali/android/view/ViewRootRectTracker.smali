.class public Landroid/view/ViewRootRectTracker;
.super Ljava/lang/Object;
.source "ViewRootRectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootRectTracker$ViewInfo;
    }
.end annotation


# instance fields
.field private final blacklist mRectCollector:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRootRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRootRectsChanged:Z

.field private blacklist mViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewRootRectTracker$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewsChanged:Z

.field private blacklist mWaitingForComputeChanges:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetTrackedRectsForView(Landroid/view/ViewRootRectTracker;Landroid/view/View;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewRootRectTracker;->getTrackedRectsForView(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/function/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;>;)V"
        }
    .end annotation

    .line 58
    .local p1, "rectCollector":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/view/View;Ljava/util/List<Landroid/graphics/Rect;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    .line 42
    iput-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mRootRectsChanged:Z

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootRectTracker;->mRootRects:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootRectTracker;->mViewInfos:Ljava/util/List;

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootRectTracker;->mRects:Ljava/util/List;

    .line 50
    iput-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mWaitingForComputeChanges:Z

    .line 59
    iput-object p1, p0, Landroid/view/ViewRootRectTracker;->mRectCollector:Ljava/util/function/Function;

    .line 60
    return-void
.end method

.method private blacklist getTrackedRectsForView(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/view/ViewRootRectTracker;->mRectCollector:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 170
    .local v0, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    if-nez v0, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    return-object v1
.end method


# virtual methods
.method public blacklist computeChangedRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Landroid/view/ViewRootRectTracker;->computeChanges()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    iget-object v0, p0, Landroid/view/ViewRootRectTracker;->mRects:Ljava/util/List;

    return-object v0

    .line 95
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist computeChanges()Z
    .registers 8

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mWaitingForComputeChanges:Z

    .line 107
    iget-boolean v1, p0, Landroid/view/ViewRootRectTracker;->mRootRectsChanged:Z

    .line 108
    .local v1, "changed":Z
    iget-object v2, p0, Landroid/view/ViewRootRectTracker;->mViewInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 109
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/ViewRootRectTracker$ViewInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/view/ViewRootRectTracker;->mRootRects:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    .local v3, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_35

    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRootRectTracker$ViewInfo;

    .line 112
    .local v4, "info":Landroid/view/ViewRootRectTracker$ViewInfo;
    invoke-virtual {v4}, Landroid/view/ViewRootRectTracker$ViewInfo;->update()I

    move-result v6

    packed-switch v6, :pswitch_data_4c

    goto :goto_34

    .line 120
    :pswitch_27
    iput-boolean v5, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_34

    .line 114
    :pswitch_2d
    const/4 v1, 0x1

    .line 117
    :pswitch_2e
    iget-object v5, v4, Landroid/view/ViewRootRectTracker$ViewInfo;->mRects:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    nop

    .line 124
    .end local v4    # "info":Landroid/view/ViewRootRectTracker$ViewInfo;
    :goto_34
    goto :goto_12

    .line 125
    :cond_35
    if-nez v1, :cond_3b

    iget-boolean v4, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    if-eqz v4, :cond_4a

    .line 126
    :cond_3b
    iput-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    .line 127
    iput-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mRootRectsChanged:Z

    .line 128
    iget-object v4, p0, Landroid/view/ViewRootRectTracker;->mRects:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 129
    iput-object v3, p0, Landroid/view/ViewRootRectTracker;->mRects:Ljava/util/List;

    .line 130
    return v5

    .line 133
    :cond_4a
    return v0

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2e
        :pswitch_27
    .end packed-switch
.end method

.method public blacklist getLastComputedRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/view/ViewRootRectTracker;->mRects:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRootRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/view/ViewRootRectTracker;->mRootRects:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isWaitingForComputeChanges()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mWaitingForComputeChanges:Z

    return v0
.end method

.method public blacklist setRootRects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const-string/jumbo v0, "rects must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iput-object p1, p0, Landroid/view/ViewRootRectTracker;->mRootRects:Ljava/util/List;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mRootRectsChanged:Z

    .line 159
    iput-boolean v0, p0, Landroid/view/ViewRootRectTracker;->mWaitingForComputeChanges:Z

    .line 160
    return-void
.end method

.method public blacklist updateRectsForView(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "found":Z
    iget-object v1, p0, Landroid/view/ViewRootRectTracker;->mViewInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/ViewRootRectTracker$ViewInfo;>;"
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootRectTracker$ViewInfo;

    .line 67
    .local v2, "info":Landroid/view/ViewRootRectTracker$ViewInfo;
    invoke-virtual {v2}, Landroid/view/ViewRootRectTracker$ViewInfo;->getView()Landroid/view/View;

    move-result-object v4

    .line 68
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v4}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_2e

    .line 73
    :cond_27
    if-ne v4, p1, :cond_2d

    .line 74
    const/4 v0, 0x1

    .line 75
    iput-boolean v3, v2, Landroid/view/ViewRootRectTracker$ViewInfo;->mDirty:Z

    .line 76
    goto :goto_34

    .line 78
    .end local v2    # "info":Landroid/view/ViewRootRectTracker$ViewInfo;
    .end local v4    # "v":Landroid/view/View;
    :cond_2d
    goto :goto_7

    .line 69
    .restart local v2    # "info":Landroid/view/ViewRootRectTracker$ViewInfo;
    .restart local v4    # "v":Landroid/view/View;
    :cond_2e
    :goto_2e
    iput-boolean v3, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 71
    goto :goto_7

    .line 79
    .end local v2    # "info":Landroid/view/ViewRootRectTracker$ViewInfo;
    .end local v4    # "v":Landroid/view/View;
    :cond_34
    :goto_34
    if-nez v0, :cond_48

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 80
    iget-object v2, p0, Landroid/view/ViewRootRectTracker;->mViewInfos:Ljava/util/List;

    new-instance v4, Landroid/view/ViewRootRectTracker$ViewInfo;

    invoke-direct {v4, p0, p1}, Landroid/view/ViewRootRectTracker$ViewInfo;-><init>(Landroid/view/ViewRootRectTracker;Landroid/view/View;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iput-boolean v3, p0, Landroid/view/ViewRootRectTracker;->mViewsChanged:Z

    .line 83
    :cond_48
    iput-boolean v3, p0, Landroid/view/ViewRootRectTracker;->mWaitingForComputeChanges:Z

    .line 84
    return-void
.end method
