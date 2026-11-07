.class public Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ParticlesLoop.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ParticlesLoop"

.field private static final blacklist MAX_EQU_LENGTH:I = 0x20

.field private static final blacklist MAX_FLOAT_ARRAY:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0xa3


# instance fields
.field private final blacklist mEquations:[[F

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private final blacklist mId:I

.field private blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutEquations:[[F

.field private final blacklist mOutRestart:[F

.field private blacklist mParticles:[[F

.field blacklist mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

.field private final blacklist mRestart:[F

.field private blacklist mVarId:[I


# direct methods
.method public constructor blacklist <init>(I[F[[F)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "restart"    # [F
    .param p3, "values"    # [[F

    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 77
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    .line 78
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    .line 79
    const/4 v0, 0x0

    if-eqz p2, :cond_24

    .line 80
    array-length v1, p2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 81
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    array-length v2, p2

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    .line 83
    :cond_24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 86
    :goto_27
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    .line 87
    array-length v1, p3

    new-array v1, v1, [[F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    array-length v2, p3

    if-ge v1, v2, :cond_4a

    .line 89
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v3, p3, v1

    array-length v3, v3

    new-array v3, v3, [F

    aput-object v3, v2, v1

    .line 90
    aget-object v2, p3, v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v3, v3, v1

    aget-object v4, p3, v1

    array-length v4, v4

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 92
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V
    .registers 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "restart"    # [F
    .param p3, "equations"    # [[F

    .line 173
    const/16 v0, 0xa3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 175
    if-eqz p2, :cond_1b

    .line 176
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v1, p2

    if-ge v0, v1, :cond_1a

    .line 178
    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .end local v0    # "i":I
    :cond_1a
    goto :goto_1f

    .line 181
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 183
    :goto_1f
    array-length v0, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 184
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_24
    array-length v1, p3

    if-ge v0, v1, :cond_40

    .line 185
    aget-object v1, p3, v0

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 186
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2e
    aget-object v2, p3, v0

    array-length v2, v2

    if-ge v1, v2, :cond_3d

    .line 187
    aget-object v2, p3, v0

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 184
    .end local v1    # "j":I
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 190
    .end local v0    # "i":I
    :cond_40
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 7
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 237
    const/16 v0, 0xa3

    const-string v1, "ParticlesLoop"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 238
    const-string v1, "This evolves the particles & recycles them"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 239
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of particle system"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 240
    const-string/jumbo v2, "recycleLen"

    const-string/jumbo v3, "the number of floats in restart equeation if 0 no restart"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 244
    const/16 v3, 0xa

    const-string/jumbo v4, "values"

    const-string v5, "array of floats"

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 245
    const-string/jumbo v2, "varLen"

    const-string/jumbo v5, "the number of equations to follow"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 246
    const-string v2, "equLen"

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 247
    const-string v1, "floats for the equation"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 248
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

    .line 199
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 200
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 201
    .local v1, "restartLen":I
    const/4 v2, 0x0

    .line 202
    .local v2, "restart":[F
    if-lez v1, :cond_19

    .line 203
    new-array v2, v1, [F

    .line 204
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v1, :cond_19

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    aput v4, v2, v3

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 209
    .end local v3    # "i":I
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 210
    .local v3, "varLen":I
    const-string v4, " map entries more than max = "

    const/16 v5, 0x7d0

    if-gt v3, v5, :cond_6c

    .line 214
    new-array v6, v3, [[F

    .line 215
    .local v6, "equations":[[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_26
    if-ge v7, v3, :cond_63

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    .line 218
    .local v8, "equLen":I
    const/16 v9, 0x20

    if-gt v8, v9, :cond_48

    .line 222
    new-array v9, v8, [F

    aput-object v9, v6, v7

    .line 223
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_35
    aget-object v10, v6, v7

    array-length v10, v10

    if-ge v9, v10, :cond_45

    .line 224
    aget-object v10, v6, v7

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    aput v11, v10, v9

    .line 223
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    .line 215
    .end local v8    # "equLen":I
    .end local v9    # "j":I
    :cond_45
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 219
    .restart local v8    # "equLen":I
    :cond_48
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 227
    .end local v7    # "i":I
    .end local v8    # "equLen":I
    :cond_63
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;

    invoke-direct {v4, v0, v2, v6}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;-><init>(I[F[[F)V

    .line 228
    .local v4, "data":Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-void

    .line 211
    .end local v4    # "data":Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;
    .end local v6    # "equations":[[F
    :cond_6c
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 258
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 259
    .local v0, "remoteContext":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    array-length v2, v2

    if-ge v1, v2, :cond_cc

    .line 261
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_b
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_25

    .line 262
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v4, v4, v1

    aget v4, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 266
    .end local v2    # "j":I
    :cond_25
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_26
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v3, v3, v1

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_55

    .line 267
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v3, v3, v1

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v7, v7, v2

    array-length v7, v7

    new-array v4, v4, [F

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v4

    aput v4, v3, v2

    .line 268
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    aget-object v4, v4, v1

    aget v4, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 271
    .end local v2    # "j":I
    :cond_55
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    if-eqz v2, :cond_9d

    .line 272
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_5a
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v3, v3

    if-ge v2, v3, :cond_86

    .line 273
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    aget v3, v3, v2

    .line 274
    .local v3, "v":F
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 275
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 276
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v6

    if-nez v6, :cond_80

    .line 277
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v6

    if-nez v6, :cond_80

    .line 278
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v6

    goto :goto_81

    .line 279
    :cond_80
    move v6, v3

    :goto_81
    aput v6, v5, v2

    .line 272
    .end local v3    # "v":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 281
    .end local v2    # "k":I
    :cond_86
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    array-length v5, v5

    new-array v4, v4, [F

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9d

    .line 282
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->initializeParticle(I)V

    .line 286
    :cond_9d
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 287
    .local v3, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v4, :cond_bd

    .line 288
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 291
    :cond_bd
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 292
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 293
    .end local v3    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_a3

    .line 259
    :cond_c8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 295
    .end local v1    # "i":I
    :cond_cc
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 123
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->getParticles()[[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticles:[[F

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mParticlesSource:Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->getVariableIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mVarId:[I

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    if-eqz v0, :cond_44

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v1, v1

    if-ge v0, v1, :cond_44

    .line 128
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    aget v1, v1, v0

    .line 129
    .local v1, "v":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 130
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v2

    if-nez v2, :cond_41

    .line 131
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v2

    if-nez v2, :cond_41

    .line 132
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {p1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 127
    .end local v1    # "v":F
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 136
    .end local v0    # "i":I
    :cond_44
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_45
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_73

    .line 137
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    aget-object v1, v1, v0

    .line 138
    .local v1, "mEquation":[F
    array-length v2, v1

    const/4 v3, 0x0

    :goto_50
    if-ge v3, v2, :cond_70

    aget v4, v1, v3

    .line 139
    .local v4, "v":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 140
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 141
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 142
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 138
    .end local v4    # "v":F
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 136
    .end local v1    # "mEquation":[F
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 146
    .end local v0    # "i":I
    :cond_73
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 299
    const-string v0, "ParticlesLoop"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 300
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParticlesLoop["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 96
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    if-eqz v0, :cond_31

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    array-length v1, v1

    if-ge v0, v1, :cond_31

    .line 98
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    aget v1, v1, v0

    .line 99
    .local v1, "v":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutRestart:[F

    .line 100
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 101
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 102
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 103
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v3

    goto :goto_2c

    .line 104
    :cond_2b
    move v3, v1

    :goto_2c
    aput v3, v2, v0

    .line 97
    .end local v1    # "v":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 107
    .end local v0    # "i":I
    :cond_31
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_32
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_69

    .line 108
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    aget-object v1, v1, v0

    .line 109
    .local v1, "mEquation":[F
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3c
    array-length v3, v1

    if-ge v2, v3, :cond_66

    .line 110
    aget v3, v1, v2

    .line 111
    .local v3, "v":F
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mOutEquations:[[F

    aget-object v4, v4, v0

    .line 112
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 113
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_60

    .line 114
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_60

    .line 115
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v5

    goto :goto_61

    .line 116
    :cond_60
    move v5, v3

    :goto_61
    aput v5, v4, v2

    .line 109
    .end local v3    # "v":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 107
    .end local v1    # "mEquation":[F
    .end local v2    # "j":I
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 119
    .end local v0    # "i":I
    :cond_69
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 150
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mRestart:[F

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->mEquations:[[F

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V

    .line 151
    return-void
.end method
