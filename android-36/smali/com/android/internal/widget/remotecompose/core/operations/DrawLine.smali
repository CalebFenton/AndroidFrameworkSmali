.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
.source "DrawLine.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawLine"

.field private static final blacklist OP_CODE:I = 0x2f


# direct methods
.method public constructor blacklist <init>(FFFF)V
    .registers 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;-><init>(FFFF)V

    .line 99
    const-string v0, "DrawLine"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .registers 11
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 117
    const/16 v1, 0x2f

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .end local p1    # "x1":F
    .end local p2    # "y1":F
    .end local p3    # "x2":F
    .end local p4    # "y2":F
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v2, "x1":F
    .local v3, "y1":F
    .local v4, "x2":F
    .local v5, "y2":F
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V

    .line 118
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 72
    const/16 v0, 0x2f

    const-string v1, "DrawLine"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 73
    const-string v1, "Draw a line segment"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 74
    const/4 v1, 0x1

    const-string/jumbo v2, "startX"

    const-string v3, "The x-coordinate of the start point of the line"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 78
    const-string/jumbo v2, "startY"

    const-string v3, "The y-coordinate of the start point of the line"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 82
    const-string v2, "endX"

    const-string v3, "The x-coordinate of the end point of the line"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 86
    const-string v2, "endY"

    const-string v3, "The y-coordinate of the end point of the line"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 90
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 53
    const/16 v0, 0x2f

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 63
    const-string v0, "DrawLine"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 3
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

    .line 43
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine$$ExternalSyntheticLambda0;-><init>()V

    .line 44
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;
    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 104
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mX1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mY1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mX2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mY2:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawLine(FFFF)V

    .line 105
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 8
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 143
    const-string v4, "endX"

    const-string v5, "endY"

    const-string/jumbo v2, "startX"

    const-string/jumbo v3, "startY"

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "serializer":Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .local v1, "serializer":Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "DrawLine"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 144
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 12
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mX1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "x1":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mX1Value:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const-string v3, "]"

    const-string v4, " = "

    const-string v5, "["

    if-eqz v2, :cond_48

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mX1Value:F

    invoke-static {v6}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mX1:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mY1:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "y1":Ljava/lang/String;
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mY1Value:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mY1Value:F

    invoke-static {v7}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mY1:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    :cond_88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mX2:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "x2":Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mX2Value:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mX2Value:F

    invoke-static {v8}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mX2:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    :cond_c8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mY2:F

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "y2":Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mY2Value:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_108

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mY2Value:F

    invoke-static {v7}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->mY2:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrawLine("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p2, "v1"    # F
    .param p3, "v2"    # F
    .param p4, "v3"    # F
    .param p5, "v4"    # F

    .line 94
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 95
    return-void
.end method
