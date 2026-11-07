.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBase6.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;
    }
.end annotation


# instance fields
.field protected blacklist mName:Ljava/lang/String;

.field blacklist mV1:F

.field blacklist mV2:F

.field blacklist mV3:F

.field blacklist mV4:F

.field blacklist mV5:F

.field blacklist mV6:F

.field blacklist mValue1:F

.field blacklist mValue2:F

.field blacklist mValue3:F

.field blacklist mValue4:F

.field blacklist mValue5:F

.field blacklist mValue6:F


# direct methods
.method public constructor blacklist <init>(FFFFFF)V
    .registers 8
    .param p1, "v1"    # F
    .param p2, "v2"    # F
    .param p3, "v3"    # F
    .param p4, "v4"    # F
    .param p5, "v5"    # F
    .param p6, "v6"    # F

    .line 47
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 33
    const-string v0, "DrawRectBase"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mName:Ljava/lang/String;

    .line 48
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue1:F

    .line 49
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue2:F

    .line 50
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue3:F

    .line 51
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue4:F

    .line 52
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue5:F

    .line 53
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue6:F

    .line 55
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV1:F

    .line 56
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV2:F

    .line 57
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV3:F

    .line 58
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV4:F

    .line 59
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV5:F

    .line 60
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV6:F

    .line 61
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 164
    const-string v0, "DrawBase6"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 10
    .param p0, "build"    # Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p2, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 131
    .local v1, "sv1":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 132
    .local v2, "sv2":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 133
    .local v3, "sv3":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 134
    .local v4, "sv4":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 135
    .local v5, "sv5":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 137
    .local v6, "sv6":F
    move-object v0, p0

    .end local p0    # "build":Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;
    .local v0, "build":Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;->create(FFFFFF)Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;

    move-result-object p0

    .line 138
    .local p0, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method


# virtual methods
.method public blacklist construct(FFFFFF)Lcom/android/internal/widget/remotecompose/core/Operation;
    .registers 8
    .param p1, "v1"    # F
    .param p2, "v2"    # F
    .param p3, "v3"    # F
    .param p4, "v4"    # F
    .param p5, "v5"    # F
    .param p6, "v6"    # F

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 76
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 78
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 79
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 81
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue3:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 82
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 84
    :cond_33
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue4:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 85
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue4:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 87
    :cond_44
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue5:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 88
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue5:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 90
    :cond_55
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue6:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 91
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue6:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 93
    :cond_66
    return-void
.end method

.method protected blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .registers 11
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .param p2, "v1Name"    # Ljava/lang/String;
    .param p3, "v2Name"    # Ljava/lang/String;
    .param p4, "v3Name"    # Ljava/lang/String;
    .param p5, "v4Name"    # Ljava/lang/String;
    .param p6, "v5Name"    # Ljava/lang/String;
    .param p7, "v6Name"    # Ljava/lang/String;

    .line 175
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV1:F

    .line 176
    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue2:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV2:F

    .line 177
    invoke-interface {v0, p3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue3:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV3:F

    .line 178
    invoke-interface {v0, p4, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue4:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV4:F

    .line 179
    invoke-interface {v0, p5, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue5:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV5:F

    .line 180
    invoke-interface {v0, p6, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue6:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV6:F

    .line 181
    invoke-interface {v0, p7, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 175
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV1:F

    .line 108
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV2:F

    .line 110
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV3:F

    .line 112
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV4:F

    .line 114
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 65
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue1:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue1:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue1:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV1:F

    .line 66
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue2:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue2:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue2:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV2:F

    .line 67
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue3:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue3:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_43

    :cond_41
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue3:F

    :goto_43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV3:F

    .line 68
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue4:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue4:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_5a

    :cond_58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue4:F

    :goto_5a
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV4:F

    .line 69
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue5:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue5:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_71

    :cond_6f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue5:F

    :goto_71
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV5:F

    .line 70
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue6:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_86

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue6:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_88

    :cond_86
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mValue6:F

    :goto_88
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV6:F

    .line 71
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 10
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 97
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV1:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV2:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV3:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV4:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV5:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->mV6:F

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v1, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 98
    return-void
.end method

.method protected abstract blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V
.end method
