.class public Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "FloatFunctionCall.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "FunctionCall"

.field private static final blacklist OP_CODE:I = 0xa6


# instance fields
.field private final blacklist mArgs:[F

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field blacklist mFunction:Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;

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

.field private final blacklist mOutArgs:[F


# direct methods
.method public constructor blacklist <init>(I[F)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # [F

    .line 61
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 62
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mId:I

    .line 63
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    .line 64
    if-eqz p2, :cond_24

    .line 65
    array-length v0, p2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    .line 66
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    .line 68
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    .line 70
    :goto_27
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "args"    # [F

    .line 125
    const/16 v0, 0xa6

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 127
    if-eqz p2, :cond_1b

    .line 128
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v1, p2

    if-ge v0, v1, :cond_1a

    .line 130
    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .end local v0    # "i":I
    :cond_1a
    goto :goto_1f

    .line 133
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 135
    :goto_1f
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 164
    const/16 v0, 0xa6

    const-string v1, "FunctionCall"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 165
    const-string v1, "Command to call the function"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 166
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of function to call"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 167
    const-string v2, "argLen"

    const-string/jumbo v3, "the number of Arguments"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 168
    const/16 v1, 0xa

    const-string/jumbo v3, "values"

    const-string v4, "array of float arguments"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 169
    return-void
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

    .line 144
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 145
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 146
    .local v1, "argLen":I
    const/4 v2, 0x0

    .line 147
    .local v2, "args":[F
    if-lez v1, :cond_19

    .line 148
    new-array v2, v1, [F

    .line 149
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v1, :cond_19

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    aput v4, v2, v3

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 154
    .end local v3    # "i":I
    :cond_19
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;-><init>(I[F)V

    .line 155
    .local v3, "data":Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 179
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 180
    .local v0, "remoteContext":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mFunction:Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->getArgs()[I

    move-result-object v1

    .line 181
    .local v1, "args":[I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_b
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1f

    .line 182
    aget v3, v1, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    aget v4, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 185
    .end local v2    # "j":I
    :cond_1f
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mFunction:Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->execute(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 186
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 89
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mFunction:Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    if-eqz v0, :cond_34

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 92
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    aget v1, v1, v0

    .line 93
    .local v1, "v":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 94
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v2

    if-nez v2, :cond_31

    .line 95
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v2

    if-nez v2, :cond_31

    .line 96
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {p1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 91
    .end local v1    # "v":F
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 100
    .end local v0    # "i":I
    :cond_34
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 190
    nop

    .line 191
    const-string v0, "FunctionCall"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mId:I

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    .line 193
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "args"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    .line 194
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "outArgs"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 195
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callFunction["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    array-length v2, v2

    if-ge v1, v2, :cond_50

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_33

    const-string v3, ""

    goto :goto_35

    :cond_33
    const-string v3, " ,"

    :goto_35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    aget v4, v4, v1

    invoke-static {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 114
    .end local v1    # "i":I
    :cond_50
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 74
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    if-eqz v0, :cond_31

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    array-length v1, v1

    if-ge v0, v1, :cond_31

    .line 76
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    aget v1, v1, v0

    .line 77
    .local v1, "v":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mOutArgs:[F

    .line 78
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 79
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 80
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 81
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v3

    goto :goto_2c

    .line 82
    :cond_2b
    move v3, v1

    :goto_2c
    aput v3, v2, v0

    .line 75
    .end local v1    # "v":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 85
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 104
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->mArgs:[F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 105
    return-void
.end method
