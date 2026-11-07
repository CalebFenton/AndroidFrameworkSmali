.class Lcom/android/phone/ecc/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private blacklist unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/phone/ecc/nano/UnknownFieldData;",
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

    iput-object v0, p0, Lcom/android/phone/ecc/nano/FieldData;->unknownFieldData:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/FieldData;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 185
    invoke-static {v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/phone/ecc/nano/FieldData;->writeTo(Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;)V

    return-object v0
.end method


# virtual methods
.method blacklist addUnknownField(Lcom/android/phone/ecc/nano/UnknownFieldData;)V
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/phone/ecc/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final blacklist clone()Lcom/android/phone/ecc/nano/FieldData;
    .registers 5

    .line 192
    new-instance v0, Lcom/android/phone/ecc/nano/FieldData;

    invoke-direct {v0}, Lcom/android/phone/ecc/nano/FieldData;-><init>()V

    .line 195
    :try_start_5
    iget-object v1, p0, Lcom/android/phone/ecc/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 196
    iput-object v1, v0, Lcom/android/phone/ecc/nano/FieldData;->unknownFieldData:Ljava/util/List;

    goto :goto_12

    .line 198
    :cond_d
    iget-object v2, v0, Lcom/android/phone/ecc/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    :goto_12
    iget-object p0, p0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    if-nez p0, :cond_18

    goto/16 :goto_a8

    .line 206
    :cond_18
    instance-of v1, p0, Lcom/android/phone/ecc/nano/MessageNano;

    if-eqz v1, :cond_25

    .line 207
    check-cast p0, Lcom/android/phone/ecc/nano/MessageNano;

    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/MessageNano;->clone()Lcom/android/phone/ecc/nano/MessageNano;

    move-result-object p0

    iput-object p0, v0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 208
    :cond_25
    instance-of v1, p0, [B

    if-eqz v1, :cond_32

    .line 209
    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 210
    :cond_32
    instance-of v1, p0, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_4e

    .line 211
    check-cast p0, [[B

    .line 212
    array-length v1, p0

    new-array v1, v1, [[B

    .line 213
    iput-object v1, v0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    .line 214
    :goto_3e
    array-length v3, p0

    if-ge v2, v3, :cond_a8

    .line 215
    aget-object v3, p0, v2

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 217
    :cond_4e
    instance-of v1, p0, [Z

    if-eqz v1, :cond_5b

    .line 218
    check-cast p0, [Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 219
    :cond_5b
    instance-of v1, p0, [I

    if-eqz v1, :cond_68

    .line 220
    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 221
    :cond_68
    instance-of v1, p0, [J

    if-eqz v1, :cond_75

    .line 222
    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 223
    :cond_75
    instance-of v1, p0, [F

    if-eqz v1, :cond_82

    .line 224
    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 225
    :cond_82
    instance-of v1, p0, [D

    if-eqz v1, :cond_8f

    .line 226
    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 227
    :cond_8f
    instance-of v1, p0, [Lcom/android/phone/ecc/nano/MessageNano;

    if-eqz v1, :cond_a8

    .line 228
    check-cast p0, [Lcom/android/phone/ecc/nano/MessageNano;

    .line 229
    array-length v1, p0

    new-array v1, v1, [Lcom/android/phone/ecc/nano/MessageNano;

    .line 230
    iput-object v1, v0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    .line 231
    :goto_9a
    array-length v3, p0

    if-ge v2, v3, :cond_a8

    .line 232
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/android/phone/ecc/nano/MessageNano;->clone()Lcom/android/phone/ecc/nano/MessageNano;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_a5
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_a5} :catch_a9

    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    :cond_a8
    :goto_a8
    return-object v0

    :catch_a9
    move-exception p0

    .line 237
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/FieldData;->clone()Lcom/android/phone/ecc/nano/FieldData;

    move-result-object p0

    return-object p0
.end method

.method blacklist computeSerializedSize()I
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v0, :cond_1e

    .line 103
    iget-object p0, p0, Lcom/android/phone/ecc/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ecc/nano/UnknownFieldData;

    .line 104
    invoke-virtual {v1}, Lcom/android/phone/ecc/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_b

    :cond_1d
    return v0

    :cond_1e
    const/4 p0, 0x0

    .line 101
    throw p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 125
    :cond_4
    instance-of v0, p1, Lcom/android/phone/ecc/nano/FieldData;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_a
    check-cast p1, Lcom/android/phone/ecc/nano/FieldData;

    .line 130
    iget-object v0, p0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    .line 137
    throw p0

    .line 157
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/phone/ecc/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v0, :cond_24

    iget-object v1, p1, Lcom/android/phone/ecc/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_24

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 163
    :cond_24
    :try_start_24
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/FieldData;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1}, Lcom/android/phone/ecc/nano/FieldData;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_30} :catch_31

    return p0

    :catch_31
    move-exception p0

    .line 166
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/FieldData;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_c

    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0

    :catch_c
    move-exception p0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method blacklist writeTo(Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/phone/ecc/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v0, :cond_1b

    .line 114
    iget-object p0, p0, Lcom/android/phone/ecc/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ecc/nano/UnknownFieldData;

    .line 115
    invoke-virtual {v0, p1}, Lcom/android/phone/ecc/nano/UnknownFieldData;->writeTo(Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;)V

    goto :goto_a

    :cond_1a
    return-void

    :cond_1b
    const/4 p0, 0x0

    .line 112
    throw p0
.end method
