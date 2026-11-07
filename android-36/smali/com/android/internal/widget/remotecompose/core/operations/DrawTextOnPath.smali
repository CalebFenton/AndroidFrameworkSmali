.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawTextOnPath.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawTextOnPath"

.field private static final blacklist OP_CODE:I = 0x35


# instance fields
.field blacklist mHOffset:F

.field blacklist mOutHOffset:F

.field blacklist mOutVOffset:F

.field blacklist mPathId:I

.field public blacklist mTextId:I

.field blacklist mVOffset:F


# direct methods
.method public constructor blacklist <init>(IIFF)V
    .registers 5
    .param p1, "textId"    # I
    .param p2, "pathId"    # I
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 46
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    .line 47
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    .line 48
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutHOffset:F

    .line 49
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutVOffset:F

    .line 50
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "textId"    # I
    .param p2, "pathId"    # I
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F

    .line 133
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 135
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 136
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 137
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 138
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 146
    const/16 v0, 0x35

    const-string v1, "DrawTextOnPath"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 147
    const-string v1, "Draw text along path object"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    const-string/jumbo v2, "textId"

    const-string v3, "id of the text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 149
    const-string/jumbo v2, "pathId"

    const-string v3, "id of the path"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 150
    const/4 v1, 0x1

    const-string/jumbo v2, "xOffset"

    const-string/jumbo v3, "x Shift of the text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 151
    const-string/jumbo v2, "yOffset"

    const-string/jumbo v3, "y Shift of the text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 152
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 119
    const/16 v0, 0x35

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 110
    const-string v0, "DrawTextOnPath"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 7
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

    .line 95
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 96
    .local v0, "textId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 97
    .local v1, "pathId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 98
    .local v2, "vOffset":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 99
    .local v3, "hOffset":F
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;-><init>(IIFF)V

    .line 100
    .local v4, "op":Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 156
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutHOffset:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutVOffset:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextOnPath(IIFF)V

    .line 157
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 62
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 63
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 65
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 66
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 68
    :cond_22
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 161
    nop

    .line 162
    const-string v0, "DrawTextOnPath"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "pathId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "textId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutVOffset:F

    .line 165
    const-string/jumbo v3, "vOffset"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutHOffset:F

    .line 166
    const-string v3, "hOffset"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 167
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawTextOnPath ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutHOffset:F

    .line 83
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutVOffset:F

    .line 85
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 54
    nop

    .line 55
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_16

    :cond_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    :goto_16
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutHOffset:F

    .line 56
    nop

    .line 57
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2e

    :cond_2c
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    :goto_2e
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mOutVOffset:F

    .line 58
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 72
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mTextId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mPathId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mHOffset:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->mVOffset:F

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 73
    return-void
.end method
