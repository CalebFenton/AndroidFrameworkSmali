.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBase3.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;
    }
.end annotation


# instance fields
.field protected blacklist mName:Ljava/lang/String;

.field blacklist mV1:F

.field blacklist mV2:F

.field blacklist mV3:F

.field blacklist mValue1:F

.field blacklist mValue2:F

.field blacklist mValue3:F


# direct methods
.method public constructor blacklist <init>(FFF)V
    .registers 5
    .param p1, "v1"    # F
    .param p2, "v2"    # F
    .param p3, "v3"    # F

    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 36
    const-string v0, "DrawRectBase"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mName:Ljava/lang/String;

    .line 45
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    .line 46
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    .line 47
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    .line 49
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    .line 50
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    .line 51
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    .line 52
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 7
    .param p0, "maker"    # Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p2, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v0

    .line 107
    .local v0, "v1":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 108
    .local v1, "v2":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 109
    .local v2, "v3":F
    invoke-interface {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;->create(FFF)Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;

    move-result-object v3

    .line 110
    .local v3, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method


# virtual methods
.method public blacklist construct(FFF)Lcom/android/internal/widget/remotecompose/core/Operation;
    .registers 5
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 63
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 66
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 67
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 69
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 70
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 72
    :cond_33
    return-void
.end method

.method protected blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .registers 8
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .param p2, "v1Name"    # Ljava/lang/String;
    .param p3, "v2Name"    # Ljava/lang/String;
    .param p4, "v3Name"    # Ljava/lang/String;

    .line 128
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    .line 129
    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    .line 130
    invoke-interface {v0, p3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    .line 131
    invoke-interface {v0, p4, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 128
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    .line 90
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    .line 92
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    .line 94
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue1:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    .line 57
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue2:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    .line 58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_43

    :cond_41
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mValue3:F

    :goto_43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    .line 59
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 76
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV2:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->mV3:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    .line 77
    return-void
.end method

.method protected abstract blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V
.end method
