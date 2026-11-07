.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "ImageLayout.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist DEBUG:Z = false


# instance fields
.field private blacklist mAlpha:F

.field private blacklist mBitmapId:I

.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field private blacklist mScaleType:I

.field blacklist mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIFFFFIF)V
    .registers 19
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "bitmapId"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "width"    # F
    .param p8, "height"    # F
    .param p9, "scaleType"    # I
    .param p10, "alpha"    # F

    .line 70
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    .line 47
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    .line 49
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    .line 50
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 71
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    .line 72
    move/from16 v1, p9

    and-int/lit16 v2, v1, 0xff

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaleType:I

    .line 73
    move/from16 v2, p10

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V
    .registers 18
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "bitmapId"    # I
    .param p5, "scaleType"    # I
    .param p6, "alpha"    # F

    .line 83
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIFFFFIF)V

    .line 84
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V
    .registers 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "bitmapId"    # I
    .param p4, "scaleType"    # I
    .param p5, "alpha"    # F

    .line 269
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 271
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 272
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 273
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 274
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 275
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 298
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 299
    const-string v1, "Image layout implementation.\n\n"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 300
    const/4 v1, 0x0

    const-string v2, "COMPONENT_ID"

    const-string/jumbo v3, "unique id for this component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 301
    const-string v2, "ANIMATION_ID"

    const-string v3, "id used to match components, for animation purposes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 305
    const-string v2, "BITMAP_ID"

    const-string v3, "bitmap id"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 306
    const-string v2, "SCALE_TYPE"

    const-string/jumbo v3, "scale type"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 307
    const/4 v1, 0x1

    const-string v2, "ALPHA"

    const-string v3, "alpha"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 308
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 249
    const/16 v0, 0xea

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 240
    const-string v0, "ImageLayout"

    return-object v0
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

    .line 284
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 285
    .local v2, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 286
    .local v3, "animationId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 287
    .local v4, "bitmapId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 288
    .local v5, "scaleType":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 289
    .local v6, "alpha":F
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 111
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 112
    .local v0, "modifiersWidth":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v1

    .line 113
    .local v1, "modifiersHeight":F
    invoke-virtual {p6, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 114
    .local v2, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 115
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 116
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "horizontalWrap"    # Z
    .param p5, "verticalWrap"    # Z
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .param p7, "size"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 96
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 97
    .local v0, "bitmapData":Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    if-eqz v0, :cond_1e

    .line 98
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 99
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 101
    :cond_1e
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 205
    const-string v0, "IMAGE_LAYOUT"

    return-object v0
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 28
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 121
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mX:F

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mY:F

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 122
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 123
    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingLeft:F

    .line 124
    .local v12, "tx":F
    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingTop:F

    .line 125
    .local v13, "ty":F
    invoke-virtual {v1, v12, v13}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 126
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mWidth:F

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingLeft:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingRight:F

    sub-float/2addr v2, v3

    .line 127
    .local v2, "w":F
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mHeight:F

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingTop:F

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingBottom:F

    sub-float/2addr v3, v4

    .line 128
    .local v3, "h":F
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 130
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 131
    .local v25, "bitmapData":Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    if-eqz v25, :cond_d1

    .line 132
    iget-object v14, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    .line 135
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 136
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaleType:I

    .line 132
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v23, v7

    .end local v2    # "w":F
    .end local v3    # "h":F
    .local v21, "w":F
    .local v22, "h":F
    invoke-virtual/range {v14 .. v24}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->setup(FFFFFFFFIF)V

    .line 144
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 145
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_92

    .line 146
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    .line 150
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v5

    .line 151
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v6

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstLeft:F

    float-to-int v7, v3

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstTop:F

    float-to-int v8, v3

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstRight:F

    float-to-int v9, v3

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstBottom:F

    float-to-int v10, v3

    .line 146
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, -0x1

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IIIIIIIIII)V

    goto :goto_cd

    .line 158
    :cond_92
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 159
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 160
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    .line 161
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 162
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    .line 166
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v5

    .line 167
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v6

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstLeft:F

    float-to-int v7, v3

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstTop:F

    float-to-int v8, v3

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstRight:F

    float-to-int v9, v3

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstBottom:F

    float-to-int v10, v3

    .line 162
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, -0x1

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IIIIIIIIII)V

    .line 173
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 175
    :goto_cd
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    goto :goto_d5

    .line 131
    .end local v21    # "w":F
    .end local v22    # "h":F
    .restart local v2    # "w":F
    .restart local v3    # "h":F
    :cond_d1
    move/from16 v21, v2

    move/from16 v22, v3

    .line 179
    .end local v2    # "w":F
    .end local v3    # "h":F
    .restart local v21    # "w":F
    .restart local v22    # "h":F
    :goto_d5
    neg-float v2, v12

    neg-float v3, v13

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 180
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 181
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 54
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 55
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 57
    :cond_a
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 231
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMAGE_LAYOUT ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 312
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAnimationId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaleType:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 313
    return-void
.end method
