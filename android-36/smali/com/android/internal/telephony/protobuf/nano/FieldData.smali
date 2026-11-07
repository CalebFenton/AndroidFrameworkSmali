.class Lcom/android/internal/telephony/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private blacklist cachedExtension:Lcom/android/internal/telephony/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/protobuf/nano/Extension<",
            "**>;"
        }
    .end annotation
.end field

.field private blacklist unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;",
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

    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/protobuf/nano/Extension;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->cachedExtension:Lcom/android/internal/telephony/protobuf/nano/Extension;

    .line 50
    iput-object p2, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 185
    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/protobuf/nano/FieldData;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-object v0
.end method


# virtual methods
.method blacklist addUnknownField(Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;)V
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final blacklist clone()Lcom/android/internal/telephony/protobuf/nano/FieldData;
    .registers 5

    .line 192
    new-instance v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/android/internal/telephony/protobuf/nano/FieldData;-><init>()V

    .line 194
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->cachedExtension:Lcom/android/internal/telephony/protobuf/nano/Extension;

    iput-object v1, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->cachedExtension:Lcom/android/internal/telephony/protobuf/nano/Extension;

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    .line 196
    iput-object v1, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    goto :goto_16

    .line 198
    :cond_11
    iget-object v2, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    :goto_16
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez p0, :cond_1c

    goto/16 :goto_ac

    .line 206
    :cond_1c
    instance-of v1, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    if-eqz v1, :cond_29

    .line 207
    check-cast p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->clone()Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 208
    :cond_29
    instance-of v1, p0, [B

    if-eqz v1, :cond_36

    .line 209
    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 210
    :cond_36
    instance-of v1, p0, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    .line 211
    check-cast p0, [[B

    .line 212
    array-length v1, p0

    new-array v1, v1, [[B

    .line 213
    iput-object v1, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 214
    :goto_42
    array-length v3, p0

    if-ge v2, v3, :cond_ac

    .line 215
    aget-object v3, p0, v2

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 217
    :cond_52
    instance-of v1, p0, [Z

    if-eqz v1, :cond_5f

    .line 218
    check-cast p0, [Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 219
    :cond_5f
    instance-of v1, p0, [I

    if-eqz v1, :cond_6c

    .line 220
    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 221
    :cond_6c
    instance-of v1, p0, [J

    if-eqz v1, :cond_79

    .line 222
    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 223
    :cond_79
    instance-of v1, p0, [F

    if-eqz v1, :cond_86

    .line 224
    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 225
    :cond_86
    instance-of v1, p0, [D

    if-eqz v1, :cond_93

    .line 226
    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object v0

    .line 227
    :cond_93
    instance-of v1, p0, [Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    if-eqz v1, :cond_ac

    .line 228
    check-cast p0, [Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 229
    array-length v1, p0

    new-array v1, v1, [Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 230
    iput-object v1, v0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 231
    :goto_9e
    array-length v3, p0

    if-ge v2, v3, :cond_ac

    .line 232
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->clone()Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_a9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_a9} :catch_ad

    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_ac
    :goto_ac
    return-object v0

    :catch_ad
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
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/FieldData;->clone()Lcom/android/internal/telephony/protobuf/nano/FieldData;

    move-result-object p0

    return-object p0
.end method

.method blacklist computeSerializedSize()I
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 101
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->cachedExtension:Lcom/android/internal/telephony/protobuf/nano/Extension;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 103
    :cond_b
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;

    .line 104
    invoke-virtual {v1}, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_12

    :cond_24
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 125
    :cond_4
    instance-of v0, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 129
    :cond_a
    check-cast p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_93

    iget-object v0, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_93

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->cachedExtension:Lcom/android/internal/telephony/protobuf/nano/Extension;

    iget-object v2, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;->cachedExtension:Lcom/android/internal/telephony/protobuf/nano/Extension;

    if-eq v0, v2, :cond_1b

    return v1

    .line 137
    :cond_1b
    iget-object v0, v0, Lcom/android/internal/telephony/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 139
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 141
    :cond_2c
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v0, p0, [B

    if-eqz v0, :cond_3d

    .line 142
    check-cast p0, [B

    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 143
    :cond_3d
    instance-of v0, p0, [I

    if-eqz v0, :cond_4c

    .line 144
    check-cast p0, [I

    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    .line 145
    :cond_4c
    instance-of v0, p0, [J

    if-eqz v0, :cond_5b

    .line 146
    check-cast p0, [J

    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    .line 147
    :cond_5b
    instance-of v0, p0, [F

    if-eqz v0, :cond_6a

    .line 148
    check-cast p0, [F

    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    .line 149
    :cond_6a
    instance-of v0, p0, [D

    if-eqz v0, :cond_79

    .line 150
    check-cast p0, [D

    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    .line 151
    :cond_79
    instance-of v0, p0, [Z

    if-eqz v0, :cond_88

    .line 152
    check-cast p0, [Z

    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    .line 154
    :cond_88
    check-cast p0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 157
    :cond_93
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v0, :cond_a0

    iget-object v1, p1, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_a0

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 163
    :cond_a0
    :try_start_a0
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1}, Lcom/android/internal/telephony/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ac} :catch_ad

    return p0

    :catch_ad
    move-exception p0

    .line 166
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method blacklist getValue(Lcom/android/internal/telephony/protobuf/nano/Extension;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/protobuf/nano/Extension<",
            "*TT;>;)TT;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_11

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->cachedExtension:Lcom/android/internal/telephony/protobuf/nano/Extension;

    if-ne v0, p1, :cond_9

    goto :goto_1e

    .line 81
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried to getExtension with a differernt Extension."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_11
    iput-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->cachedExtension:Lcom/android/internal/telephony/protobuf/nano/Extension;

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/Extension;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 89
    :goto_1e
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/FieldData;->toByteArray()[B

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

.method blacklist setValue(Lcom/android/internal/telephony/protobuf/nano/Extension;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/protobuf/nano/Extension<",
            "*TT;>;TT;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->cachedExtension:Lcom/android/internal/telephony/protobuf/nano/Extension;

    .line 94
    iput-object p2, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    return-void
.end method

.method blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 112
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->cachedExtension:Lcom/android/internal/telephony/protobuf/nano/Extension;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void

    .line 114
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;

    .line 115
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_10

    :cond_20
    return-void
.end method
