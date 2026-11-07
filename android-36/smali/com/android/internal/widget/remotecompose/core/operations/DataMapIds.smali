.class public Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "DataMapIds.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DataMapIds"

.field private static final blacklist MAX_MAP:I = 0x7d0

.field private static final blacklist OP_CODE:I = 0x91

.field public static final blacklist TYPE_BOOLEAN:B = 0x4t

.field public static final blacklist TYPE_FLOAT:B = 0x2t

.field public static final blacklist TYPE_INT:B = 0x1t

.field public static final blacklist TYPE_LONG:B = 0x3t

.field public static final blacklist TYPE_STRING:B


# instance fields
.field final blacklist mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

.field blacklist mId:I


# direct methods
.method public constructor blacklist <init>(I[Ljava/lang/String;[B[I)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "types"    # [B
    .param p4, "ids"    # [I

    .line 65
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 66
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    .line 67
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;-><init>([Ljava/lang/String;[B[I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    .line 68
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Ljava/lang/String;[B[I)V
    .registers 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "type"    # [B
    .param p4, "ids"    # [I

    .line 107
    const/16 v0, 0x91

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 109
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v1, p2

    if-ge v0, v1, :cond_26

    .line 111
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 112
    if-nez p3, :cond_19

    const/4 v1, 0x2

    goto :goto_1b

    :cond_19
    aget-byte v1, p3, v0

    :goto_1b
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 113
    aget v1, p4, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 115
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 147
    const/16 v0, 0x91

    const-string v1, "DataMapIds"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 148
    const-string v1, "Encode a collection of name id pairs"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 149
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id the array"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 150
    const-string v2, "length"

    const-string v3, "number of entries"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 151
    const-string v3, "names[0]"

    const-string/jumbo v4, "path encoded as floats"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 152
    const/4 v1, 0x5

    const-string v3, "id[0]"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 153
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
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

    .line 124
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 125
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 126
    .local v1, "len":I
    const/16 v2, 0x7d0

    if-gt v1, v2, :cond_35

    .line 129
    new-array v2, v1, [Ljava/lang/String;

    .line 130
    .local v2, "names":[Ljava/lang/String;
    new-array v3, v1, [I

    .line 131
    .local v3, "ids":[I
    new-array v4, v1, [B

    .line 132
    .local v4, "types":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_13
    array-length v6, v2

    if-ge v5, v6, :cond_2c

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    aput v6, v3, v5

    .line 132
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 137
    .end local v5    # "i":I
    :cond_2c
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;

    invoke-direct {v5, v0, v2, v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;-><init>(I[Ljava/lang/String;[B[I)V

    .line 138
    .local v5, "data":Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void

    .line 127
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "ids":[I
    .end local v4    # "types":[B
    .end local v5    # "data":Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;
    :cond_35
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

.method private blacklist typeString(B)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # B

    .line 50
    packed-switch p1, :pswitch_data_16

    .line 62
    const-string v0, "?"

    return-object v0

    .line 60
    :pswitch_6
    const-string v0, "Boolean"

    return-object v0

    .line 58
    :pswitch_9
    const-string v0, "Long"

    return-object v0

    .line 56
    :pswitch_c
    const-string v0, "Float"

    return-object v0

    .line 54
    :pswitch_f
    const-string v0, "Int"

    return-object v0

    .line 52
    :pswitch_12
    const-string v0, "String"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 163
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V

    .line 164
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataMapIds["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5f

    .line 80
    if-eqz v1, :cond_33

    .line 81
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_33
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    aget-byte v2, v2, v1

    invoke-direct {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->typeString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 89
    .end local v1    # "i":I
    :cond_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 72
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mTypes:[B

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->mDataMap:Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    iget-object v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->mIds:[I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Ljava/lang/String;[B[I)V

    .line 73
    return-void
.end method
