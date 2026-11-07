.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
.source "LayoutManager.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Measurable;


# instance fields
.field blacklist mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V
    .registers 11
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F

    .line 45
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 35
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
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;-><init>(FF)V

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 46
    return-void
.end method

.method private blacklist hasHorizontalScroll()Z
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasHorizontalScroll()Z

    move-result v0

    return v0
.end method

.method private blacklist hasVerticalScroll()Z
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasVerticalScroll()Z

    move-result v0

    return v0
.end method

.method private blacklist measure_v0_4_0(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 26
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 145
    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p4

    const/4 v10, 0x1

    .line 147
    .local v10, "hasWrap":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    move/from16 v2, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 148
    .local v11, "measuredWidth":F
    nop

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    move/from16 v3, p5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 151
    .local v12, "measuredHeight":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isIntrinsicMin()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    add-float/2addr v1, v4

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v1, v4

    move v13, v1

    .end local p3    # "maxWidth":F
    .local v1, "maxWidth":F
    goto :goto_3d

    .line 151
    .end local v1    # "maxWidth":F
    .restart local p3    # "maxWidth":F
    :cond_3c
    move v13, v2

    .line 154
    .end local p3    # "maxWidth":F
    .local v13, "maxWidth":F
    :goto_3d
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isIntrinsicMin()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v1, v2

    move v14, v1

    .end local p5    # "maxHeight":F
    .local v1, "maxHeight":F
    goto :goto_56

    .line 154
    .end local v1    # "maxHeight":F
    .restart local p5    # "maxHeight":F
    :cond_55
    move v14, v3

    .line 158
    .end local p5    # "maxHeight":F
    .local v14, "maxHeight":F
    :goto_56
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v1, v13, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float v2, v1, v2

    .line 159
    .local v2, "insetMaxWidth":F
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v1, v14, v1

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v3, v1, v3

    .line 161
    .local v3, "insetMaxHeight":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v15

    .line 162
    .local v15, "hasHorizontalWrap":Z
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v16

    .line 163
    .local v16, "hasVerticalWrap":Z
    const/4 v1, 0x0

    if-nez v15, :cond_7f

    if-eqz v16, :cond_78

    goto :goto_7f

    .line 188
    :cond_78
    const/4 v10, 0x0

    move-object/from16 v6, p6

    move/from16 v17, v10

    move v10, v1

    goto :goto_d8

    .line 164
    :cond_7f
    :goto_7f
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 165
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 166
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    .line 170
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v4

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    .line 171
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v5

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 166
    move-object/from16 v6, p6

    move/from16 v17, v10

    move v10, v1

    move-object/from16 v1, p1

    .end local v10    # "hasWrap":Z
    .local v17, "hasWrap":Z
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 174
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v1

    .line 175
    .local v1, "selfVisibilityAfterMeasure":I
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->hasOverride(I)Z

    move-result v4

    if-eqz v4, :cond_b5

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    if-eq v4, v1, :cond_b5

    .line 177
    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    .line 179
    :cond_b5
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v4

    .line 180
    .end local v11    # "measuredWidth":F
    .local v4, "measuredWidth":F
    if-eqz v15, :cond_c5

    .line 181
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    iget v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v5, v7

    add-float/2addr v4, v5

    move v11, v4

    goto :goto_c6

    .line 180
    :cond_c5
    move v11, v4

    .line 183
    .end local v4    # "measuredWidth":F
    .restart local v11    # "measuredWidth":F
    :goto_c6
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v4

    .line 184
    .end local v12    # "measuredHeight":F
    .local v4, "measuredHeight":F
    if-eqz v16, :cond_d6

    .line 185
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    iget v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v5, v7

    add-float/2addr v4, v5

    move v12, v4

    goto :goto_d7

    .line 184
    :cond_d6
    move v12, v4

    .line 187
    .end local v1    # "selfVisibilityAfterMeasure":I
    .end local v4    # "measuredHeight":F
    .restart local v12    # "measuredHeight":F
    :goto_d7
    nop

    .line 191
    :goto_d8
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInHorizontalFill()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 192
    move v1, v13

    .end local v11    # "measuredWidth":F
    .local v1, "measuredWidth":F
    goto :goto_fe

    .line 193
    .end local v1    # "measuredWidth":F
    .restart local v11    # "measuredWidth":F
    :cond_e0
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 194
    nop

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .end local v11    # "measuredWidth":F
    .restart local v1    # "measuredWidth":F
    goto :goto_fe

    .line 197
    .end local v1    # "measuredWidth":F
    .restart local v11    # "measuredWidth":F
    :cond_f6
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 198
    .end local v11    # "measuredWidth":F
    .restart local v1    # "measuredWidth":F
    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 200
    :goto_fe
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInVerticalFill()Z

    move-result v4

    if-eqz v4, :cond_106

    .line 201
    move v4, v14

    .end local v12    # "measuredHeight":F
    .restart local v4    # "measuredHeight":F
    goto :goto_124

    .line 202
    .end local v4    # "measuredHeight":F
    .restart local v12    # "measuredHeight":F
    :cond_106
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 203
    nop

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    invoke-static {v12, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .end local v12    # "measuredHeight":F
    .restart local v4    # "measuredHeight":F
    goto :goto_124

    .line 206
    .end local v4    # "measuredHeight":F
    .restart local v12    # "measuredHeight":F
    :cond_11c
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 207
    .end local v12    # "measuredHeight":F
    .restart local v4    # "measuredHeight":F
    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 209
    :goto_124
    cmpl-float v5, v8, v13

    if-nez v5, :cond_12b

    .line 210
    move v1, v13

    move v11, v1

    goto :goto_12c

    .line 209
    :cond_12b
    move v11, v1

    .line 212
    .end local v1    # "measuredWidth":F
    .restart local v11    # "measuredWidth":F
    :goto_12c
    cmpl-float v1, v9, v14

    if-nez v1, :cond_133

    .line 213
    move v4, v14

    move v12, v4

    goto :goto_134

    .line 212
    :cond_133
    move v12, v4

    .line 216
    .end local v4    # "measuredHeight":F
    .restart local v12    # "measuredHeight":F
    :goto_134
    if-nez v17, :cond_1fe

    .line 217
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalIntrinsicDimension()Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 218
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 219
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 220
    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    move v1, v2

    .end local v2    # "insetMaxWidth":F
    .local v1, "insetMaxWidth":F
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move v10, v3

    move v3, v14

    move v14, v1

    move-object/from16 v1, p1

    .end local v1    # "insetMaxWidth":F
    .local v3, "maxHeight":F
    .local v10, "insetMaxHeight":F
    .local v14, "insetMaxWidth":F
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 228
    move/from16 v18, v3

    .end local v3    # "maxHeight":F
    .local v18, "maxHeight":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v3

    .line 229
    .local v3, "w":F
    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalScroll()Z

    move-result v1

    if-eqz v1, :cond_175

    .line 230
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v5, v12

    .end local v12    # "measuredHeight":F
    .local v5, "measuredHeight":F
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 231
    move v7, v3

    .end local v3    # "w":F
    .end local v5    # "measuredHeight":F
    .local v7, "w":F
    .restart local v12    # "measuredHeight":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v11, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setHorizontalScrollDimension(FF)V

    goto :goto_187

    .line 233
    .end local v7    # "w":F
    .restart local v3    # "w":F
    :cond_175
    move v7, v3

    .line 236
    .end local v3    # "w":F
    .restart local v7    # "w":F
    invoke-static {v11, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 238
    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 233
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 241
    .end local v7    # "w":F
    :goto_187
    move-object/from16 v6, p6

    move v7, v13

    goto/16 :goto_203

    .end local v10    # "insetMaxHeight":F
    .end local v18    # "maxHeight":F
    .restart local v2    # "insetMaxWidth":F
    .local v3, "insetMaxHeight":F
    .local v14, "maxHeight":F
    :cond_18c
    move v10, v3

    move/from16 v18, v14

    move v14, v2

    .end local v2    # "insetMaxWidth":F
    .end local v3    # "insetMaxHeight":F
    .restart local v10    # "insetMaxHeight":F
    .local v14, "insetMaxWidth":F
    .restart local v18    # "maxHeight":F
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalIntrinsicDimension()Z

    move-result v1

    if-eqz v1, :cond_1e3

    .line 242
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 243
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 244
    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v2, v13

    .end local v13    # "maxWidth":F
    .local v2, "maxWidth":F
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 246
    move v7, v2

    .end local v2    # "maxWidth":F
    .local v7, "maxWidth":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v5

    .line 247
    .local v5, "h":F
    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_1ce

    .line 248
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v3, v11

    .end local v11    # "measuredWidth":F
    .local v3, "measuredWidth":F
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 249
    move v13, v5

    .end local v3    # "measuredWidth":F
    .end local v5    # "h":F
    .restart local v11    # "measuredWidth":F
    .local v13, "h":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v12, v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setVerticalScrollDimension(FF)V

    goto :goto_1e0

    .line 251
    .end local v13    # "h":F
    .restart local v5    # "h":F
    :cond_1ce
    move v13, v5

    .line 254
    .end local v5    # "h":F
    .restart local v13    # "h":F
    invoke-static {v11, v14}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 256
    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 251
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 259
    .end local v13    # "h":F
    :goto_1e0
    move-object/from16 v6, p6

    goto :goto_203

    .line 260
    .end local v7    # "maxWidth":F
    .local v13, "maxWidth":F
    :cond_1e3
    move v7, v13

    .end local v13    # "maxWidth":F
    .restart local v7    # "maxWidth":F
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v1, v11, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float v3, v1, v2

    .line 261
    .local v3, "maxChildWidth":F
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v1, v12, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v5, v1, v2

    .line 262
    .local v5, "maxChildHeight":F
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_203

    .line 216
    .end local v5    # "maxChildHeight":F
    .end local v7    # "maxWidth":F
    .end local v10    # "insetMaxHeight":F
    .end local v18    # "maxHeight":F
    .local v2, "insetMaxWidth":F
    .local v3, "insetMaxHeight":F
    .restart local v13    # "maxWidth":F
    .local v14, "maxHeight":F
    :cond_1fe
    move v10, v3

    move v7, v13

    move/from16 v18, v14

    move v14, v2

    .line 266
    .end local v2    # "insetMaxWidth":F
    .end local v3    # "insetMaxHeight":F
    .end local v13    # "maxWidth":F
    .restart local v7    # "maxWidth":F
    .restart local v10    # "insetMaxHeight":F
    .local v14, "insetMaxWidth":F
    .restart local v18    # "maxHeight":F
    :goto_203
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-eqz v1, :cond_21a

    .line 267
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 268
    .local v1, "cm":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 269
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 270
    invoke-virtual {v1, v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 271
    invoke-virtual {v1, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 274
    .end local v1    # "cm":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :cond_21a
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 275
    .local v1, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v1, v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 276
    invoke-virtual {v1, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 277
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 279
    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 280
    return-void
.end method

.method private blacklist measure_v0_4_1(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 27
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 290
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    move/from16 v2, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 291
    .local v1, "measuredWidth":F
    nop

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    move/from16 v4, p5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 294
    .local v3, "measuredHeight":F
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v5

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    add-float/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float v2, v5, v6

    .line 297
    .end local p3    # "maxWidth":F
    .local v2, "maxWidth":F
    :cond_36
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isIntrinsicMin()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v5

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    add-float/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float v4, v5, v6

    .line 300
    .end local p5    # "maxHeight":F
    .local v4, "maxHeight":F
    :cond_4d
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getWidthIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    move-result-object v8

    .line 301
    .local v8, "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    if-eqz v8, :cond_6a

    .line 302
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMin()F

    move-result v5

    move/from16 v6, p2

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 303
    .end local p2    # "minWidth":F
    .local v5, "minWidth":F
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMax()F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v9, v5

    move v10, v2

    goto :goto_6e

    .line 301
    .end local v5    # "minWidth":F
    .restart local p2    # "minWidth":F
    :cond_6a
    move/from16 v6, p2

    move v9, v6

    move v10, v2

    .line 305
    .end local v2    # "maxWidth":F
    .end local p2    # "minWidth":F
    .local v9, "minWidth":F
    .local v10, "maxWidth":F
    :goto_6e
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getHeightIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    move-result-object v11

    .line 306
    .local v11, "heightIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;
    if-eqz v11, :cond_8a

    .line 307
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMin()F

    move-result v2

    move/from16 v5, p4

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 308
    .end local p4    # "minHeight":F
    .local v2, "minHeight":F
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMax()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v12, v2

    goto :goto_8d

    .line 306
    .end local v2    # "minHeight":F
    .restart local p4    # "minHeight":F
    :cond_8a
    move/from16 v5, p4

    move v12, v5

    .line 311
    .end local p4    # "minHeight":F
    .local v12, "minHeight":F
    :goto_8d
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v2, v10, v2

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float v13, v2, v5

    .line 312
    .local v13, "insetMaxWidth":F
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v2, v4, v2

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v14, v2, v5

    .line 314
    .local v14, "insetMaxHeight":F
    const/4 v2, 0x0

    .line 315
    .local v2, "hasHorizontalWrap":Z
    const/4 v5, 0x0

    .line 317
    .local v5, "hasVerticalWrap":Z
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInHorizontalFill()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v15, 0x1

    if-eqz v6, :cond_ab

    .line 318
    move v1, v10

    move/from16 v16, v2

    goto :goto_e2

    .line 319
    :cond_ab
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 320
    nop

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move/from16 v16, v2

    goto :goto_e2

    .line 323
    :cond_c3
    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 324
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 325
    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v6

    if-nez v6, :cond_de

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isIntrinsicMin()Z

    move-result v6

    if-eqz v6, :cond_dc

    goto :goto_de

    :cond_dc
    move v6, v7

    goto :goto_df

    :cond_de
    :goto_de
    move v6, v15

    :goto_df
    move v2, v6

    move/from16 v16, v2

    .line 328
    .end local v2    # "hasHorizontalWrap":Z
    .local v16, "hasHorizontalWrap":Z
    :goto_e2
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInVerticalFill()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 329
    move v2, v4

    move v15, v5

    .end local v3    # "measuredHeight":F
    .local v2, "measuredHeight":F
    goto :goto_11d

    .line 330
    .end local v2    # "measuredHeight":F
    .restart local v3    # "measuredHeight":F
    :cond_eb
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v2

    if-eqz v2, :cond_102

    .line 331
    nop

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v15, v5

    .end local v3    # "measuredHeight":F
    .restart local v2    # "measuredHeight":F
    goto :goto_11d

    .line 334
    .end local v2    # "measuredHeight":F
    .restart local v3    # "measuredHeight":F
    :cond_102
    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 335
    .end local v3    # "measuredHeight":F
    .restart local v2    # "measuredHeight":F
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 336
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v3

    if-nez v3, :cond_11a

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isIntrinsicMin()Z

    move-result v3

    if-eqz v3, :cond_11b

    :cond_11a
    move v7, v15

    :cond_11b
    move v5, v7

    move v15, v5

    .line 339
    .end local v5    # "hasVerticalWrap":Z
    .local v15, "hasVerticalWrap":Z
    :goto_11d
    cmpl-float v3, v9, v10

    if-nez v3, :cond_124

    .line 340
    move v1, v10

    move v3, v1

    goto :goto_125

    .line 339
    :cond_124
    move v3, v1

    .line 342
    .end local v1    # "measuredWidth":F
    .local v3, "measuredWidth":F
    :goto_125
    cmpl-float v1, v12, v4

    if-nez v1, :cond_12d

    .line 343
    move v2, v4

    move/from16 v17, v2

    goto :goto_12f

    .line 342
    :cond_12d
    move/from16 v17, v2

    .line 346
    .end local v2    # "measuredHeight":F
    .local v17, "measuredHeight":F
    :goto_12f
    const/4 v1, 0x0

    if-nez v16, :cond_221

    if-eqz v15, :cond_13f

    move/from16 v18, v4

    move-object/from16 p3, v8

    move/from16 v19, v10

    move/from16 v10, v17

    move v8, v3

    goto/16 :goto_22a

    .line 373
    :cond_13f
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalIntrinsicDimension()Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 374
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 375
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 376
    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v6, v3

    move v3, v4

    .end local v4    # "maxHeight":F
    .local v3, "maxHeight":F
    .local v6, "measuredWidth":F
    const/4 v4, 0x0

    move-object/from16 p3, v8

    move/from16 p2, v10

    move v10, v1

    move v8, v6

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    .end local v6    # "measuredWidth":F
    .end local v10    # "maxWidth":F
    .local v8, "measuredWidth":F
    .local p2, "maxWidth":F
    .local p3, "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 384
    move/from16 v18, v3

    .end local v3    # "maxHeight":F
    .local v18, "maxHeight":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v3

    .line 385
    .local v3, "w":F
    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalScroll()Z

    move-result v1

    if-eqz v1, :cond_186

    .line 386
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move/from16 v5, v17

    .end local v17    # "measuredHeight":F
    .local v5, "measuredHeight":F
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 387
    move v1, v3

    move v7, v5

    .end local v3    # "w":F
    .end local v5    # "measuredHeight":F
    .local v1, "w":F
    .local v7, "measuredHeight":F
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2, v8, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setHorizontalScrollDimension(FF)V

    goto :goto_19c

    .line 389
    .end local v1    # "w":F
    .end local v7    # "measuredHeight":F
    .restart local v3    # "w":F
    .restart local v17    # "measuredHeight":F
    :cond_186
    move v1, v3

    move/from16 v7, v17

    .line 392
    .end local v3    # "w":F
    .end local v17    # "measuredHeight":F
    .restart local v1    # "w":F
    .restart local v7    # "measuredHeight":F
    invoke-static {v8, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 394
    invoke-static {v7, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 389
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v6, p6

    move/from16 v17, v1

    move-object/from16 v1, p1

    .end local v1    # "w":F
    .local v17, "w":F
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 397
    .end local v17    # "w":F
    :goto_19c
    move/from16 v19, p2

    move v10, v7

    goto/16 :goto_21a

    .end local v7    # "measuredHeight":F
    .end local v18    # "maxHeight":F
    .end local p2    # "maxWidth":F
    .end local p3    # "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    .local v3, "measuredWidth":F
    .restart local v4    # "maxHeight":F
    .local v8, "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    .restart local v10    # "maxWidth":F
    .local v17, "measuredHeight":F
    :cond_1a1
    move/from16 v18, v4

    move-object/from16 p3, v8

    move/from16 p2, v10

    move/from16 v7, v17

    move v10, v1

    move v8, v3

    .end local v3    # "measuredWidth":F
    .end local v4    # "maxHeight":F
    .end local v10    # "maxWidth":F
    .end local v17    # "measuredHeight":F
    .restart local v7    # "measuredHeight":F
    .local v8, "measuredWidth":F
    .restart local v18    # "maxHeight":F
    .restart local p2    # "maxWidth":F
    .restart local p3    # "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalIntrinsicDimension()Z

    move-result v1

    if-eqz v1, :cond_1ff

    .line 398
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 399
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 400
    const/4 v5, 0x0

    move v2, v7

    .end local v7    # "measuredHeight":F
    .restart local v2    # "measuredHeight":F
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v10, v2

    move/from16 v2, p2

    .end local p2    # "maxWidth":F
    .local v2, "maxWidth":F
    .local v10, "measuredHeight":F
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 402
    move/from16 v19, v2

    .end local v2    # "maxWidth":F
    .local v19, "maxWidth":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v5

    .line 403
    .local v5, "h":F
    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_1ec

    .line 404
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v3, v8

    .end local v8    # "measuredWidth":F
    .restart local v3    # "measuredWidth":F
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 405
    move v7, v5

    .end local v3    # "measuredWidth":F
    .end local v5    # "h":F
    .local v7, "h":F
    .restart local v8    # "measuredWidth":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1, v10, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->setVerticalScrollDimension(FF)V

    goto :goto_1fe

    .line 407
    .end local v7    # "h":F
    .restart local v5    # "h":F
    :cond_1ec
    move v7, v5

    .line 410
    .end local v5    # "h":F
    .restart local v7    # "h":F
    invoke-static {v8, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 412
    invoke-static {v10, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 407
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 415
    .end local v7    # "h":F
    :goto_1fe
    goto :goto_21a

    .line 416
    .end local v10    # "measuredHeight":F
    .end local v19    # "maxWidth":F
    .local v7, "measuredHeight":F
    .restart local p2    # "maxWidth":F
    :cond_1ff
    move/from16 v19, p2

    move v10, v7

    .end local v7    # "measuredHeight":F
    .end local p2    # "maxWidth":F
    .restart local v10    # "measuredHeight":F
    .restart local v19    # "maxWidth":F
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    sub-float v3, v8, v1

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    sub-float/2addr v3, v1

    .line 417
    .local v3, "maxChildWidth":F
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    sub-float v1, v10, v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    sub-float v5, v1, v2

    .line 418
    .local v5, "maxChildHeight":F
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 422
    .end local v3    # "maxChildWidth":F
    .end local v5    # "maxChildHeight":F
    :goto_21a
    move-object/from16 v6, p6

    move v4, v8

    move v2, v13

    move v3, v14

    goto/16 :goto_288

    .line 346
    .end local v18    # "maxHeight":F
    .end local v19    # "maxWidth":F
    .end local p3    # "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    .local v3, "measuredWidth":F
    .restart local v4    # "maxHeight":F
    .local v8, "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    .local v10, "maxWidth":F
    .restart local v17    # "measuredHeight":F
    :cond_221
    move/from16 v18, v4

    move-object/from16 p3, v8

    move/from16 v19, v10

    move/from16 v10, v17

    move v8, v3

    .line 347
    .end local v3    # "measuredWidth":F
    .end local v4    # "maxHeight":F
    .end local v17    # "measuredHeight":F
    .local v8, "measuredWidth":F
    .local v10, "measuredHeight":F
    .restart local v18    # "maxHeight":F
    .restart local v19    # "maxWidth":F
    .restart local p3    # "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    :goto_22a
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 348
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 349
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    .line 353
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isWrap()Z

    move-result v4

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    .line 354
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isWrap()Z

    move-result v5

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 349
    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move v2, v13

    move v3, v14

    .end local v13    # "insetMaxWidth":F
    .end local v14    # "insetMaxHeight":F
    .local v2, "insetMaxWidth":F
    .local v3, "insetMaxHeight":F
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 357
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getVisibility()I

    move-result v1

    .line 358
    .local v1, "selfVisibilityAfterMeasure":I
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->hasOverride(I)Z

    move-result v4

    if-eqz v4, :cond_260

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    if-eq v4, v1, :cond_260

    .line 360
    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    .line 362
    :cond_260
    if-eqz v16, :cond_273

    .line 363
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v4

    .line 364
    .end local v8    # "measuredWidth":F
    .local v4, "measuredWidth":F
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingLeft:F

    iget v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingRight:F

    add-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 365
    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_274

    .line 362
    .end local v4    # "measuredWidth":F
    .restart local v8    # "measuredWidth":F
    :cond_273
    move v4, v8

    .line 367
    .end local v8    # "measuredWidth":F
    .restart local v4    # "measuredWidth":F
    :goto_274
    if-eqz v15, :cond_287

    .line 368
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mCachedWrapSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v5

    .line 369
    .end local v10    # "measuredHeight":F
    .local v5, "measuredHeight":F
    iget v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingTop:F

    iget v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mPaddingBottom:F

    add-float/2addr v7, v8

    add-float/2addr v5, v7

    .line 370
    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v10, v5

    .line 372
    .end local v1    # "selfVisibilityAfterMeasure":I
    .end local v5    # "measuredHeight":F
    .restart local v10    # "measuredHeight":F
    :cond_287
    nop

    .line 422
    :goto_288
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-eqz v1, :cond_29f

    .line 423
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 424
    .local v1, "cm":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 425
    invoke-virtual {v1, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 426
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 427
    invoke-virtual {v1, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 430
    .end local v1    # "cm":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :cond_29f
    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 431
    .end local v4    # "measuredWidth":F
    .local v1, "measuredWidth":F
    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 433
    .end local v10    # "measuredHeight":F
    .local v4, "measuredHeight":F
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v5

    .line 434
    .local v5, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v5, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 435
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 436
    iget v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mScheduledVisibility:I

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 438
    move-object/from16 v7, p1

    invoke-virtual {v0, v7, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 439
    return-void
.end method


# virtual methods
.method public blacklist applyVisibility(FFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)Z
    .registers 5
    .param p1, "selfWidth"    # F
    .param p2, "selfHeight"    # F
    .param p3, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist childrenHaveHorizontalWeights()Z
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 108
    .local v1, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    if-eqz v2, :cond_2b

    .line 109
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    .line 110
    .local v2, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 111
    const/4 v0, 0x1

    return v0

    .line 114
    .end local v1    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v2    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    :cond_2b
    goto :goto_6

    .line 115
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist childrenHaveVerticalWeights()Z
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 120
    .local v1, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    if-eqz v2, :cond_2b

    .line 121
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    .line 122
    .local v2, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 123
    const/4 v0, 0x1

    return v0

    .line 126
    .end local v1    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v2    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    :cond_2b
    goto :goto_6

    .line 127
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 104
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

    .line 75
    return-void
.end method

.method protected blacklist hasHorizontalIntrinsicDimension()Z
    .registers 2

    .line 463
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasHorizontalScroll()Z

    move-result v0

    return v0
.end method

.method protected blacklist hasVerticalIntrinsicDimension()Z
    .registers 2

    .line 467
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->hasVerticalScroll()Z

    move-result v0

    return v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 63
    return-void
.end method

.method public blacklist isInHorizontalFill()Z
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->isFill()Z

    move-result v0

    return v0
.end method

.method public blacklist isInVerticalFill()Z
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->isFill()Z

    move-result v0

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 477
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 478
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 480
    .local v0, "self":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    invoke-virtual {v1, p1, p0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 481
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 482
    .local v2, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 483
    .end local v2    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_1a

    .line 484
    :cond_2a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mNeedsMeasure:Z

    .line 485
    return-void
.end method

.method public blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 451
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->supportsVersion(III)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 452
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->measure_v0_4_1(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_10

    .line 454
    :cond_d
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->measure_v0_4_0(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 456
    :goto_10
    return-void
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 80
    .local v0, "height":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 81
    .local v2, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 82
    .end local v2    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_a

    .line 83
    :cond_1f
    return v0
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 89
    .local v0, "width":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 90
    .local v2, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 91
    .end local v2    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_a

    .line 92
    :cond_1f
    return v0
.end method

.method public blacklist selfLayout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 494
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 495
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 497
    .local v0, "self":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    invoke-virtual {v1, p1, p0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 498
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mNeedsMeasure:Z

    .line 499
    return-void
.end method
