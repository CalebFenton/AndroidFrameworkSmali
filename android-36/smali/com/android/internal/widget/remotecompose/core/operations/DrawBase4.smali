.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBase4.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;
    }
.end annotation


# instance fields
.field protected blacklist mName:Ljava/lang/String;

.field protected blacklist mX1:F

.field blacklist mX1Value:F

.field protected blacklist mX2:F

.field blacklist mX2Value:F

.field protected blacklist mY1:F

.field blacklist mY1Value:F

.field protected blacklist mY2:F

.field blacklist mY2Value:F


# direct methods
.method public constructor blacklist <init>(FFFF)V
    .registers 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 35
    const-string v0, "DrawRectBase"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mName:Ljava/lang/String;

    .line 46
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    .line 47
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    .line 48
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    .line 49
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    .line 51
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1:F

    .line 52
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1:F

    .line 53
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2:F

    .line 54
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2:F

    .line 55
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 8
    .param p0, "maker"    # Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p2, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v0

    .line 117
    .local v0, "v1":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 118
    .local v1, "v2":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 119
    .local v2, "v3":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 121
    .local v3, "v4":F
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;->create(FFFF)Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;

    move-result-object v4

    .line 122
    .local v4, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method protected static blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "opCode"    # I
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 153
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 154
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 155
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 156
    return-void
.end method


# virtual methods
.method public blacklist construct(FFFF)Lcom/android/internal/widget/remotecompose/core/Operation;
    .registers 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 67
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 68
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 70
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 71
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 73
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 74
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 76
    :cond_33
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 77
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 79
    :cond_44
    return-void
.end method

.method protected blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .registers 9
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .param p2, "x1Name"    # Ljava/lang/String;
    .param p3, "y1Name"    # Ljava/lang/String;
    .param p4, "x2Name"    # Ljava/lang/String;
    .param p5, "y2Name"    # Ljava/lang/String;

    .line 160
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1:F

    .line 161
    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1:F

    .line 162
    invoke-interface {v0, p3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2:F

    .line 163
    invoke-interface {v0, p4, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2:F

    .line 164
    invoke-interface {v0, p5, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 160
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1:F

    .line 98
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1:F

    .line 100
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2:F

    .line 102
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2:F

    .line 104
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 59
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1Value:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1:F

    .line 60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1Value:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1:F

    .line 61
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_43

    :cond_41
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2Value:F

    :goto_43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2:F

    .line 62
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_5a

    :cond_58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2Value:F

    :goto_5a
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2:F

    .line 63
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 83
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX1:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY1:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mX2:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->mY2:F

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v1, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 84
    return-void
.end method

.method protected abstract blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
.end method
