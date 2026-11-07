.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;
.source "BackgroundModifierOperation.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "BackgroundModifierOperation"

.field private static final blacklist OP_CODE:I = 0x37


# instance fields
.field blacklist mA:F

.field blacklist mB:F

.field blacklist mG:F

.field blacklist mHeight:F

.field public blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field blacklist mR:F

.field blacklist mShapeType:I

.field blacklist mWidth:F

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(FFFFFFFFI)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "r"    # F
    .param p6, "g"    # F
    .param p7, "b"    # F
    .param p8, "a"    # F
    .param p9, "shapeType"    # I

    .line 61
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mShapeType:I

    .line 50
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 62
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mX:F

    .line 63
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mY:F

    .line 64
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mWidth:F

    .line 65
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mHeight:F

    .line 66
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mR:F

    .line 67
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mG:F

    .line 68
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mB:F

    .line 69
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mA:F

    .line 70
    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mShapeType:I

    .line 71
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFI)V
    .registers 11
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "r"    # F
    .param p6, "g"    # F
    .param p7, "b"    # F
    .param p8, "a"    # F
    .param p9, "shapeType"    # I

    .line 160
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 163
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 164
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 165
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 166
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 167
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 168
    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 170
    invoke-virtual {p0, p9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 171
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 214
    const/16 v0, 0x37

    const-string v1, "BackgroundModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 215
    const-string v1, "define the Background Modifier"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 216
    const/4 v1, 0x1

    const-string/jumbo v2, "x"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 217
    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 218
    const-string/jumbo v2, "width"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 219
    const-string v2, "height"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 220
    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 221
    const-string v2, "g"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 222
    const-string v2, "b"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 223
    const-string v2, "a"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 224
    const-string/jumbo v2, "shapeType"

    const-string v3, "0 for RECTANGLE, 1 for CIRCLE"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 225
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 132
    const/16 v0, 0x37

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 123
    const-string v0, "BackgroundModifierOperation"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 12
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

    .line 180
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 181
    .local v1, "x":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 182
    .local v2, "y":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 183
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 184
    .local v4, "height":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 185
    .local v5, "r":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 186
    .local v6, "g":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    .line 187
    .local v7, "b":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    .line 189
    .local v8, "a":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    .line 190
    .local v9, "shapeType":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;-><init>(FFFFFFFFI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method


# virtual methods
.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 106
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mWidth:F

    .line 107
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mHeight:F

    .line 108
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 195
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStyle(I)V

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mR:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mG:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mB:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mA:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 200
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mShapeType:I

    if-nez v0, :cond_2d

    .line 201
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mWidth:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mHeight:F

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawRect(FFFF)V

    goto :goto_46

    .line 202
    :cond_2d
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mShapeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_46

    .line 203
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mHeight:F

    div-float/2addr v2, v1

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mHeight:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawCircle(FFF)V

    .line 205
    :cond_46
    :goto_46
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 206
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 11
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 230
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 231
    const-string v1, "BackgroundModifierOperation"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mX:F

    .line 232
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mY:F

    .line 233
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mWidth:F

    .line 234
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mHeight:F

    .line 235
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mA:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mR:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mG:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mB:F

    .line 236
    const-string v4, "color"

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FFFF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mShapeType:I

    .line 237
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ShapeType;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "shapeType"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 238
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BACKGROUND = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mHeight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] color ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mR:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mG:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mB:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mA:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] shape ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mShapeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackgroundModifierOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mHeight:F

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
    .registers 12
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 75
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mY:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mWidth:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mHeight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mR:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mG:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mB:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mA:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->mShapeType:I

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFI)V

    .line 76
    return-void
.end method
