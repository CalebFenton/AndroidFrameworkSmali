.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "DimensionModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;
    }
.end annotation


# instance fields
.field blacklist mOutValue:F

.field blacklist mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

.field blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(F)V
    .registers 3
    .param p1, "value"    # F

    .line 75
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;F)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;)V
    .registers 3
    .param p1, "type"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 71
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;F)V

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;F)V
    .registers 4
    .param p1, "type"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;
    .param p2, "value"    # F

    .line 65
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 61
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 62
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    .line 63
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mOutValue:F

    .line 66
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    .line 67
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mOutValue:F

    .line 68
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 165
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_9

    move-object v1, p1

    goto :goto_b

    :cond_9
    const-string v1, ""

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    return-object v0
.end method

.method public blacklist getValue()F
    .registers 2

    .line 137
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mOutValue:F

    return v0
.end method

.method public blacklist hasWeight()Z
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WEIGHT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isFill()Z
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->FILL:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isIntrinsicMax()Z
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->INTRINSIC_MAX:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isIntrinsicMin()Z
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->INTRINSIC_MIN:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isWrap()Z
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WRAP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v0, v1, :cond_17

    .line 96
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 97
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 100
    :cond_17
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v0, v1, :cond_2e

    .line 101
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 102
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 105
    :cond_2e
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    const-string v2, " = "

    if-ne v0, v1, :cond_26

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->serializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 159
    :cond_26
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v0, v1, :cond_50

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->serializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 162
    :cond_50
    return-void
.end method

.method public blacklist serializedName()Ljava/lang/String;
    .registers 2

    .line 151
    const-string v0, "DIMENSION"

    return-object v0
.end method

.method public blacklist setValue(F)V
    .registers 2
    .param p1, "value"    # F

    .line 141
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mOutValue:F

    .line 142
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DimensionModifierOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v0, v1, :cond_1d

    .line 81
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_1b

    :cond_19
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    :goto_1b
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mOutValue:F

    .line 83
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mType:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne v0, v1, :cond_56

    .line 84
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mOutValue:F

    .line 85
    .local v0, "pre":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_38

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v1

    goto :goto_3a

    :cond_38
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mValue:F

    :goto_3a
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mOutValue:F

    .line 86
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mOutValue:F

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mOutValue:F

    .line 87
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation;->mOutValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_56

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->invalidateMeasure()V

    .line 91
    .end local v0    # "pre":F
    :cond_56
    return-void
.end method
