.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "BoxLayout.java"


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

    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 59
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
    iput p8, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mHorizontalPositioning:I

    .line 60
    iput p9, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mVerticalPositioning:I

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIII)V
    .registers 16
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "horizontalPositioning"    # I
    .param p5, "verticalPositioning"    # I

    .line 69
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
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFII)V

    .line 79
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontalPositioning"    # I
    .param p4, "verticalPositioning"    # I

    .line 208
    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 210
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 211
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 212
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 213
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 7
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 241
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 242
    const-string v1, "Box layout implementation.\n\nChild components are laid out independently from one another,\n and painted in their hierarchy order (first children drawnbefore the latter). Horizontal and Vertical positioningare supported."

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 248
    const/16 v1, 0x96

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 249
    const-string v1, "Top"

    const-string v2, "layout-BoxLayout-start-top.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 250
    const-string v1, "Center"

    const-string v2, "layout-BoxLayout-center-center.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 251
    const-string v1, "Bottom"

    const-string v2, "layout-BoxLayout-end-bottom.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 252
    const/4 v1, 0x0

    const-string v2, "COMPONENT_ID"

    const-string/jumbo v3, "unique id for this component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 253
    const-string v2, "ANIMATION_ID"

    const-string v3, "id used to match components, for animation purposes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 257
    const-string v2, "HORIZONTAL_POSITIONING"

    const-string v3, "horizontal positioning value"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 258
    const-string v2, "START"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 259
    const-string v2, "CENTER"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 260
    const-string v4, "END"

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 261
    const-string v4, "VERTICAL_POSITIONING"

    const-string/jumbo v5, "vertical positioning value"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 262
    const-string v1, "TOP"

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 264
    const-string v1, "BOTTOM"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 265
    return-void
.end method

.method private blacklist getPositioningString(I)Ljava/lang/String;
    .registers 3
    .param p1, "pos"    # I

    .line 280
    packed-switch p1, :pswitch_data_16

    .line 292
    const-string v0, "NONE"

    return-object v0

    .line 290
    :pswitch_6
    const-string v0, "BOTTOM"

    return-object v0

    .line 288
    :pswitch_9
    const-string v0, "TOP"

    return-object v0

    .line 286
    :pswitch_c
    const-string v0, "END"

    return-object v0

    .line 284
    :pswitch_f
    const-string v0, "CENTER"

    return-object v0

    .line 282
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

    .line 190
    const/16 v0, 0xca

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 181
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

    .line 222
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 223
    .local v2, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 224
    .local v3, "animationId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 225
    .local v4, "horizontalPositioning":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 226
    .local v5, "verticalPositioning":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 16
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 134
    .local v2, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local p2    # "minWidth":F
    .end local p3    # "maxWidth":F
    .end local p4    # "minHeight":F
    .end local p5    # "maxHeight":F
    .end local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .local v3, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v4, "minWidth":F
    .local v5, "maxWidth":F
    .local v6, "minHeight":F
    .local v7, "maxHeight":F
    .local v8, "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 135
    .end local v2    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_6

    .line 136
    .end local v3    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local v4    # "minWidth":F
    .end local v5    # "maxWidth":F
    .end local v6    # "minHeight":F
    .end local v7    # "maxHeight":F
    .end local v8    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local p2    # "minWidth":F
    .restart local p3    # "maxWidth":F
    .restart local p4    # "minHeight":F
    .restart local p5    # "maxHeight":F
    .restart local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    :cond_1d
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 18
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "horizontalWrap"    # Z
    .param p5, "verticalWrap"    # Z
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .param p7, "size"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 115
    move-object/from16 v0, p7

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 116
    .local v3, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    move v8, p3

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 117
    invoke-virtual {v9, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 118
    .local v2, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v4

    if-nez v4, :cond_47

    .line 119
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 120
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 122
    .end local v2    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v3    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_47
    goto :goto_8

    .line 123
    :cond_48
    move-object/from16 v9, p6

    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 103
    const-string v0, "BOX"

    return-object v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 13
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 140
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 141
    .local v0, "selfMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mPaddingLeft:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mPaddingRight:F

    sub-float/2addr v1, v2

    .line 142
    .local v1, "selfWidth":F
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mPaddingTop:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mPaddingBottom:F

    sub-float/2addr v2, v3

    .line 143
    .local v2, "selfHeight":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 144
    .local v4, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {p2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v5

    .line 145
    .local v5, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    const/4 v6, 0x0

    .line 146
    .local v6, "tx":F
    const/4 v7, 0x0

    .line 147
    .local v7, "ty":F
    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mVerticalPositioning:I

    const/high16 v9, 0x40000000    # 2.0f

    packed-switch v8, :pswitch_data_6a

    :pswitch_37
    goto :goto_4a

    .line 155
    :pswitch_38
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v8

    sub-float v7, v2, v8

    goto :goto_4a

    .line 149
    :pswitch_3f
    const/4 v7, 0x0

    .line 150
    goto :goto_4a

    .line 152
    :pswitch_41
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v8

    sub-float v8, v2, v8

    div-float v7, v8, v9

    .line 153
    nop

    .line 158
    :goto_4a
    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mHorizontalPositioning:I

    packed-switch v8, :pswitch_data_76

    goto :goto_62

    .line 166
    :pswitch_50
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v8

    sub-float v6, v1, v8

    goto :goto_62

    .line 163
    :pswitch_57
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v8

    sub-float v8, v1, v8

    div-float v6, v8, v9

    .line 164
    goto :goto_62

    .line 160
    :pswitch_60
    const/4 v6, 0x0

    .line 161
    nop

    .line 169
    :goto_62
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 170
    invoke-virtual {v5, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 171
    .end local v4    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v5    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v6    # "tx":F
    .end local v7    # "ty":F
    goto :goto_1e

    .line 172
    :cond_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_41
        :pswitch_37
        :pswitch_3f
        :pswitch_38
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_60
        :pswitch_57
        :pswitch_50
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 274
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 275
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mVerticalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verticalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 276
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mHorizontalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "horizontalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 277
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOX ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 269
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mComponentId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mAnimationId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mHorizontalPositioning:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mVerticalPositioning:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 270
    return-void
.end method
