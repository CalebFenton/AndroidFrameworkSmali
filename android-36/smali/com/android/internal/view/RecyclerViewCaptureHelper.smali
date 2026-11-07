.class public Lcom/android/internal/view/RecyclerViewCaptureHelper;
.super Ljava/lang/Object;
.source "RecyclerViewCaptureHelper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RVCaptureHelper"


# instance fields
.field private blacklist mOverScrollMode:I

.field private blacklist mScrollBarWasEnabled:Z

.field private blacklist mScrollDelta:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist findChildNearestTarget(Landroid/view/ViewGroup;Landroid/graphics/Rect;)Landroid/view/View;
    .registers 13
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "targetRect"    # Landroid/graphics/Rect;

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "selected":Landroid/view/View;
    const v1, 0x7fffffff

    .line 150
    .local v1, "minCenterDistance":I
    const/4 v2, 0x0

    .line 154
    .local v2, "maxOverlap":I
    const/high16 v3, 0x3e800000    # 0.25f

    .line 155
    .local v3, "preferredRangeFromCenterPercent":F
    nop

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 158
    .local v4, "preferredDistance":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v5, "parentLocalVis":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 161
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 162
    .local v6, "frame":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_55

    .line 163
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 164
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 166
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_33

    .line 167
    goto :goto_52

    .line 170
    :cond_33
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 172
    .local v9, "centerDistance":I
    if-ge v9, v1, :cond_45

    .line 174
    move v1, v9

    .line 175
    move-object v0, v8

    goto :goto_52

    .line 176
    :cond_45
    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_52

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v10, v4, :cond_52

    .line 178
    move-object v0, v8

    .line 162
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "centerDistance":I
    :cond_52
    :goto_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 181
    .end local v7    # "i":I
    :cond_55
    return-object v0
.end method


# virtual methods
.method public bridge synthetic blacklist onAcceptSession(Landroid/view/View;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/RecyclerViewCaptureHelper;->onAcceptSession(Landroid/view/ViewGroup;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/view/ViewGroup;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 52
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 51
    :cond_16
    :goto_16
    return v1
.end method

.method public bridge synthetic blacklist onPrepareForEnd(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/RecyclerViewCaptureHelper;->onPrepareForEnd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 187
    iget v0, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 188
    iget v0, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mOverScrollMode:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 189
    iget-boolean v0, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollBarWasEnabled:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 190
    return-void
.end method

.method public bridge synthetic blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 42
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/RecyclerViewCaptureHelper;->onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mOverScrollMode:I

    .line 60
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollBarWasEnabled:Z

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 64
    return-void
.end method

.method public bridge synthetic blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 42
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/RecyclerViewCaptureHelper;->onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 22
    .param p1, "recyclerView"    # Landroid/view/ViewGroup;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p5, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    new-instance v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v5}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 70
    .local v5, "result":Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 71
    iget v6, v0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    iput v6, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 72
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 74
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v6

    const-string v7, "RVCaptureHelper"

    if-eqz v6, :cond_ed

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_31

    goto/16 :goto_ed

    .line 81
    :cond_31
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 82
    .local v6, "requestedContainerBounds":Landroid/graphics/Rect;
    iget v8, v0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    neg-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 83
    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v8, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 87
    invoke-static {v1, v6}, Lcom/android/internal/view/RecyclerViewCaptureHelper;->findChildNearestTarget(Landroid/view/ViewGroup;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v8

    .line 88
    .local v8, "anchor":Landroid/view/View;
    if-nez v8, :cond_53

    .line 89
    const-string v9, "Failed to locate anchor view"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 91
    return-void

    .line 94
    :cond_53
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 95
    .local v10, "requestedContentBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v8, v10}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 97
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    .line 99
    .local v11, "prevAnchorTop":I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 101
    .local v12, "input":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    .line 102
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int/2addr v13, v14

    .line 103
    .local v13, "remainingHeight":I
    if-lez v13, :cond_7f

    .line 104
    neg-int v14, v13

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v12, v9, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 107
    :cond_7f
    const/4 v14, 0x1

    invoke-virtual {v1, v8, v12, v14}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v14

    if-eqz v14, :cond_bb

    .line 108
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-nez v14, :cond_ac

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bug: anchor view "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " is detached after scrolling"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 112
    return-void

    .line 115
    :cond_ac
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v7, v11, v7

    .line 116
    .local v7, "scrolled":I
    iget v14, v0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    add-int/2addr v14, v7

    iput v14, v0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    .line 117
    iget v14, v0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    iput v14, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 120
    .end local v7    # "scrolled":I
    :cond_bb
    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 121
    invoke-virtual {v1, v8, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 123
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 124
    .local v7, "recyclerLocalVisible":Landroid/graphics/Rect;
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 126
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v14

    if-nez v14, :cond_d3

    .line 128
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 129
    return-void

    .line 131
    :cond_d3
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 132
    .local v14, "available":Landroid/graphics/Rect;
    iget v15, v2, Landroid/graphics/Rect;->left:I

    neg-int v15, v15

    iget v9, v2, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    invoke-virtual {v14, v15, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 133
    iget v9, v0, Lcom/android/internal/view/RecyclerViewCaptureHelper;->mScrollDelta:I

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 134
    iput-object v14, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 135
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 136
    return-void

    .line 75
    .end local v6    # "requestedContainerBounds":Landroid/graphics/Rect;
    .end local v7    # "recyclerLocalVisible":Landroid/graphics/Rect;
    .end local v8    # "anchor":Landroid/view/View;
    .end local v10    # "requestedContentBounds":Landroid/graphics/Rect;
    .end local v11    # "prevAnchorTop":I
    .end local v12    # "input":Landroid/graphics/Rect;
    .end local v13    # "remainingHeight":I
    .end local v14    # "available":Landroid/graphics/Rect;
    :cond_ed
    :goto_ed
    const-string/jumbo v6, "recyclerView is empty or not visible, cannot continue"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
