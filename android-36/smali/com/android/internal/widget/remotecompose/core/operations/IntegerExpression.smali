.class public Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "IntegerExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "IntegerExpression"

.field public static final blacklist MAX_SIZE:I = 0x140

.field private static final blacklist OP_CODE:I = 0x90


# instance fields
.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;

.field public blacklist mId:I

.field private blacklist mLastChange:F

.field private blacklist mMask:I

.field public blacklist mPreCalcValue:[I

.field private blacklist mPreMask:I

.field public final blacklist mSrcValue:[I


# direct methods
.method public constructor blacklist <init>(II[I)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "mask"    # I
    .param p3, "value"    # [I

    .line 56
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 52
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mLastChange:F

    .line 54
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;

    .line 57
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    .line 58
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    .line 59
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    .line 60
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[I)V
    .registers 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "mask"    # I
    .param p3, "value"    # [I

    .line 170
    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 172
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 173
    array-length v0, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 174
    array-length v0, p3

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1b

    aget v2, p3, v1

    .line 175
    .local v2, "opMask":I
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 174
    .end local v2    # "opMask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 177
    :cond_1b
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 206
    const/16 v0, 0x90

    const-string v1, "IntegerExpression"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 207
    const-string v1, "Expression that computes an integer"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 208
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of integer"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 209
    const-string v2, "mask"

    const-string v3, "bits representing operators or other id\'s"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 210
    const-string v2, "length"

    const-string v3, "length of array"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 211
    const/16 v1, 0xb

    const-string/jumbo v3, "values"

    const-string v4, "Array of ints"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 212
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 158
    const/16 v0, 0x90

    return v0
.end method

.method public static blacklist isId(III)Z
    .registers 5
    .param p0, "mask"    # I
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 229
    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_b

    const/high16 v1, 0x10000

    if-ge p2, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 149
    const-string v0, "IntegerExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 8
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

    .line 186
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 187
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 188
    .local v1, "mask":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 189
    .local v2, "len":I
    const/16 v3, 0x140

    if-gt v2, v3, :cond_28

    .line 192
    new-array v3, v2, [I

    .line 193
    .local v3, "values":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    array-length v5, v3

    if-ge v4, v5, :cond_1f

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    aput v5, v3, v4

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 197
    .end local v4    # "i":I
    :cond_1f
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;-><init>(II[I)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    return-void

    .line 190
    .end local v3    # "values":[I
    :cond_28
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buffer corrupt integer expression "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    .line 91
    .local v0, "t":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 92
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mLastChange:F

    .line 94
    :cond_11
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreMask:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->eval(I[I[I)I

    move-result v1

    .line 95
    .local v1, "v":I
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    .line 96
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 106
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    .line 107
    .local v0, "t":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mLastChange:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 108
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mLastChange:F

    .line 110
    :cond_11
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreMask:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->eval(I[I[I)I

    move-result v1

    return v1
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 81
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v2, v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->isId(III)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 82
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 80
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 234
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->EXPRESSION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 235
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 236
    const-string v1, "IntegerExpression"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mask"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    .line 239
    const-string/jumbo v3, "srcValues"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addIntExpressionSrc(Ljava/lang/String;[II)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 240
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    if-nez v1, :cond_c

    .line 123
    const-string v1, ""

    return-object v1

    .line 125
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    array-length v2, v2

    if-ge v1, v2, :cond_64

    .line 126
    if-eqz v1, :cond_19

    .line 127
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_19
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    invoke-static {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->isOperation(II)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 130
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v3, v3, v1

    invoke-static {v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->isId(III)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 133
    :cond_4e
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntegerExpressionEvaluator;->toMathName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 136
    :cond_5a
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 139
    .end local v1    # "i":I
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntegerExpression["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    array-length v1, v1

    if-eq v0, v1, :cond_13

    .line 65
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    .line 67
    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreMask:I

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    array-length v1, v1

    if-ge v0, v1, :cond_49

    .line 69
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v2, v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->isId(III)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 70
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreMask:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreMask:I

    .line 71
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v2

    aput v2, v1, v0

    goto :goto_46

    .line 73
    :cond_3e
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mPreCalcValue:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 68
    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 76
    .end local v0    # "i":I
    :cond_49
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 115
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mMask:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mSrcValue:[I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[I)V

    .line 116
    return-void
.end method
