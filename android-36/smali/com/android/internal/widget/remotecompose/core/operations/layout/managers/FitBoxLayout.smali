.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "FitBoxLayout.java"


# static fields
.field public static final blacklist BOTTOM:I = 0x5

.field public static final blacklist CENTER:I = 0x2

.field public static final blacklist END:I = 0x3

.field public static final blacklist START:I = 0x1

.field public static final blacklist TOP:I = 0x4


# instance fields
.field blacklist mHorizontalPositioning:I

.field blacklist mVerticalPositioning:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFII)V
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

    .line 63
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 64
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
    iput p8, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mHorizontalPositioning:I

    .line 65
    iput p9, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mVerticalPositioning:I

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIII)V
    .registers 16
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "horizontalPositioning"    # I
    .param p5, "verticalPositioning"    # I

    .line 74
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v8, p4

    move v9, p5

    .end local p1    # "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local p2    # "componentId":I
    .end local p3    # "animationId":I
    .end local p4    # "horizontalPositioning":I
    .end local p5    # "verticalPositioning":I
    .local v1, "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v2, "componentId":I
    .local v3, "animationId":I
    .local v8, "horizontalPositioning":I
    .local v9, "verticalPositioning":I
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFII)V

    .line 84
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontalPositioning"    # I
    .param p4, "verticalPositioning"    # I

    .line 281
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 283
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 284
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 285
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 286
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 7
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 314
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 315
    const-string v1, "FitBox layout implementation.\n\nOnly display the first child component that fits in the available space"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 319
    const/16 v1, 0x96

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 320
    const-string v1, "Top"

    const-string v2, "layout-BoxLayout-start-top.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 321
    const-string v1, "Center"

    const-string v2, "layout-BoxLayout-center-center.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 322
    const-string v1, "Bottom"

    const-string v2, "layout-BoxLayout-end-bottom.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 323
    const/4 v1, 0x0

    const-string v2, "COMPONENT_ID"

    const-string/jumbo v3, "unique id for this component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 324
    const-string v2, "ANIMATION_ID"

    const-string v3, "id used to match components, for animation purposes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 328
    const-string v2, "HORIZONTAL_POSITIONING"

    const-string v3, "horizontal positioning value"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 329
    const-string v2, "START"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 330
    const-string v2, "CENTER"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 331
    const-string v4, "END"

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 332
    const-string v4, "VERTICAL_POSITIONING"

    const-string/jumbo v5, "vertical positioning value"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 333
    const-string v1, "TOP"

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 334
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 335
    const-string v1, "BOTTOM"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 336
    return-void
.end method

.method private blacklist getPositioningString(I)Ljava/lang/String;
    .registers 3
    .param p1, "pos"    # I

    .line 351
    packed-switch p1, :pswitch_data_16

    .line 363
    const-string v0, "NONE"

    return-object v0

    .line 361
    :pswitch_6
    const-string v0, "BOTTOM"

    return-object v0

    .line 359
    :pswitch_9
    const-string v0, "TOP"

    return-object v0

    .line 357
    :pswitch_c
    const-string v0, "END"

    return-object v0

    .line 355
    :pswitch_f
    const-string v0, "CENTER"

    return-object v0

    .line 353
    :pswitch_12
    const-string v0, "START"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 263
    const/16 v0, 0xb0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 254
    const-string v0, "BoxLayout"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 8
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

    .line 295
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 296
    .local v2, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 297
    .local v3, "animationId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 298
    .local v4, "horizontalPositioning":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 299
    .local v5, "verticalPositioning":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 19
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 170
    move-object/from16 v6, p6

    invoke-virtual {v6, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v7

    .line 171
    .local v7, "self":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    const/4 v0, 0x0

    .line 172
    .local v0, "found":Z
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v0

    .end local v0    # "found":Z
    .local v9, "found":Z
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 173
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v1, 0x0

    .line 174
    .local v1, "cw":F
    const/4 v2, 0x0

    .line 175
    .local v2, "ch":F
    instance-of v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v3, :cond_51

    .line 176
    move-object v3, v0

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 177
    .local v3, "lc":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v4

    .line 178
    .local v4, "widthModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;
    if-eqz v4, :cond_37

    .line 179
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getWidthIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    move-result-object v5

    .line 180
    .local v5, "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    if-eqz v5, :cond_37

    .line 181
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMin()F

    move-result v1

    .line 184
    .end local v5    # "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    :cond_37
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v5

    .line 185
    .local v5, "heightModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;
    if-eqz v5, :cond_4e

    .line 186
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getHeightIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    move-result-object v10

    .line 187
    .local v10, "heightIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;
    if-eqz v10, :cond_4e

    .line 188
    invoke-virtual {v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMin()F

    move-result v2

    move v10, v1

    move v11, v2

    goto :goto_53

    .line 192
    .end local v3    # "lc":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    .end local v4    # "widthModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;
    .end local v5    # "heightModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;
    .end local v10    # "heightIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;
    :cond_4e
    move v10, v1

    move v11, v2

    goto :goto_53

    .line 175
    :cond_51
    move v10, v1

    move v11, v2

    .line 192
    .end local v1    # "cw":F
    .end local v2    # "ch":F
    .local v10, "cw":F
    .local v11, "ch":F
    :goto_53
    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 196
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 200
    .local v1, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->clearVisibilityOverride()V

    .line 201
    if-nez v9, :cond_76

    cmpg-float v2, v10, p3

    if-gtz v2, :cond_76

    cmpg-float v2, v11, p5

    if-gtz v2, :cond_76

    .line 202
    const/4 v2, 0x1

    .line 203
    .end local v9    # "found":Z
    .local v2, "found":Z
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    move v9, v2

    goto :goto_7b

    .line 205
    .end local v2    # "found":Z
    .restart local v9    # "found":Z
    :cond_76
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 207
    .end local v0    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v1    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v10    # "cw":F
    .end local v11    # "ch":F
    :goto_7b
    goto :goto_e

    .line 208
    :cond_7c
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 21
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "horizontalWrap"    # Z
    .param p5, "verticalWrap"    # Z
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .param p7, "size"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 121
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    const/4 v0, 0x0

    .line 122
    .local v0, "found":Z
    invoke-virtual {v6, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v8

    .line 123
    .local v8, "self":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v0

    .end local v0    # "found":Z
    .local v10, "found":Z
    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 124
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v1, 0x0

    .line 125
    .local v1, "cw":F
    const/4 v2, 0x0

    .line 126
    .local v2, "ch":F
    instance-of v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v3, :cond_53

    .line 127
    move-object v3, v0

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 128
    .local v3, "lc":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v4

    .line 129
    .local v4, "widthModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;
    if-eqz v4, :cond_39

    .line 130
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getWidthIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    move-result-object v5

    .line 131
    .local v5, "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    if-eqz v5, :cond_39

    .line 132
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMin()F

    move-result v1

    .line 135
    .end local v5    # "widthIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    :cond_39
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v5

    .line 136
    .local v5, "heightModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;
    if-eqz v5, :cond_50

    .line 137
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getHeightIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    move-result-object v11

    .line 138
    .local v11, "heightIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;
    if-eqz v11, :cond_50

    .line 139
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMin()F

    move-result v2

    move v11, v1

    move v12, v2

    goto :goto_55

    .line 143
    .end local v3    # "lc":Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
    .end local v4    # "widthModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;
    .end local v5    # "heightModifier":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;
    .end local v11    # "heightIn":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;
    :cond_50
    move v11, v1

    move v12, v2

    goto :goto_55

    .line 126
    :cond_53
    move v11, v1

    move v12, v2

    .line 143
    .end local v1    # "cw":F
    .end local v2    # "ch":F
    .local v11, "cw":F
    .local v12, "ch":F
    :goto_55
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v3, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 144
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 145
    .local v1, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    if-nez v10, :cond_82

    cmpg-float v2, v11, p2

    if-gtz v2, :cond_82

    cmpg-float v2, v12, p3

    if-gtz v2, :cond_82

    .line 146
    const/4 v2, 0x1

    .line 147
    .end local v10    # "found":Z
    .local v2, "found":Z
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 148
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 149
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    move v10, v2

    goto :goto_87

    .line 151
    .end local v2    # "found":Z
    .restart local v10    # "found":Z
    :cond_82
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 153
    .end local v0    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v1    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v11    # "cw":F
    .end local v12    # "ch":F
    :goto_87
    goto :goto_10

    .line 154
    :cond_88
    if-nez v10, :cond_8f

    .line 155
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    goto :goto_93

    .line 157
    :cond_8f
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 159
    :goto_93
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 108
    const-string v0, "FITBOX"

    return-object v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 13
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 212
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 213
    .local v0, "selfMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mPaddingLeft:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mPaddingRight:F

    sub-float/2addr v1, v2

    .line 214
    .local v1, "selfWidth":F
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mPaddingTop:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mPaddingBottom:F

    sub-float/2addr v2, v3

    .line 215
    .local v2, "selfHeight":F
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->applyVisibility(FFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)Z

    .line 216
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 217
    .local v4, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {p2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v5

    .line 218
    .local v5, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    const/4 v6, 0x0

    .line 219
    .local v6, "tx":F
    const/4 v7, 0x0

    .line 220
    .local v7, "ty":F
    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mVerticalPositioning:I

    const/high16 v9, 0x40000000    # 2.0f

    packed-switch v8, :pswitch_data_6e

    :pswitch_3a
    goto :goto_4d

    .line 228
    :pswitch_3b
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v8

    sub-float v7, v2, v8

    goto :goto_4d

    .line 222
    :pswitch_42
    const/4 v7, 0x0

    .line 223
    goto :goto_4d

    .line 225
    :pswitch_44
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v8

    sub-float v8, v2, v8

    div-float v7, v8, v9

    .line 226
    nop

    .line 231
    :goto_4d
    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mHorizontalPositioning:I

    packed-switch v8, :pswitch_data_7a

    goto :goto_65

    .line 239
    :pswitch_53
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v8

    sub-float v6, v1, v8

    goto :goto_65

    .line 236
    :pswitch_5a
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v8

    sub-float v8, v1, v8

    div-float v6, v8, v9

    .line 237
    goto :goto_65

    .line 233
    :pswitch_63
    const/4 v6, 0x0

    .line 234
    nop

    .line 242
    :goto_65
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 243
    invoke-virtual {v5, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 244
    .end local v4    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v5    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v6    # "tx":F
    .end local v7    # "ty":F
    goto :goto_21

    .line 245
    :cond_6c
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_44
        :pswitch_3a
        :pswitch_42
        :pswitch_3b
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_63
        :pswitch_5a
        :pswitch_53
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 345
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 346
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mVerticalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verticalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 347
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mHorizontalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "horizontalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 348
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOX ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 340
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mComponentId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mAnimationId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mHorizontalPositioning:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mVerticalPositioning:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 341
    return-void
.end method
