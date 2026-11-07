.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBase2.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Maker;
    }
.end annotation


# instance fields
.field protected blacklist mName:Ljava/lang/String;

.field blacklist mV1:F

.field blacklist mV2:F

.field blacklist mValue1:F

.field blacklist mValue2:F


# direct methods
.method public constructor blacklist <init>(FF)V
    .registers 4
    .param p1, "v1"    # F
    .param p2, "v2"    # F

    .line 41
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 35
    const-string v0, "DrawRectBase"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mName:Ljava/lang/String;

    .line 42
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue1:F

    .line 43
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue2:F

    .line 44
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mV1:F

    .line 45
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mV2:F

    .line 46
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 6
    .param p0, "maker"    # Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Maker;
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Maker;",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p2, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v0

    .line 91
    .local v0, "v1":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 93
    .local v1, "v2":F
    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Maker;->create(FF)Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;

    move-result-object v2

    .line 94
    .local v2, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method protected static blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V
    .registers 4
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "opCode"    # I
    .param p2, "x1"    # F
    .param p3, "y1"    # F

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 120
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 121
    return-void
.end method


# virtual methods
.method public blacklist construct(FF)Lcom/android/internal/widget/remotecompose/core/Operation;
    .registers 4
    .param p1, "x1"    # F
    .param p2, "y1"    # F

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 57
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 59
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 62
    :cond_22
    return-void
.end method

.method protected blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .registers 7
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .param p2, "v1Name"    # Ljava/lang/String;
    .param p3, "v2Name"    # Ljava/lang/String;

    .line 124
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mV1:F

    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue2:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mV2:F

    invoke-interface {v0, p3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mV1:F

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mV2:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 50
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue1:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mV1:F

    .line 51
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mValue2:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mV2:F

    .line 52
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 66
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mV1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->mV2:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 67
    return-void
.end method

.method protected abstract blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
.end method
