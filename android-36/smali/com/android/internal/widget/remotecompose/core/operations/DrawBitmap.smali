.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBitmap.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawBitmap"

.field private static final blacklist OP_CODE:I = 0x2c


# instance fields
.field blacklist mBottom:F

.field blacklist mDescriptionId:I

.field blacklist mId:I

.field blacklist mLeft:F

.field blacklist mOutputBottom:F

.field blacklist mOutputLeft:F

.field blacklist mOutputRight:F

.field blacklist mOutputTop:F

.field blacklist mRight:F

.field blacklist mTop:F


# direct methods
.method public constructor blacklist <init>(IFFFFI)V
    .registers 8
    .param p1, "imageId"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "descriptionId"    # I

    .line 50
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mDescriptionId:I

    .line 51
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    .line 52
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    .line 53
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    .line 54
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    .line 55
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mId:I

    .line 56
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mDescriptionId:I

    .line 57
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V
    .registers 8
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "descriptionId"    # I

    .line 160
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 163
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 164
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 165
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 166
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 167
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 175
    const/16 v0, 0x2c

    const-string v1, "DrawBitmap"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 176
    const-string v1, "Draw a bitmap"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 177
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of float"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 178
    const/4 v2, 0x1

    const-string v3, "left"

    const-string v4, "The left side of the image"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 179
    const-string/jumbo v3, "top"

    const-string v4, "The top of the image"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 180
    const-string/jumbo v3, "right"

    const-string v4, "The right side of the image"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 181
    const-string v3, "bottom"

    const-string v4, "The bottom of the image"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 182
    const-string v2, "descriptionId"

    const-string v3, "id of string"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 183
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 138
    const/16 v0, 0x2c

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 129
    const-string v0, "DrawBitmap"

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

    .line 111
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 112
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 113
    .local v2, "sLeft":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 114
    .local v3, "srcTop":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 115
    .local v4, "srcRight":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 116
    .local v5, "srcBottom":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    .line 118
    .local v6, "descriptionId":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;-><init>(IFFFFI)V

    .line 119
    .local v0, "op":Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 187
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputLeft:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputTop:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputRight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputBottom:F

    move-object v0, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v0, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IFFFF)V

    .line 188
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 69
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 70
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 72
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 73
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 75
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 76
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 78
    :cond_33
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 79
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 81
    :cond_44
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 192
    nop

    .line 193
    const-string v0, "DrawBitmap"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mId:I

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imageId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mDescriptionId:I

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contentDescriptionId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputLeft:F

    .line 196
    const-string v3, "left"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputTop:F

    .line 197
    const-string/jumbo v3, "top"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputRight:F

    .line 198
    const-string/jumbo v3, "right"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputBottom:F

    .line 199
    const-string v3, "bottom"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 200
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawBitmap (desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mDescriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 61
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputLeft:F

    .line 62
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputTop:F

    .line 63
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_43

    :cond_41
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    :goto_43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputRight:F

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_5a

    :cond_58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    :goto_5a
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mOutputBottom:F

    .line 65
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 9
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 85
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mLeft:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mTop:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mRight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mBottom:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->mDescriptionId:I

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 86
    return-void
.end method
