.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;
.source "BorderModifierOperation.java"


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "BorderModifierOperation"

.field private static final blacklist OP_CODE:I = 0x6b


# instance fields
.field blacklist mA:F

.field blacklist mB:F

.field blacklist mBorderWidth:F

.field blacklist mG:F

.field blacklist mHeight:F

.field blacklist mR:F

.field blacklist mRoundedCorner:F

.field blacklist mShapeType:I

.field blacklist mWidth:F

.field blacklist mX:F

.field blacklist mY:F

.field public blacklist paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;


# direct methods
.method public constructor blacklist <init>(FFFFFFFFFFI)V
    .registers 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "borderWidth"    # F
    .param p6, "roundedCorner"    # F
    .param p7, "r"    # F
    .param p8, "g"    # F
    .param p9, "b"    # F
    .param p10, "a"    # F
    .param p11, "shapeType"    # I

    .line 66
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mShapeType:I

    .line 53
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 67
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mX:F

    .line 68
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mY:F

    .line 69
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mWidth:F

    .line 70
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mHeight:F

    .line 71
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mBorderWidth:F

    .line 72
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mRoundedCorner:F

    .line 73
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mR:F

    .line 74
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mG:F

    .line 75
    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mB:F

    .line 76
    iput p10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mA:F

    .line 77
    iput p11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mShapeType:I

    .line 78
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFFFI)V
    .registers 13
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "borderWidth"    # F
    .param p6, "roundedCorner"    # F
    .param p7, "r"    # F
    .param p8, "g"    # F
    .param p9, "b"    # F
    .param p10, "a"    # F
    .param p11, "shapeType"    # I

    .line 210
    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 213
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 214
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 215
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 216
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 217
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 218
    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 219
    invoke-virtual {p0, p9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 220
    invoke-virtual {p0, p10}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 222
    invoke-virtual {p0, p11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 223
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 274
    const/16 v0, 0x6b

    const-string v1, "BorderModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 275
    const-string v1, "define the Border Modifier"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 276
    const/4 v1, 0x1

    const-string/jumbo v2, "x"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 277
    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 278
    const-string/jumbo v2, "width"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 279
    const-string v2, "height"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 280
    const-string v2, "borderWidth"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 281
    const-string/jumbo v2, "roundedCorner"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 282
    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 283
    const-string v2, "g"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 284
    const-string v2, "b"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 285
    const-string v2, "a"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 286
    const-string/jumbo v2, "shapeType"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 287
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 178
    const/16 v0, 0x6b

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 169
    const-string v0, "BorderModifierOperation"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 14
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

    .line 232
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 233
    .local v1, "x":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 234
    .local v2, "y":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 235
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 236
    .local v4, "height":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 237
    .local v5, "bw":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 238
    .local v6, "rc":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    .line 239
    .local v7, "r":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    .line 240
    .local v8, "g":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v9

    .line 241
    .local v9, "b":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v10

    .line 243
    .local v10, "a":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v11

    .line 244
    .local v11, "shapeType":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;-><init>(FFFFFFFFFFI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method


# virtual methods
.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 132
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mWidth:F

    .line 133
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mHeight:F

    .line 134
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 250
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mR:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mG:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mB:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mA:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mBorderWidth:F

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStrokeWidth(F)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStyle(I)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->paint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 256
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mShapeType:I

    if-nez v0, :cond_3e

    .line 257
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mWidth:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mHeight:F

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawRect(FFFF)V

    move-object v1, p1

    goto :goto_5e

    .line 259
    :cond_3e
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mRoundedCorner:F

    .line 260
    .local v0, "size":F
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mShapeType:I

    if-ne v2, v1, :cond_52

    .line 261
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mWidth:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mHeight:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    move v6, v0

    goto :goto_53

    .line 260
    :cond_52
    move v6, v0

    .line 263
    .end local v0    # "size":F
    .local v6, "size":F
    :goto_53
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mWidth:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mHeight:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v7, v6

    move-object v1, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v1, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawRoundRect(FFFFFF)V

    .line 265
    .end local v6    # "size":F
    :goto_5e
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 266
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 11
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 291
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 292
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 293
    const-string v1, "BorderModifierOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mX:F

    .line 294
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mY:F

    .line 295
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mWidth:F

    .line 296
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mHeight:F

    .line 297
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mBorderWidth:F

    .line 298
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "borderWidth"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mRoundedCorner:F

    .line 299
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "roundedCornerRadius"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mA:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mR:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mG:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mB:F

    .line 300
    const-string v4, "color"

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FFFF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mShapeType:I

    .line 301
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ShapeType;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "shapeType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 302
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BORDER = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mHeight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] color ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mR:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mG:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mB:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mA:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] border ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mBorderWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mRoundedCorner:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] shape ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mShapeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 110
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BorderModifierOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mHeight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") borderWidth("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mBorderWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") color("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mR:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mG:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mB:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mA:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 14
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 114
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mY:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mHeight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mBorderWidth:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mRoundedCorner:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mR:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mG:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mB:F

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mA:F

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->mShapeType:I

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFFFI)V

    .line 127
    return-void
.end method
