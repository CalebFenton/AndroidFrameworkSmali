.class Lcom/google/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cachedExtension:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<**>;"
        }
    .end annotation
.end field

.field private unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@a
    .line 53
    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<*TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 48
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    #@5
    .line 50
    iput-object p2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@7
    .line 48
    return-void
.end method

.method private toByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->computeSerializedSize()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [B

    #@6
    .line 185
    .local v1, "result":[B
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    #@9
    move-result-object v0

    #@a
    .line 186
    .local v0, "output":Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/FieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@d
    .line 187
    return-object v1
.end method


# virtual methods
.method addUnknownField(Lcom/google/protobuf/nano/UnknownFieldData;)V
    .locals 1
    .param p1, "unknownField"    # Lcom/google/protobuf/nano/UnknownFieldData;

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 57
    return-void
.end method

.method public final clone()Lcom/google/protobuf/nano/FieldData;
    .locals 9

    #@0
    .prologue
    .line 192
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    #@2
    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    #@5
    .line 194
    .local v0, "clone":Lcom/google/protobuf/nano/FieldData;
    :try_start_0
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    #@7
    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    #@9
    .line 195
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@b
    if-nez v7, :cond_1

    #@d
    .line 196
    const/4 v7, 0x0

    #@e
    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@10
    .line 204
    :goto_0
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@12
    if-nez v7, :cond_2

    #@14
    .line 235
    :cond_0
    :goto_1
    return-object v0

    #@15
    .line 198
    :cond_1
    iget-object v7, v0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@17
    iget-object v8, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@19
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    goto :goto_0

    #@1d
    .line 236
    :catch_0
    move-exception v3

    #@1e
    .line 237
    .local v3, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v7, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v7, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@23
    throw v7

    #@24
    .line 206
    .end local v3    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@26
    instance-of v7, v7, Lcom/google/protobuf/nano/MessageNano;

    #@28
    if-eqz v7, :cond_3

    #@2a
    .line 207
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@2c
    check-cast v7, Lcom/google/protobuf/nano/MessageNano;

    #@2e
    invoke-virtual {v7}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    #@31
    move-result-object v7

    #@32
    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@34
    goto :goto_1

    #@35
    .line 208
    :cond_3
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@37
    instance-of v7, v7, [B

    #@39
    if-eqz v7, :cond_4

    #@3b
    .line 209
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@3d
    check-cast v7, [B

    #@3f
    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@42
    move-result-object v7

    #@43
    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@45
    goto :goto_1

    #@46
    .line 210
    :cond_4
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@48
    instance-of v7, v7, [[B

    #@4a
    if-eqz v7, :cond_5

    #@4c
    .line 211
    iget-object v6, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@4e
    check-cast v6, [[B

    #@50
    .line 212
    .local v6, "valueArray":[[B
    array-length v7, v6

    #@51
    new-array v2, v7, [[B

    #@53
    .line 213
    .local v2, "cloneArray":[[B
    iput-object v2, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@55
    .line 214
    const/4 v4, 0x0

    #@56
    .local v4, "i":I
    :goto_2
    array-length v7, v6

    #@57
    if-ge v4, v7, :cond_0

    #@59
    .line 215
    aget-object v7, v6, v4

    #@5b
    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5e
    move-result-object v7

    #@5f
    check-cast v7, [B

    #@61
    aput-object v7, v2, v4

    #@63
    .line 214
    add-int/lit8 v4, v4, 0x1

    #@65
    goto :goto_2

    #@66
    .line 217
    .end local v2    # "cloneArray":[[B
    .end local v4    # "i":I
    .end local v6    # "valueArray":[[B
    :cond_5
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@68
    instance-of v7, v7, [Z

    #@6a
    if-eqz v7, :cond_6

    #@6c
    .line 218
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@6e
    check-cast v7, [Z

    #@70
    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@73
    move-result-object v7

    #@74
    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@76
    goto :goto_1

    #@77
    .line 219
    :cond_6
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@79
    instance-of v7, v7, [I

    #@7b
    if-eqz v7, :cond_7

    #@7d
    .line 220
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@7f
    check-cast v7, [I

    #@81
    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@84
    move-result-object v7

    #@85
    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@87
    goto :goto_1

    #@88
    .line 221
    :cond_7
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@8a
    instance-of v7, v7, [J

    #@8c
    if-eqz v7, :cond_8

    #@8e
    .line 222
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@90
    check-cast v7, [J

    #@92
    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@95
    move-result-object v7

    #@96
    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@98
    goto/16 :goto_1

    #@9a
    .line 223
    :cond_8
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@9c
    instance-of v7, v7, [F

    #@9e
    if-eqz v7, :cond_9

    #@a0
    .line 224
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@a2
    check-cast v7, [F

    #@a4
    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a7
    move-result-object v7

    #@a8
    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@aa
    goto/16 :goto_1

    #@ac
    .line 225
    :cond_9
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@ae
    instance-of v7, v7, [D

    #@b0
    if-eqz v7, :cond_a

    #@b2
    .line 226
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@b4
    check-cast v7, [D

    #@b6
    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b9
    move-result-object v7

    #@ba
    iput-object v7, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@bc
    goto/16 :goto_1

    #@be
    .line 227
    :cond_a
    iget-object v7, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@c0
    instance-of v7, v7, [Lcom/google/protobuf/nano/MessageNano;

    #@c2
    if-eqz v7, :cond_0

    #@c4
    .line 228
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@c6
    check-cast v5, [Lcom/google/protobuf/nano/MessageNano;

    #@c8
    .line 229
    .local v5, "valueArray":[Lcom/google/protobuf/nano/MessageNano;
    array-length v7, v5

    #@c9
    new-array v1, v7, [Lcom/google/protobuf/nano/MessageNano;

    #@cb
    .line 230
    .local v1, "cloneArray":[Lcom/google/protobuf/nano/MessageNano;
    iput-object v1, v0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@cd
    .line 231
    const/4 v4, 0x0

    #@ce
    .restart local v4    # "i":I
    :goto_3
    array-length v7, v5

    #@cf
    if-ge v4, v7, :cond_0

    #@d1
    .line 232
    aget-object v7, v5, v4

    #@d3
    invoke-virtual {v7}, Lcom/google/protobuf/nano/MessageNano;->clone()Lcom/google/protobuf/nano/MessageNano;

    #@d6
    move-result-object v7

    #@d7
    aput-object v7, v1, v4
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    #@d9
    .line 231
    add-int/lit8 v4, v4, 0x1

    #@db
    goto :goto_3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldData;->clone()Lcom/google/protobuf/nano/FieldData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method computeSerializedSize()I
    .locals 5

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    .line 100
    .local v0, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 101
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    #@7
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@9
    invoke-virtual {v3, v4}, Lcom/google/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    .line 107
    :cond_0
    return v0

    #@e
    .line 103
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@10
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    .local v2, "unknownField$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/google/protobuf/nano/UnknownFieldData;

    #@20
    .line 104
    .local v1, "unknownField":Lcom/google/protobuf/nano/UnknownFieldData;
    invoke-virtual {v1}, Lcom/google/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    #@23
    move-result v3

    #@24
    add-int/2addr v0, v3

    #@25
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 122
    if-ne p1, p0, :cond_0

    #@3
    .line 123
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 125
    :cond_0
    instance-of v2, p1, Lcom/google/protobuf/nano/FieldData;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 126
    return v4

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 129
    check-cast v1, Lcom/google/protobuf/nano/FieldData;

    #@d
    .line 130
    .local v1, "other":Lcom/google/protobuf/nano/FieldData;
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@f
    if-eqz v2, :cond_a

    #@11
    iget-object v2, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@13
    if-eqz v2, :cond_a

    #@15
    .line 134
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    #@17
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    #@19
    if-eq v2, v3, :cond_2

    #@1b
    .line 135
    return v4

    #@1c
    .line 137
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    #@1e
    iget-object v2, v2, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    #@20
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_3

    #@26
    .line 139
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@28
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    return v2

    #@2f
    .line 141
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@31
    instance-of v2, v2, [B

    #@33
    if-eqz v2, :cond_4

    #@35
    .line 142
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@37
    check-cast v2, [B

    #@39
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@3b
    check-cast v3, [B

    #@3d
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@40
    move-result v2

    #@41
    return v2

    #@42
    .line 143
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@44
    instance-of v2, v2, [I

    #@46
    if-eqz v2, :cond_5

    #@48
    .line 144
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@4a
    check-cast v2, [I

    #@4c
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@4e
    check-cast v3, [I

    #@50
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@53
    move-result v2

    #@54
    return v2

    #@55
    .line 145
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@57
    instance-of v2, v2, [J

    #@59
    if-eqz v2, :cond_6

    #@5b
    .line 146
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@5d
    check-cast v2, [J

    #@5f
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@61
    check-cast v3, [J

    #@63
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    #@66
    move-result v2

    #@67
    return v2

    #@68
    .line 147
    :cond_6
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@6a
    instance-of v2, v2, [F

    #@6c
    if-eqz v2, :cond_7

    #@6e
    .line 148
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@70
    check-cast v2, [F

    #@72
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@74
    check-cast v3, [F

    #@76
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    #@79
    move-result v2

    #@7a
    return v2

    #@7b
    .line 149
    :cond_7
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@7d
    instance-of v2, v2, [D

    #@7f
    if-eqz v2, :cond_8

    #@81
    .line 150
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@83
    check-cast v2, [D

    #@85
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@87
    check-cast v3, [D

    #@89
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    #@8c
    move-result v2

    #@8d
    return v2

    #@8e
    .line 151
    :cond_8
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@90
    instance-of v2, v2, [Z

    #@92
    if-eqz v2, :cond_9

    #@94
    .line 152
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@96
    check-cast v2, [Z

    #@98
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@9a
    check-cast v3, [Z

    #@9c
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@9f
    move-result v2

    #@a0
    return v2

    #@a1
    .line 154
    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@a3
    check-cast v2, [Ljava/lang/Object;

    #@a5
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@a7
    check-cast v3, [Ljava/lang/Object;

    #@a9
    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@ac
    move-result v2

    #@ad
    return v2

    #@ae
    .line 157
    :cond_a
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@b0
    if-eqz v2, :cond_b

    #@b2
    iget-object v2, v1, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@b4
    if-eqz v2, :cond_b

    #@b6
    .line 159
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@b8
    iget-object v3, v1, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@ba
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v2

    #@be
    return v2

    #@bf
    .line 163
    :cond_b
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    #@c2
    move-result-object v2

    #@c3
    invoke-direct {v1}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    #@c6
    move-result-object v3

    #@c7
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@ca
    move-result v2

    #@cb
    return v2

    #@cc
    .line 164
    :catch_0
    move-exception v0

    #@cd
    .line 166
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@cf
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@d2
    throw v2
.end method

.method getUnknownField(I)Lcom/google/protobuf/nano/UnknownFieldData;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 63
    return-object v1

    #@6
    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    if-ge p1, v0, :cond_1

    #@e
    .line 66
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    #@16
    return-object v0

    #@17
    .line 68
    :cond_1
    return-object v1
.end method

.method getUnknownFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 73
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method getValue(Lcom/google/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<*TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    const/4 v1, 0x0

    #@1
    .line 79
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 80
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    #@7
    if-eq v0, p1, :cond_1

    #@9
    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    .line 82
    const-string/jumbo v1, "Tried to getExtension with a differernt Extension."

    #@e
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 85
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    #@14
    .line 86
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@16
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@1c
    .line 87
    iput-object v1, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@1e
    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@20
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldData;->toByteArray()[B

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    add-int/lit16 v1, v2, 0x20f

    #@a
    .line 180
    .local v1, "result":I
    return v1

    #@b
    .line 176
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    #@c
    .line 178
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@e
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@11
    throw v2
.end method

.method setValue(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/Extension",
            "<*TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 93
    .local p1, "extension":Lcom/google/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    #@2
    .line 94
    iput-object p2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@4
    .line 95
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@7
    .line 92
    return-void
.end method

.method writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 112
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->cachedExtension:Lcom/google/protobuf/nano/Extension;

    #@6
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    #@8
    invoke-virtual {v2, v3, p1}, Lcom/google/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@b
    .line 110
    :cond_0
    return-void

    #@c
    .line 114
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    #@e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "unknownField$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    #@1e
    .line 115
    .local v0, "unknownField":Lcom/google/protobuf/nano/UnknownFieldData;
    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/UnknownFieldData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@21
    goto :goto_0
.end method
