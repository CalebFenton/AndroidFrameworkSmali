.class public Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "DataListFloat.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "IdListData"

.field private static final blacklist MAX_FLOAT_ARRAY:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0x93


# instance fields
.field public final blacklist mId:I

.field private blacklist mValues:[F


# direct methods
.method public constructor blacklist <init>(I[F)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "values"    # [F

    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    .line 46
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mValues:[F

    .line 47
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "values"    # [F

    .line 83
    const/16 v0, 0x93

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 85
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v1, p2

    if-ge v0, v1, :cond_18

    .line 87
    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 89
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 117
    const/16 v0, 0x93

    const-string v1, "IdListData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 118
    const-string v1, "a list of Floats"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id the array (2xxxxx)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 120
    const-string v2, "length"

    const-string v3, "number of floats"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 121
    const/16 v1, 0xa

    const-string/jumbo v3, "values"

    const-string v4, "array of floats"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 122
    return-void
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

    .line 98
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 99
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 100
    .local v1, "len":I
    const/16 v2, 0x7d0

    if-gt v1, v2, :cond_24

    .line 103
    new-array v2, v1, [F

    .line 104
    .local v2, "values":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    array-length v4, v2

    if-ge v3, v4, :cond_1b

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    aput v4, v2, v3

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 107
    .end local v3    # "i":I
    :cond_1b
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;-><init>(I[F)V

    .line 108
    .local v3, "data":Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void

    .line 101
    .end local v2    # "values":[F
    .end local v3    # "data":Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;
    :cond_24
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " map entries more than max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 132
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V

    .line 133
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFloatValue(I)F
    .registers 3
    .param p1, "index"    # I

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mValues:[F

    aget v0, v0, p1

    return v0
.end method

.method public blacklist getFloats()[F
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mValues:[F

    return-object v0
.end method

.method public blacklist getLength()I
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mValues:[F

    array-length v0, v0

    return v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V

    .line 57
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mValues:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1d

    aget v3, v0, v2

    .line 58
    .local v3, "value":F
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 59
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 57
    .end local v3    # "value":F
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 62
    :cond_1d
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 154
    const-string v0, "IdListData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mValues:[F

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "values"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 155
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataListFloat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update(Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;)V
    .registers 3
    .param p1, "lc"    # Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    .line 163
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mValues:[F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mValues:[F

    .line 164
    return-void
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 52
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 66
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mValues:[F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 67
    return-void
.end method
