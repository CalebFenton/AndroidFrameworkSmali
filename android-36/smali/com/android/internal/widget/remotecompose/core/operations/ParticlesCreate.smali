.class public Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ParticlesCreate.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ParticlesCreate"

.field private static final blacklist MAX_EQU_LENGTH:I = 0x20

.field private static final blacklist MAX_FLOAT_ARRAY:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0xa1


# instance fields
.field private final blacklist mEquations:[[F

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private final blacklist mId:I

.field private final blacklist mIndexeVars:[I

.field private final blacklist mOutEquations:[[F

.field private final blacklist mParticleCount:I

.field private final blacklist mParticles:[[F

.field private final blacklist mVarId:[I


# direct methods
.method public constructor blacklist <init>(I[I[[FI)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "varId"    # [I
    .param p3, "values"    # [[F
    .param p4, "particleCount"    # I

    .line 58
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 56
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 59
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    .line 60
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    .line 61
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    .line 62
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticleCount:I

    .line 63
    array-length v0, p3

    new-array v0, v0, [[F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    array-length v1, p3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_34

    .line 65
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v3, p3, v0

    array-length v3, v3

    new-array v3, v3, [F

    aput-object v3, v1, v0

    .line 66
    aget-object v1, p3, v0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v3, v3, v0

    aget-object v4, p3, v0

    array-length v4, v4

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 68
    .end local v0    # "i":I
    :cond_34
    array-length v0, p2

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x1

    aput v0, v1, v3

    aput p4, v1, v2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    .line 70
    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 71
    .local v0, "index":[I
    const/4 v1, 0x0

    .line 72
    .local v1, "indexes":I
    sget v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->VAR1:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    .line 73
    .local v2, "var1Int":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_53
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v4, v4

    if-ge v3, v4, :cond_88

    .line 74
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_59
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v5, v5, v3

    array-length v5, v5

    if-ge v4, v5, :cond_85

    .line 75
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v5, v5, v3

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_82

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v5, v5, v3

    aget v5, v5, v4

    .line 76
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    if-ne v5, v2, :cond_82

    .line 77
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "indexes":I
    .local v5, "indexes":I
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v6, v6

    mul-int/2addr v6, v3

    add-int/2addr v6, v4

    aput v6, v0, v1

    move v1, v5

    .line 74
    .end local v5    # "indexes":I
    .restart local v1    # "indexes":I
    :cond_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 73
    .end local v4    # "k":I
    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 81
    .end local v3    # "j":I
    :cond_88
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mIndexeVars:[I

    .line 82
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V
    .registers 8
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "varId"    # [I
    .param p3, "equations"    # [[F
    .param p4, "particleCount"    # I

    .line 154
    const/16 v0, 0xa1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 156
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 157
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v1, p2

    if-ge v0, v1, :cond_31

    .line 159
    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 160
    aget-object v1, p3, v0

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 161
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1f
    aget-object v2, p3, v0

    array-length v2, v2

    if-ge v1, v2, :cond_2e

    .line 162
    aget-object v2, p3, v0

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 158
    .end local v1    # "j":I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 165
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 7
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 204
    const/16 v0, 0xa1

    const-string v1, "ParticlesCreate"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 205
    const-string v1, "Creates a particle system"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 206
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "The reference of the particle system"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 207
    const-string/jumbo v3, "particleCount"

    const-string v4, "number of particles to create"

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 208
    const-string/jumbo v3, "varLen"

    const-string v4, "number of variables asociate with the particles"

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 209
    const/16 v4, 0xa

    const-string v5, "id followed by equations"

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 210
    const-string v2, "equLen"

    const-string v3, "length of the equation"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 211
    const-string v1, "equation"

    const-string/jumbo v2, "varLen * equLen"

    const-string v3, "float array equations"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 212
    return-void
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

    .line 174
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 175
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 176
    .local v1, "particleCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 177
    .local v2, "varLen":I
    const-string v3, " map entries more than max = "

    const/16 v4, 0x7d0

    if-gt v2, v4, :cond_64

    .line 180
    new-array v5, v2, [I

    .line 181
    .local v5, "varId":[I
    new-array v6, v2, [[F

    .line 182
    .local v6, "equations":[[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_17
    array-length v8, v5

    if-ge v7, v8, :cond_5b

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    aput v8, v5, v7

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    .line 185
    .local v8, "equLen":I
    const/16 v9, 0x20

    if-gt v8, v9, :cond_40

    .line 189
    new-array v9, v8, [F

    aput-object v9, v6, v7

    .line 190
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2d
    aget-object v10, v6, v7

    array-length v10, v10

    if-ge v9, v10, :cond_3d

    .line 191
    aget-object v10, v6, v7

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    aput v11, v10, v9

    .line 190
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 182
    .end local v8    # "equLen":I
    .end local v9    # "j":I
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 186
    .restart local v8    # "equLen":I
    :cond_40
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 194
    .end local v7    # "i":I
    .end local v8    # "equLen":I
    :cond_5b
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-direct {v3, v0, v5, v6, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;-><init>(I[I[[FI)V

    .line 195
    .local v3, "data":Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void

    .line 178
    .end local v3    # "data":Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;
    .end local v5    # "varId":[I
    .end local v6    # "equations":[[F
    :cond_64
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEquations()[[F
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    return-object v0
.end method

.method public blacklist getParticles()[[F
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    return-object v0
.end method

.method public blacklist getVariableIds()[I
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    return-object v0
.end method

.method blacklist initializeParticle(I)V
    .registers 9
    .param p1, "pNo"    # I

    .line 228
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    aget-object v1, v1, p1

    array-length v1, v1

    if-ge v0, v1, :cond_41

    .line 229
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_9
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mIndexeVars:[I

    array-length v2, v2

    if-ge v1, v2, :cond_26

    .line 230
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mIndexeVars:[I

    aget v2, v2, v1

    .line 231
    .local v2, "pos":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    array-length v3, v3

    div-int v3, v2, v3

    .line 232
    .local v3, "jIndex":I
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    array-length v4, v4

    rem-int v4, v2, v4

    .line 233
    .local v4, "kIndex":I
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v5, v5, v3

    int-to-float v6, p1

    aput v6, v5, v4

    .line 229
    .end local v2    # "pos":I
    .end local v3    # "jIndex":I
    .end local v4    # "kIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 235
    .end local v1    # "k":I
    :cond_26
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v4, v4, v0

    array-length v4, v4

    const/4 v5, 0x0

    new-array v5, v5, [F

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v2

    aput v2, v1, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    .end local v0    # "j":I
    :cond_41
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticles:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->initializeParticle(I)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 102
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putObject(ILjava/lang/Object;)V

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 104
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v1, v1, v0

    .line 105
    .local v1, "mEquation":[F
    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_31

    aget v4, v1, v3

    .line 106
    .local v4, "v":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 107
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 108
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 109
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 105
    .end local v4    # "v":F
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 103
    .end local v1    # "mEquation":[F
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 113
    .end local v0    # "i":I
    :cond_34
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 2
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 252
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParticlesCreate["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_20
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    array-length v3, v3

    if-ge v2, v3, :cond_97

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v3, v3, v2

    .line 127
    .local v3, "equation":[F
    array-length v5, v3

    new-array v5, v5, [Ljava/lang/String;

    .line 128
    .local v5, "labels":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4c
    array-length v7, v3

    if-ge v6, v7, :cond_79

    .line 129
    aget v7, v3, v6

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v6

    invoke-static {v8}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 128
    :cond_76
    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 133
    .end local v6    # "i":I
    :cond_79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .end local v3    # "equation":[F
    .end local v5    # "labels":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 136
    .end local v2    # "j":I
    :cond_97
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_3c

    .line 88
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_39

    .line 89
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    aget-object v2, v2, v0

    aget v2, v2, v1

    .line 90
    .local v2, "v":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mOutEquations:[[F

    aget-object v3, v3, v0

    .line 91
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 92
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v4

    if-nez v4, :cond_33

    .line 93
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v4

    if-nez v4, :cond_33

    .line 94
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v4

    goto :goto_34

    .line 95
    :cond_33
    move v4, v2

    :goto_34
    aput v4, v3, v1

    .line 88
    .end local v2    # "v":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 86
    .end local v1    # "j":I
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "i":I
    :cond_3c
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 117
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mVarId:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mEquations:[[F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->mParticleCount:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V

    .line 118
    return-void
.end method
