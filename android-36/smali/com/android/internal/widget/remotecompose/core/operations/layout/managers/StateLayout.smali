.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "StateLayout.java"


# instance fields
.field public blacklist MAX_CACHE_ELEMENTS:I

.field public blacklist cacheListElementsId:[I

.field public blacklist currentLayoutIndex:I

.field public blacklist inTransition:Z

.field private blacklist mIndexId:I

.field public blacklist measuredLayoutIndex:I

.field public blacklist previousLayoutIndex:I

.field public blacklist statePaintedComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFI)V
    .registers 12
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "indexId"    # I

    .line 72
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 48
    move v0, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v0, "height":F
    .local p2, "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local p3, "componentId":I
    .local p4, "animationId":I
    .local p5, "x":F
    .local p6, "y":F
    .local p7, "width":F
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    .line 49
    iput v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    .line 50
    iput v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    .line 51
    iput v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    .line 58
    const/16 v2, 0x10

    iput v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    .line 59
    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    new-array v2, v2, [I

    iput-object v2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    .line 61
    iput-boolean v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    .line 76
    iput p8, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    .line 77
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V
    .registers 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontalPositioning"    # I
    .param p4, "verticalPositioning"    # I
    .param p5, "indexId"    # I

    .line 574
    const/16 v0, 0xd9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 575
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 576
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 577
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 578
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 579
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 580
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 11
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 589
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 590
    .local v2, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 591
    .local v3, "animationId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    .line 594
    .local v8, "indexId":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    return-void
.end method


# virtual methods
.method public blacklist checkEndOfTransition()V
    .registers 6

    .line 507
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    .line 508
    .local v0, "currentLayout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v1

    .line 509
    .local v1, "previousLayout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v2, :cond_2e

    iget-object v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v2, :cond_2e

    .line 512
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    .line 513
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v3

    .line 514
    .local v3, "previous":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    if-eq v3, v0, :cond_2e

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isGone()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 515
    iput v2, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mVisibility:I

    .line 516
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->needsRepaint()V

    .line 519
    .end local v3    # "previous":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    :cond_2e
    return-void
.end method

.method public blacklist collapsePaintedComponents()V
    .registers 11

    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 116
    .local v0, "numStates":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 117
    .local v2, "id":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 118
    .local v3, "list":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    array-length v4, v3

    .line 119
    .local v4, "numComponents":I
    const/4 v5, 0x1

    if-le v4, v5, :cond_4e

    const/4 v5, 0x0

    aget-object v6, v3, v5

    if-eqz v6, :cond_4e

    .line 120
    aget-object v5, v3, v5

    .line 121
    .local v5, "c1":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v6, 0x1

    .line 122
    .local v6, "same":Z
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_31
    array-length v8, v3

    if-ge v7, v8, :cond_44

    .line 123
    aget-object v8, v3, v7

    .line 124
    .local v8, "c2":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v8, :cond_42

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z

    move-result v9

    if-nez v9, :cond_3f

    goto :goto_42

    .line 122
    .end local v8    # "c2":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 125
    .restart local v8    # "c2":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_42
    :goto_42
    const/4 v6, 0x0

    .line 126
    nop

    .line 129
    .end local v7    # "i":I
    .end local v8    # "c2":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_44
    if-eqz v6, :cond_4e

    .line 131
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_47
    if-ge v7, v0, :cond_4e

    .line 132
    aput-object v5, v3, v7

    .line 131
    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    .line 136
    .end local v2    # "id":Ljava/lang/Integer;
    .end local v3    # "list":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v4    # "numComponents":I
    .end local v5    # "c1":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v6    # "same":Z
    .end local v7    # "i":I
    :cond_4e
    goto :goto_10

    .line 137
    :cond_4f
    return-void
.end method

.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 147
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v1

    .line 148
    .local v1, "layout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local p2    # "minWidth":F
    .end local p3    # "maxWidth":F
    .end local p4    # "minHeight":F
    .end local p5    # "maxHeight":F
    .end local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .local v2, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v3, "minWidth":F
    .local v4, "maxWidth":F
    .local v5, "minHeight":F
    .local v6, "maxHeight":F
    .local v7, "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 149
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 17
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "horizontalWrap"    # Z
    .param p5, "verticalWrap"    # Z
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .param p7, "size"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 171
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v1

    .line 172
    .local v1, "layout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 174
    return-void
.end method

.method public blacklist findAnimatedComponents()V
    .registers 10

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 88
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 89
    .local v1, "cs":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v2, :cond_71

    .line 90
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 91
    .local v2, "state":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setX(F)V

    .line 92
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setY(F)V

    .line 93
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v3

    .line 94
    .local v3, "childrenComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_71

    .line 95
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 96
    .local v5, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6e

    .line 97
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 98
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    .line 99
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 98
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_5c
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    aput-object v5, v6, v0

    .line 94
    .end local v5    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 87
    .end local v1    # "cs":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v2    # "state":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    .end local v3    # "childrenComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;>;"
    .end local v4    # "j":I
    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    .end local v0    # "i":I
    :cond_74
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->collapsePaintedComponents()V

    .line 108
    return-void
.end method

.method public blacklist getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    .registers 6
    .param p1, "idx"    # I

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 383
    .local v2, "pane":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v3, :cond_1f

    .line 384
    if-ne v0, p1, :cond_1d

    .line 385
    move-object v1, v2

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    return-object v1

    .line 387
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    .line 389
    .end local v2    # "pane":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_1f
    goto :goto_7

    .line 390
    :cond_20
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    return-object v1
.end method

.method public blacklist hideLayoutsOtherThan(I)V
    .registers 6
    .param p1, "idx"    # I

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 363
    .local v2, "pane":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v3, :cond_22

    .line 364
    if-eq v0, p1, :cond_1d

    .line 365
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    goto :goto_20

    .line 367
    :cond_1d
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 369
    :goto_20
    add-int/lit8 v0, v0, 0x1

    .line 371
    .end local v2    # "pane":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_22
    goto :goto_7

    .line 372
    :cond_23
    return-void
.end method

.method public blacklist inflate()V
    .registers 2

    .line 81
    invoke-super {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->inflate()V

    .line 82
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->hideLayoutsOtherThan(I)V

    .line 83
    return-void
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 156
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    .line 158
    .local v0, "layout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 159
    return-void
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 188
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 189
    .local v0, "self":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->selfLayout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 192
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v1

    .line 196
    .local v1, "layout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getComponentId()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 197
    .local v2, "layoutMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    .line 199
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 202
    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_73

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v3, v5, :cond_73

    .line 203
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v3

    .line 204
    .local v3, "previous":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 205
    .local v6, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v7

    .line 206
    .local v7, "id":I
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_69

    .line 207
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v7

    .line 208
    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 209
    .local v8, "rc":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    array-length v9, v8

    move v10, v4

    :goto_5d
    if-ge v10, v9, :cond_69

    aget-object v11, v8, v10

    .line 210
    .local v11, "ac":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v11, :cond_66

    .line 211
    invoke-virtual {v11, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 209
    .end local v11    # "ac":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_66
    add-int/lit8 v10, v10, 0x1

    goto :goto_5d

    .line 215
    .end local v8    # "rc":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_69
    invoke-virtual {p2, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 216
    invoke-virtual {v6, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 218
    .end local v6    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v7    # "id":I
    :cond_72
    goto :goto_34

    .line 221
    .end local v3    # "previous":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    :cond_73
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mFirstLayout:Z

    .line 222
    return-void
.end method

.method public blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 26
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 240
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->findAnimatedComponents()V

    .line 246
    :cond_d
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v8

    .line 250
    .local v8, "layout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    iget-boolean v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eqz v1, :cond_ad

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    if-eq v1, v2, :cond_ad

    .line 251
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v11

    .line 252
    .local v11, "previousLayout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 253
    .local v1, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v13

    .line 254
    .local v13, "id":I
    if-ne v13, v10, :cond_40

    .line 255
    goto :goto_2d

    .line 257
    :cond_40
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 258
    .local v14, "pc":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v3

    if-ne v3, v13, :cond_a4

    .line 259
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    .line 260
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    aget-object v15, v2, v3

    .line 261
    .local v15, "prev":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eq v1, v15, :cond_a1

    .line 262
    nop

    .line 264
    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v3

    .line 265
    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    .line 266
    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 267
    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v6

    .line 262
    move-object/from16 v2, p1

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 270
    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setX(F)V

    .line 271
    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setY(F)V

    .line 272
    iput v9, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    goto :goto_a9

    .line 261
    :cond_a1
    move-object/from16 v7, p6

    goto :goto_a9

    .line 258
    .end local v15    # "prev":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_a4
    move-object/from16 v7, p6

    .line 276
    .end local v14    # "pc":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_48

    .line 257
    :cond_a7
    move-object/from16 v7, p6

    .line 277
    .end local v1    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v13    # "id":I
    :goto_a9
    goto :goto_2d

    .line 252
    :cond_aa
    move-object/from16 v7, p6

    goto :goto_af

    .line 250
    .end local v11    # "previousLayout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    :cond_ad
    move-object/from16 v7, p6

    .line 281
    :goto_af
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v1, v8

    .end local v8    # "layout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    .local v1, "layout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 284
    .end local v1    # "layout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    .restart local v8    # "layout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 285
    .local v12, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v13

    .line 286
    .local v13, "cm":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v1

    const/4 v14, 0x1

    if-eq v1, v10, :cond_155

    .line 289
    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v15

    .line 290
    .local v15, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v15, v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    .line 292
    invoke-virtual {v15, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 295
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 296
    .local v1, "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_fc
    array-length v3, v1

    if-ge v2, v3, :cond_150

    .line 297
    move-object v3, v1

    .end local v1    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v3, "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    aget-object v1, v3, v2

    .line 298
    .local v1, "ac":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v1, :cond_147

    .line 299
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v4

    .line 302
    .local v4, "m2":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    if-eq v12, v1, :cond_111

    .line 303
    invoke-virtual {v4, v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    .line 307
    :cond_111
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-ne v2, v5, :cond_119

    .line 308
    invoke-virtual {v4, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    goto :goto_11e

    .line 310
    :cond_119
    if-eq v12, v1, :cond_11e

    .line 311
    invoke-virtual {v4, v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 316
    :cond_11e
    :goto_11e
    if-eq v12, v1, :cond_140

    .line 317
    move-object v5, v3

    .end local v3    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v5, "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    move-object v6, v4

    .end local v4    # "m2":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .local v6, "m2":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    move-object/from16 v16, v5

    .end local v5    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v16, "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    move-object/from16 v17, v6

    .end local v6    # "m2":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .local v17, "m2":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    move-object/from16 v18, v17

    move/from16 v17, v2

    move-object/from16 v2, p1

    .end local v2    # "idx":I
    .local v17, "idx":I
    .local v18, "m2":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_14b

    .line 316
    .end local v16    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v17    # "idx":I
    .end local v18    # "m2":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .restart local v2    # "idx":I
    .restart local v3    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .restart local v4    # "m2":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :cond_140
    move/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    .end local v2    # "idx":I
    .end local v3    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v4    # "m2":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .restart local v16    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .restart local v17    # "idx":I
    .restart local v18    # "m2":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    goto :goto_14b

    .line 298
    .end local v16    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v17    # "idx":I
    .end local v18    # "m2":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .restart local v2    # "idx":I
    .restart local v3    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_147
    move/from16 v17, v2

    move-object/from16 v16, v3

    .line 296
    .end local v1    # "ac":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v2    # "idx":I
    .end local v3    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .restart local v16    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .restart local v17    # "idx":I
    :goto_14b
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v1, v16

    .end local v17    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_fc

    .end local v16    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v1, "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_150
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 321
    .end local v1    # "components":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v2    # "idx":I
    .end local v15    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    goto :goto_158

    .line 326
    :cond_155
    invoke-virtual {v13, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 328
    .end local v12    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v13    # "cm":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :goto_158
    goto/16 :goto_c5

    .line 331
    :cond_15a
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v1, v2, :cond_1b6

    .line 332
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v1

    .line 333
    .local v1, "previousLayout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 334
    .local v3, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v4

    .line 335
    .local v4, "id":I
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v5

    if-eq v5, v10, :cond_188

    .line 336
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v4

    .line 338
    :cond_188
    invoke-virtual {v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->contains(I)Z

    move-result v5

    if-nez v5, :cond_1b5

    .line 339
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v5

    .line 340
    .local v5, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 341
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 342
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 343
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 344
    invoke-virtual {v5, v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 346
    .end local v3    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v4    # "id":I
    .end local v5    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :cond_1b5
    goto :goto_16e

    .line 349
    .end local v1    # "previousLayout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    :cond_1b6
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 350
    .local v1, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 351
    .local v2, "own":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    .line 352
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    .line 353
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 179
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_7

    .line 180
    return-void

    .line 182
    :cond_7
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    .line 183
    .local v0, "layout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 184
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 395
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 396
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getInteger(I)I

    move-result v0

    .line 397
    .local v0, "newValue":I
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v0, v2, :cond_20

    .line 398
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    .line 399
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    .line 400
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    .line 403
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->invalidateMeasure()V

    .line 410
    .end local v0    # "newValue":I
    :cond_20
    const/4 v0, 0x0

    .line 411
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 412
    .local v3, "pane":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    instance-of v5, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v5, :cond_50

    .line 413
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v0, v5, :cond_42

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    if-eq v0, v5, :cond_42

    .line 414
    iput v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 416
    :cond_42
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-ne v0, v4, :cond_4e

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 417
    iput v1, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 419
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    .line 421
    .end local v3    # "pane":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_50
    goto :goto_27

    .line 423
    :cond_51
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v2

    .line 424
    .local v2, "currentLayout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    if-eqz v3, :cond_62

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    if-eq v3, v5, :cond_62

    goto :goto_63

    :cond_62
    move v1, v4

    .line 425
    .local v1, "needsToPaintTransition":Z
    :goto_63
    const/4 v3, -0x1

    if-eqz v1, :cond_113

    .line 430
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v4

    .line 431
    .local v4, "previousLayout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 432
    .local v5, "numPreviousComponents":I
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    if-le v5, v6, :cond_84

    .line 433
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    .line 434
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    .line 437
    :cond_84
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z

    .line 440
    const/4 v6, 0x0

    .line 441
    .local v6, "idIndex":I
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_90
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 442
    .local v8, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getPaintId()I

    move-result v10

    aput v10, v9, v6

    .line 443
    nop

    .end local v8    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    add-int/lit8 v6, v6, 0x1

    .line 444
    goto :goto_90

    .line 446
    :cond_a8
    move v7, v6

    .line 447
    .local v7, "count":I
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 448
    .local v9, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getPaintId()I

    move-result v10

    .line 449
    .local v10, "id":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_c2
    if-ge v11, v6, :cond_d3

    .line 450
    iget-object v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    aget v12, v12, v11

    if-ne v12, v10, :cond_d0

    .line 451
    iget-object v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    aput v3, v12, v11

    .line 452
    add-int/lit8 v7, v7, -0x1

    .line 449
    :cond_d0
    add-int/lit8 v11, v11, 0x1

    goto :goto_c2

    .line 455
    .end local v9    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v10    # "id":I
    .end local v11    # "i":I
    :cond_d3
    goto :goto_b1

    .line 457
    :cond_d4
    if-lez v7, :cond_110

    .line 458
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 459
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getX()F

    move-result v8

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 460
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ec
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 461
    .restart local v9    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getPaintId()I

    move-result v10

    .line 462
    .restart local v10    # "id":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_fd
    if-ge v11, v6, :cond_10c

    .line 463
    iget-object v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    aget v12, v12, v11

    if-ne v12, v10, :cond_109

    .line 464
    invoke-virtual {v9, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 465
    goto :goto_10c

    .line 462
    :cond_109
    add-int/lit8 v11, v11, 0x1

    goto :goto_fd

    .line 468
    .end local v9    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v10    # "id":I
    .end local v11    # "i":I
    :cond_10c
    :goto_10c
    goto :goto_ec

    .line 469
    :cond_10d
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 473
    :cond_110
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z

    .line 477
    .end local v4    # "previousLayout":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    .end local v5    # "numPreviousComponents":I
    .end local v6    # "idIndex":I
    .end local v7    # "count":I
    :cond_113
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 478
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getX()F

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getY()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 479
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_129
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_177

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 480
    .local v5, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v6, :cond_16a

    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v6

    if-eq v6, v3, :cond_16a

    .line 481
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    move-object v7, v5

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 482
    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 483
    .local v6, "stateComponents":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    aget-object v7, v6, v7

    .line 484
    .local v7, "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v1, :cond_166

    .line 488
    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    aget-object v8, v6, v8

    .line 489
    .local v8, "previousComponent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v8, :cond_166

    if-eq v7, v8, :cond_166

    .line 490
    invoke-virtual {v8, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 493
    .end local v8    # "previousComponent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_166
    invoke-virtual {v7, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .end local v6    # "stateComponents":[Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v7    # "component":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_175

    .line 494
    :cond_16a
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v6, :cond_175

    .line 495
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_176

    .line 494
    :cond_175
    :goto_175
    nop

    .line 497
    .end local v5    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :goto_176
    goto :goto_129

    .line 498
    :cond_177
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 500
    if-eqz v1, :cond_17f

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->checkEndOfTransition()V

    .line 503
    :cond_17f
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 600
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 601
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "indexId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 602
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 554
    const-string v0, "STATE_LAYOUT"

    return-object v0
.end method
