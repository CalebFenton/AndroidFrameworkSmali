.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;
.source "CollapsibleColumnLayout.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V
    .registers 11
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "horizontalPositioning"    # I
    .param p9, "verticalPositioning"    # I
    .param p10, "spacedBy"    # F

    .line 49
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V
    .registers 7
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "horizontalPositioning"    # I
    .param p5, "verticalPositioning"    # I
    .param p6, "spacedBy"    # F

    .line 69
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V

    .line 76
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V
    .registers 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontalPositioning"    # I
    .param p4, "verticalPositioning"    # I
    .param p5, "spacedBy"    # F

    .line 110
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 113
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 114
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 115
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 116
    return-void
.end method

.method private blacklist computeVisibleChildren(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 26
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "horizontalWrap"    # Z
    .param p5, "verticalWrap"    # Z
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .param p7, "size"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 204
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    const/4 v2, 0x0

    .line 205
    .local v2, "visibleChildren":I
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v10

    .line 206
    .local v10, "self":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    const/16 v3, 0x20

    invoke-virtual {v10, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 207
    move/from16 v3, p3

    .line 208
    .local v3, "currentMaxHeight":F
    const/4 v4, 0x0

    .line 209
    .local v4, "hasPriorities":Z
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v2

    move v7, v3

    move v13, v4

    .end local v2    # "visibleChildren":I
    .end local v3    # "currentMaxHeight":F
    .end local v4    # "hasPriorities":Z
    .local v7, "currentMaxHeight":F
    .local v12, "visibleChildren":I
    .local v13, "hasPriorities":Z
    :goto_1e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 210
    .local v2, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->contains(I)Z

    move-result v3

    if-nez v3, :cond_55

    .line 212
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;

    if-eqz v3, :cond_45

    .line 213
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    move v14, v7

    move-object/from16 v8, p6

    .end local v7    # "currentMaxHeight":F
    .local v14, "currentMaxHeight":F
    goto :goto_56

    .line 215
    .end local v14    # "currentMaxHeight":F
    .restart local v7    # "currentMaxHeight":F
    :cond_45
    move v14, v7

    .end local v7    # "currentMaxHeight":F
    .restart local v14    # "currentMaxHeight":F
    const/4 v6, 0x0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_56

    .line 210
    .end local v14    # "currentMaxHeight":F
    .restart local v7    # "currentMaxHeight":F
    :cond_55
    move v14, v7

    .line 219
    .end local v7    # "currentMaxHeight":F
    .restart local v14    # "currentMaxHeight":F
    :goto_56
    invoke-virtual {v8, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v3

    .line 220
    .local v3, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v4

    if-nez v4, :cond_86

    .line 221
    if-eqz v9, :cond_7d

    .line 222
    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 223
    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 225
    :cond_7d
    add-int/lit8 v12, v12, 0x1

    .line 226
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v4

    sub-float v7, v14, v4

    .end local v14    # "currentMaxHeight":F
    .restart local v7    # "currentMaxHeight":F
    goto :goto_87

    .line 220
    .end local v7    # "currentMaxHeight":F
    .restart local v14    # "currentMaxHeight":F
    :cond_86
    move v7, v14

    .line 228
    .end local v14    # "currentMaxHeight":F
    .restart local v7    # "currentMaxHeight":F
    :goto_87
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v4, :cond_9a

    .line 229
    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 230
    .local v4, "lc":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    const-class v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;

    .line 231
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;

    .line 232
    .local v5, "priority":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;
    if-eqz v5, :cond_9a

    .line 233
    const/4 v6, 0x1

    move v13, v6

    .line 236
    .end local v2    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v3    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v4    # "lc":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    .end local v5    # "priority":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;
    :cond_9a
    goto :goto_1e

    .line 237
    :cond_9b
    move v14, v7

    .end local v7    # "currentMaxHeight":F
    .restart local v14    # "currentMaxHeight":F
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b4

    if-eqz v9, :cond_b4

    .line 238
    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v2

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mSpacedBy:F

    add-int/lit8 v4, v12, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 241
    :cond_b4
    const/4 v2, 0x0

    .line 242
    .local v2, "childrenWidth":F
    const/4 v3, 0x0

    .line 244
    .local v3, "childrenHeight":F
    const/4 v4, 0x0

    .line 245
    .local v4, "overflow":Z
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    .line 246
    .local v5, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;>;"
    const/4 v6, 0x1

    if-eqz v13, :cond_c2

    .line 248
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    .line 249
    invoke-static {v7, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;->sortWithPriorities(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 252
    :cond_c2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/16 v15, 0x10

    if-eqz v11, :cond_10a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 253
    .local v11, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v8, v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v6

    .line 254
    .local v6, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    if-nez v4, :cond_105

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v16

    if-eqz v16, :cond_e1

    goto :goto_105

    .line 258
    :cond_e1
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v16

    .line 259
    .local v16, "childHeight":F
    add-float v17, v3, v16

    cmpl-float v17, v17, v1

    if-lez v17, :cond_ee

    const/16 v17, 0x1

    goto :goto_f0

    :cond_ee
    const/16 v17, 0x0

    .line 260
    .local v17, "childDoesNotFits":Z
    :goto_f0
    if-eqz v17, :cond_f7

    .line 261
    invoke-virtual {v6, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 262
    const/4 v4, 0x1

    goto :goto_103

    .line 264
    :cond_f7
    add-float v3, v3, v16

    .line 265
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 266
    add-int/lit8 v12, v12, 0x1

    .line 268
    .end local v6    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v11    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v16    # "childHeight":F
    .end local v17    # "childDoesNotFits":Z
    :goto_103
    const/4 v6, 0x1

    goto :goto_c6

    .line 255
    .restart local v6    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .restart local v11    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_105
    :goto_105
    invoke-virtual {v6, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 256
    const/4 v6, 0x1

    goto :goto_c6

    .line 269
    .end local v6    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v11    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_10a
    if-eqz p5, :cond_115

    if-eqz v9, :cond_115

    .line 270
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v9, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 272
    :cond_115
    if-eqz v12, :cond_122

    if-eqz v9, :cond_125

    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_125

    .line 273
    :cond_122
    invoke-virtual {v10, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 275
    :cond_125
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 90
    const/16 v0, 0xe9

    return v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
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

    .line 125
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 126
    .local v2, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 127
    .local v3, "animationId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 128
    .local v4, "horizontalPositioning":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 129
    .local v5, "verticalPositioning":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 130
    .local v6, "spacedBy":F
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 184
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p5

    move-object v6, p6

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local p3    # "maxWidth":F
    .end local p5    # "maxHeight":F
    .end local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .local v1, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v2, "maxWidth":F
    .local v3, "maxHeight":F
    .local v6, "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->computeVisibleChildren(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 185
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "horizontalWrap"    # Z
    .param p5, "verticalWrap"    # Z
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .param p7, "size"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 172
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->computeVisibleChildren(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 174
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 81
    const-string v0, "COLLAPSIBLE_COLUMN"

    return-object v0
.end method

.method public blacklist hasVerticalIntrinsicDimension()Z
    .registers 2

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 12
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 190
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 192
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 193
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local p2    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .local v2, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v7, "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->computeVisibleChildren(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 194
    return-void
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 143
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 144
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    add-float/2addr v0, v1

    .line 146
    :cond_1a
    return v0
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 152
    .local v0, "width":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 153
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    add-float/2addr v0, v1

    .line 155
    :cond_1a
    return v0
.end method
