.class Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field blacklist mCoordinate:I

.field blacklist mLayoutFromEnd:Z

.field blacklist mPosition:I

.field blacklist mValid:Z

.field final synthetic blacklist this$0:Lcom/android/internal/widget/LinearLayoutManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LinearLayoutManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/LinearLayoutManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2285
    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2286
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 2287
    return-void
.end method


# virtual methods
.method blacklist assignCoordinateFromPadding()V
    .registers 2

    .line 2301
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_d

    .line 2302
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_15

    .line 2303
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2304
    return-void
.end method

.method public blacklist assignFromView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 2370
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_18

    .line 2371
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v1, v1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2372
    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_22

    .line 2374
    :cond_18
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2377
    :goto_22
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2378
    return-void
.end method

.method public blacklist assignFromViewAndKeepVisibleRect(Landroid/view/View;)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;

    .line 2323
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v0

    .line 2324
    .local v0, "spaceChange":I
    if-ltz v0, :cond_e

    .line 2325
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 2326
    return-void

    .line 2328
    :cond_e
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2329
    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6b

    .line 2330
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v1, v1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2331
    .local v1, "prevLayoutEnd":I
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v3, v3, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 2332
    .local v3, "childEnd":I
    sub-int v4, v1, v3

    .line 2333
    .local v4, "previousEndMargin":I
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v5, v5, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2335
    if-lez v4, :cond_6a

    .line 2336
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v5, v5, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    .line 2337
    .local v5, "childSize":I
    iget v6, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v6, v5

    .line 2338
    .local v6, "estimatedChildStart":I
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v7, v7, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v7}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 2339
    .local v7, "layoutStart":I
    iget-object v8, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v8, v8, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v8, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v8, v7

    .line 2341
    .local v8, "previousStartMargin":I
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v7

    .line 2342
    .local v2, "startReference":I
    sub-int v9, v6, v2

    .line 2343
    .local v9, "startMargin":I
    if-gez v9, :cond_6a

    .line 2345
    iget v10, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v11, v9

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2348
    .end local v1    # "prevLayoutEnd":I
    .end local v2    # "startReference":I
    .end local v3    # "childEnd":I
    .end local v4    # "previousEndMargin":I
    .end local v5    # "childSize":I
    .end local v6    # "estimatedChildStart":I
    .end local v7    # "layoutStart":I
    .end local v8    # "previousStartMargin":I
    .end local v9    # "startMargin":I
    :cond_6a
    goto :goto_b8

    .line 2349
    :cond_6b
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v1, v1, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    .line 2350
    .local v1, "childStart":I
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v3, v3, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v3, v1, v3

    .line 2351
    .local v3, "startMargin":I
    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2352
    if-lez v3, :cond_b8

    .line 2353
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v4, v4, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2354
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    .line 2355
    .local v4, "estimatedEnd":I
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v5, v5, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr v5, v0

    .line 2357
    .local v5, "previousLayoutEnd":I
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v6, v6, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2358
    invoke-virtual {v6, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    .line 2359
    .local v6, "previousEndMargin":I
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->this$0:Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v7, v7, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v7}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v7

    .line 2360
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v7, v2

    .line 2361
    .local v7, "endReference":I
    sub-int v2, v7, v4

    .line 2362
    .local v2, "endMargin":I
    if-gez v2, :cond_b8

    .line 2363
    iget v8, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    neg-int v9, v2

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2367
    .end local v1    # "childStart":I
    .end local v2    # "endMargin":I
    .end local v3    # "startMargin":I
    .end local v4    # "estimatedEnd":I
    .end local v5    # "previousLayoutEnd":I
    .end local v6    # "previousEndMargin":I
    .end local v7    # "endReference":I
    :cond_b8
    :goto_b8
    return-void
.end method

.method blacklist isViewValidAsAnchor(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 2317
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 2318
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    if-ltz v1, :cond_1e

    .line 2319
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 2318
    :goto_1f
    return v1
.end method

.method blacklist reset()V
    .registers 2

    .line 2290
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2291
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2293
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 2294
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
