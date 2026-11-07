.class public Lcom/android/internal/view/ListViewCaptureHelper;
.super Ljava/lang/Object;
.source "ListViewCaptureHelper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LVCaptureHelper"


# instance fields
.field private blacklist mOverScrollMode:I

.field private blacklist mScrollBarWasEnabled:Z

.field private blacklist mScrollDelta:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 38
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ListViewCaptureHelper;->onAcceptSession(Landroid/widget/ListView;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/widget/ListView;)Z
    .registers 4
    .param p1, "view"    # Landroid/widget/ListView;

    .line 46
    invoke-virtual {p1}, Landroid/widget/ListView;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 47
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 46
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

    .line 38
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ListViewCaptureHelper;->onPrepareForEnd(Landroid/widget/ListView;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/widget/ListView;)V
    .registers 3
    .param p1, "listView"    # Landroid/widget/ListView;

    .line 130
    iget v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 131
    iget v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mOverScrollMode:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollBarWasEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 133
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

    .line 38
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/ListViewCaptureHelper;->onPrepareForStart(Landroid/widget/ListView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/widget/ListView;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "view"    # Landroid/widget/ListView;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    .line 54
    invoke-virtual {p1}, Landroid/widget/ListView;->getOverScrollMode()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mOverScrollMode:I

    .line 55
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 57
    invoke-virtual {p1}, Landroid/widget/ListView;->isVerticalScrollBarEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollBarWasEnabled:Z

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 59
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

    .line 38
    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/ListViewCaptureHelper;->onScrollRequested(Landroid/widget/ListView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/widget/ListView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 25
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p5, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v5, "LVCaptureHelper"

    const-string v6, "-----------------------------------------------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onScrollRequested(scrollBounds="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", requestRect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v7}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 69
    .local v7, "result":Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v8, v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 70
    iget v8, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    iput v8, v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 71
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 73
    invoke-virtual {v1}, Landroid/widget/ListView;->isVisibleToUser()Z

    move-result v8

    if-eqz v8, :cond_12b

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_5c

    goto/16 :goto_12b

    .line 80
    :cond_5c
    iget v8, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    .line 81
    invoke-static {v8, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;->transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 83
    .local v8, "requestedContainerBounds":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 84
    .local v9, "recyclerLocalVisible":Landroid/graphics/Rect;
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 87
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 88
    .local v10, "adjustedContainerBounds":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    .line 89
    .local v11, "remainingHeight":I
    if-lez v11, :cond_81

    .line 90
    neg-int v12, v11

    div-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 93
    :cond_81
    invoke-static {v9, v10}, Lcom/android/internal/view/ScrollCaptureViewSupport;->computeScrollAmount(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v12

    .line 94
    .local v12, "scrollAmount":I
    if-gez v12, :cond_8d

    .line 95
    const-string v13, "About to scroll UP (content moves down within parent)"

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 96
    :cond_8d
    if-lez v12, :cond_94

    .line 97
    const-string v13, "About to scroll DOWN (content moves up within parent)"

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_94
    :goto_94
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "scrollAmount: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v1, v12}, Lcom/android/internal/view/ScrollCaptureViewSupport;->findScrollingReferenceView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v13

    .line 102
    .local v13, "refView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 104
    .local v14, "refTop":I
    invoke-virtual {v1, v12}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 105
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v15, v14, v15

    .line 106
    .local v15, "scrollDistance":I
    move-object/from16 v16, v8

    .end local v8    # "requestedContainerBounds":Landroid/graphics/Rect;
    .local v16, "requestedContainerBounds":Landroid/graphics/Rect;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v10

    .end local v10    # "adjustedContainerBounds":Landroid/graphics/Rect;
    .local v17, "adjustedContainerBounds":Landroid/graphics/Rect;
    const-string v10, "Parent view has scrolled vertically by "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " px"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v8, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    add-int/2addr v8, v15

    iput v8, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    .line 109
    iget v8, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    iput v8, v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 110
    if-eqz v15, :cond_106

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v11

    .end local v11    # "remainingHeight":I
    .local v18, "remainingHeight":I
    const-string v11, "Scroll delta is now "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108

    .line 110
    .end local v18    # "remainingHeight":I
    .restart local v11    # "remainingHeight":I
    :cond_106
    move/from16 v18, v11

    .line 115
    .end local v11    # "remainingHeight":I
    .restart local v18    # "remainingHeight":I
    :goto_108
    new-instance v8, Landroid/graphics/Rect;

    iget v10, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    .line 116
    invoke-static {v10, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;->transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 118
    .end local v16    # "requestedContainerBounds":Landroid/graphics/Rect;
    .restart local v8    # "requestedContainerBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 119
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_124

    .line 120
    iget v10, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    invoke-static {v10, v2, v8}, Lcom/android/internal/view/ScrollCaptureViewSupport;->transformFromContainerToRequest(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 123
    :cond_124
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {v4, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 125
    return-void

    .line 74
    .end local v8    # "requestedContainerBounds":Landroid/graphics/Rect;
    .end local v9    # "recyclerLocalVisible":Landroid/graphics/Rect;
    .end local v12    # "scrollAmount":I
    .end local v13    # "refView":Landroid/view/View;
    .end local v14    # "refTop":I
    .end local v15    # "scrollDistance":I
    .end local v17    # "adjustedContainerBounds":Landroid/graphics/Rect;
    .end local v18    # "remainingHeight":I
    :cond_12b
    :goto_12b
    const-string v6, "listView is empty or not visible, cannot continue"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-interface {v4, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
