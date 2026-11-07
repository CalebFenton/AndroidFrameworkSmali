.class public Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "DataListIds.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "IdListData"

.field private static final blacklist MAX_LIST:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0x92


# instance fields
.field private final blacklist mId:I

.field private final blacklist mIds:[I


# direct methods
.method public constructor blacklist <init>(I[I)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "ids"    # [I

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->mId:I

    .line 47
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->mIds:[I

    .line 48
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "ids"    # [I

    .line 75
    const/16 v0, 0x92

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 77
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v1, p2

    if-ge v0, v1, :cond_18

    .line 79
    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 81
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 109
    const/16 v0, 0x92

    const-string v1, "IdListData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 110
    const-string v1, "a list of id\'s"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 111
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id the array"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 112
    const-string v2, "length"

    const-string v3, "number of ids"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 113
    const/16 v1, 0xb

    const-string v3, "ids[n]"

    const-string v4, "ids of other variables"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 114
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

    .line 90
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 91
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 92
    .local v1, "len":I
    const/16 v2, 0x7d0

    if-gt v1, v2, :cond_24

    .line 95
    new-array v2, v1, [I

    .line 96
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    array-length v4, v2

    if-ge v3, v4, :cond_1b

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 99
    .end local v3    # "i":I
    :cond_1b
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;-><init>(I[I)V

    .line 100
    .local v3, "data":Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void

    .line 93
    .end local v2    # "ids":[I
    .end local v3    # "data":Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;
    :cond_24
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " list entries more than max = "

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

    .line 124
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->mId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V

    .line 125
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->toString()Ljava/lang/String;

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

    .line 129
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public blacklist getFloats()[F
    .registers 2

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getId(I)I
    .registers 3
    .param p1, "index"    # I

    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->mIds:[I

    aget v0, v0, p1

    return v0
.end method

.method public blacklist getIntValue(I)I
    .registers 3
    .param p1, "index"    # I

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLength()I
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->mIds:[I

    array-length v0, v0

    return v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 54
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 156
    const-string v0, "IdListData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->mIds:[I

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "ids"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 157
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->mId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->mIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 51
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 58
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->mIds:[I

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V

    .line 59
    return-void
.end method
