.class Landroid/internal/framework/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private blacklist cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "**>;"
        }
    .end annotation
.end field

.field private blacklist unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/internal/framework/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist value:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Landroid/internal/framework/protobuf/nano/Extension;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    .line 48
    .local p1, "extension":Landroid/internal/framework/protobuf/nano/Extension;, "Landroid/internal/framework/protobuf/nano/Extension<*TT;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;

    .line 50
    iput-object p2, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private blacklist toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 185
    .local v0, "result":[B
    invoke-static {v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    .line 186
    .local v1, "output":Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {p0, v1}, Landroid/internal/framework/protobuf/nano/FieldData;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 187
    return-object v0
.end method


# virtual methods
.method blacklist addUnknownField(Landroid/internal/framework/protobuf/nano/UnknownFieldData;)V
    .registers 3
    .param p1, "unknownField"    # Landroid/internal/framework/protobuf/nano/UnknownFieldData;

    .line 58
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public final blacklist clone()Landroid/internal/framework/protobuf/nano/FieldData;
    .registers 6

    .line 192
    new-instance v0, Landroid/internal/framework/protobuf/nano/FieldData;

    invoke-direct {v0}, Landroid/internal/framework/protobuf/nano/FieldData;-><init>()V

    .line 194
    .local v0, "clone":Landroid/internal/framework/protobuf/nano/FieldData;
    :try_start_5
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;

    iput-object v1, v0, Landroid/internal/framework/protobuf/nano/FieldData;->cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;

    .line 195
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_11

    .line 196
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    goto :goto_18

    .line 198
    :cond_11
    iget-object v1, v0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    :goto_18
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v1, :cond_1e

    goto/16 :goto_d7

    .line 206
    :cond_1e
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, Landroid/internal/framework/protobuf/nano/MessageNano;

    if-eqz v1, :cond_30

    .line 207
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, Landroid/internal/framework/protobuf/nano/MessageNano;

    invoke-virtual {v1}, Landroid/internal/framework/protobuf/nano/MessageNano;->clone()Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_d7

    .line 208
    :cond_30
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_42

    .line 209
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_d7

    .line 210
    :cond_42
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [[B

    if-eqz v1, :cond_64

    .line 211
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [[B

    .line 212
    .local v1, "valueArray":[[B
    array-length v2, v1

    new-array v2, v2, [[B

    .line 213
    .local v2, "cloneArray":[[B
    iput-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 214
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_52
    array-length v4, v1

    if-ge v3, v4, :cond_62

    .line 215
    aget-object v4, v1, v3

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v2, v3

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 217
    .end local v1    # "valueArray":[[B
    .end local v2    # "cloneArray":[[B
    .end local v3    # "i":I
    :cond_62
    goto/16 :goto_d7

    :cond_64
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_75

    .line 218
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_d7

    .line 219
    :cond_75
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_86

    .line 220
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_d7

    .line 221
    :cond_86
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_97

    .line 222
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_d7

    .line 223
    :cond_97
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_a8

    .line 224
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_d7

    .line 225
    :cond_a8
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_b9

    .line 226
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_d7

    .line 227
    :cond_b9
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [Landroid/internal/framework/protobuf/nano/MessageNano;

    if-eqz v1, :cond_d7

    .line 228
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [Landroid/internal/framework/protobuf/nano/MessageNano;

    .line 229
    .local v1, "valueArray":[Landroid/internal/framework/protobuf/nano/MessageNano;
    array-length v2, v1

    new-array v2, v2, [Landroid/internal/framework/protobuf/nano/MessageNano;

    .line 230
    .local v2, "cloneArray":[Landroid/internal/framework/protobuf/nano/MessageNano;
    iput-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 231
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_c9
    array-length v4, v1

    if-ge v3, v4, :cond_d7

    .line 232
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/internal/framework/protobuf/nano/MessageNano;->clone()Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_d4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_d4} :catch_d8

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_c9

    .line 235
    .end local v1    # "valueArray":[Landroid/internal/framework/protobuf/nano/MessageNano;
    .end local v2    # "cloneArray":[Landroid/internal/framework/protobuf/nano/MessageNano;
    .end local v3    # "i":I
    :cond_d7
    :goto_d7
    return-object v0

    .line 236
    :catch_d8
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/FieldData;->clone()Landroid/internal/framework/protobuf/nano/FieldData;

    move-result-object v0

    return-object v0
.end method

.method blacklist computeSerializedSize()I
    .registers 5

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "size":I
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 101
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;

    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/internal/framework/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result v0

    goto :goto_26

    .line 103
    :cond_e
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/internal/framework/protobuf/nano/UnknownFieldData;

    .line 104
    .local v2, "unknownField":Landroid/internal/framework/protobuf/nano/UnknownFieldData;
    invoke-virtual {v2}, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 105
    .end local v2    # "unknownField":Landroid/internal/framework/protobuf/nano/UnknownFieldData;
    goto :goto_14

    .line 107
    :cond_26
    :goto_26
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 122
    if-ne p1, p0, :cond_4

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_4
    instance-of v0, p1, Landroid/internal/framework/protobuf/nano/FieldData;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 126
    return v1

    .line 129
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/internal/framework/protobuf/nano/FieldData;

    .line 130
    .local v0, "other":Landroid/internal/framework/protobuf/nano/FieldData;
    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_ae

    iget-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_ae

    .line 134
    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/FieldData;->cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;

    iget-object v3, v0, Landroid/internal/framework/protobuf/nano/FieldData;->cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;

    if-eq v2, v3, :cond_1c

    .line 135
    return v1

    .line 137
    :cond_1c
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;

    iget-object v1, v1, Landroid/internal/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 139
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 141
    :cond_2f
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_42

    .line 142
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 143
    :cond_42
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_55

    .line 144
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1

    .line 145
    :cond_55
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_68

    .line 146
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [J

    iget-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    return v1

    .line 147
    :cond_68
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_7b

    .line 148
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    return v1

    .line 149
    :cond_7b
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_8e

    .line 150
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [D

    iget-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [D

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    return v1

    .line 151
    :cond_8e
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_a1

    .line 152
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [Z

    iget-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Z

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    return v1

    .line 154
    :cond_a1
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 157
    :cond_ae
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_bf

    iget-object v1, v0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_bf

    .line 159
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v2, v0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 163
    :cond_bf
    :try_start_bf
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0}, Landroid/internal/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_cb} :catch_cc

    return v1

    .line 164
    :catch_cc
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method blacklist getUnknownField(I)Landroid/internal/framework/protobuf/nano/UnknownFieldData;
    .registers 4
    .param p1, "index"    # I

    .line 62
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 63
    return-object v1

    .line 65
    :cond_6
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 66
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/internal/framework/protobuf/nano/UnknownFieldData;

    return-object v0

    .line 68
    :cond_17
    return-object v1
.end method

.method blacklist getUnknownFieldSize()I
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_6

    .line 73
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_6
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method blacklist getValue(Landroid/internal/framework/protobuf/nano/Extension;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "*TT;>;)TT;"
        }
    .end annotation

    .line 79
    .local p1, "extension":Landroid/internal/framework/protobuf/nano/Extension;, "Landroid/internal/framework/protobuf/nano/Extension<*TT;>;"
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_11

    .line 80
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;

    if-ne v0, p1, :cond_9

    goto :goto_1e

    .line 81
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to getExtension with a differernt Extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_11
    iput-object p1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;

    .line 86
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/internal/framework/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 89
    :goto_1e
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 172
    const/16 v0, 0x11

    .line 175
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    :try_start_4
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_f

    add-int/2addr v1, v2

    .line 179
    .end local v0    # "result":I
    .local v1, "result":I
    nop

    .line 180
    return v1

    .line 176
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :catch_f
    move-exception v1

    .line 178
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method blacklist setValue(Landroid/internal/framework/protobuf/nano/Extension;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    .line 93
    .local p1, "extension":Landroid/internal/framework/protobuf/nano/Extension;, "Landroid/internal/framework/protobuf/nano/Extension<*TT;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;

    .line 94
    iput-object p2, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 96
    return-void
.end method

.method blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .param p1, "output"    # Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 112
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->cachedExtension:Landroid/internal/framework/protobuf/nano/Extension;

    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/internal/framework/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_22

    .line 114
    :cond_c
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/internal/framework/protobuf/nano/UnknownFieldData;

    .line 115
    .local v1, "unknownField":Landroid/internal/framework/protobuf/nano/UnknownFieldData;
    invoke-virtual {v1, p1}, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 116
    .end local v1    # "unknownField":Landroid/internal/framework/protobuf/nano/UnknownFieldData;
    goto :goto_12

    .line 118
    :cond_22
    :goto_22
    return-void
.end method
