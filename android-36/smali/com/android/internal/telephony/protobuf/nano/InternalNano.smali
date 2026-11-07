.class public final Lcom/android/internal/telephony/protobuf/nano/InternalNano;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field static final blacklist ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final blacklist LAZY_INIT_LOCK:Ljava/lang/Object;

.field public static final blacklist TYPE_BOOL:I = 0x8

.field public static final blacklist TYPE_BYTES:I = 0xc

.field public static final blacklist TYPE_DOUBLE:I = 0x1

.field public static final blacklist TYPE_ENUM:I = 0xe

.field public static final blacklist TYPE_FIXED32:I = 0x7

.field public static final blacklist TYPE_FIXED64:I = 0x6

.field public static final blacklist TYPE_FLOAT:I = 0x2

.field public static final blacklist TYPE_GROUP:I = 0xa

.field public static final blacklist TYPE_INT32:I = 0x5

.field public static final blacklist TYPE_INT64:I = 0x3

.field public static final blacklist TYPE_MESSAGE:I = 0xb

.field public static final blacklist TYPE_SFIXED32:I = 0xf

.field public static final blacklist TYPE_SFIXED64:I = 0x10

.field public static final blacklist TYPE_SINT32:I = 0x11

.field public static final blacklist TYPE_SINT64:I = 0x12

.field public static final blacklist TYPE_STRING:I = 0x9

.field public static final blacklist TYPE_UINT32:I = 0xd

.field public static final blacklist TYPE_UINT64:I = 0x4

.field static final blacklist UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bytesDefaultValue(Ljava/lang/String;)[B
    .registers 2

    .line 128
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist cloneUnknownFieldData(Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;)V
    .registers 2

    .line 543
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    if-eqz p0, :cond_a

    .line 544
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/FieldArray;->clone()Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    move-result-object p0

    iput-object p0, p1, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    :cond_a
    return-void
.end method

.method public static blacklist computeMapFieldSize(Ljava/util/Map;III)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;III)I"
        }
    .end annotation

    .line 464
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p1

    .line 465
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 466
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 467
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_39

    if-eqz v1, :cond_39

    const/4 v3, 0x1

    .line 473
    invoke-static {v3, p2, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v2

    const/4 v3, 0x2

    .line 474
    invoke-static {v3, p3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    add-int v1, p1, v2

    .line 476
    invoke-static {v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_d

    .line 469
    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "keys and values in maps cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    return v0
.end method

.method public static blacklist copyFromUtf8(Ljava/lang/String;)[B
    .registers 2

    .line 136
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist equals(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p0, :cond_f

    .line 491
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_e

    return v0

    :cond_e
    return v1

    :cond_f
    if-nez p1, :cond_19

    .line 494
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_18

    return v0

    :cond_18
    return v1

    .line 496
    :cond_19
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_24

    return v1

    .line 499
    :cond_24
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 500
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    return v1

    .line 503
    :cond_43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->equalsMapValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    :cond_56
    return v0
.end method

.method public static blacklist equals([D[D)Z
    .registers 3

    if-eqz p0, :cond_b

    .line 180
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    .line 183
    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    :cond_b
    :goto_b
    if-eqz p1, :cond_13

    .line 181
    array-length p0, p1

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist equals([F[F)Z
    .registers 3

    if-eqz p0, :cond_b

    .line 168
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    .line 171
    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    :cond_b
    :goto_b
    if-eqz p1, :cond_13

    .line 169
    array-length p0, p1

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist equals([I[I)Z
    .registers 3

    if-eqz p0, :cond_b

    .line 144
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    .line 147
    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_b
    :goto_b
    if-eqz p1, :cond_13

    .line 145
    array-length p0, p1

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist equals([J[J)Z
    .registers 3

    if-eqz p0, :cond_b

    .line 156
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    .line 159
    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    :cond_b
    :goto_b
    if-eqz p1, :cond_13

    .line 157
    array-length p0, p1

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_6

    .line 242
    :cond_5
    array-length v1, p0

    :goto_6
    if-nez p1, :cond_a

    move v2, v0

    goto :goto_b

    .line 244
    :cond_a
    array-length v2, p1

    :goto_b
    move v3, v0

    move v4, v3

    :goto_d
    if-ge v3, v1, :cond_16

    .line 246
    aget-object v5, p0, v3

    if-nez v5, :cond_16

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_16
    :goto_16
    if-ge v4, v2, :cond_1f

    .line 249
    aget-object v5, p1, v4

    if-nez v5, :cond_1f

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_1f
    const/4 v5, 0x1

    if-lt v3, v1, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    move v6, v0

    :goto_25
    if-lt v4, v2, :cond_29

    move v7, v5

    goto :goto_2a

    :cond_29
    move v7, v0

    :goto_2a
    if-eqz v6, :cond_2f

    if-eqz v7, :cond_2f

    return v5

    :cond_2f
    if-eq v6, v7, :cond_32

    return v0

    .line 260
    :cond_32
    aget-object v5, p0, v3

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    return v0

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_d
.end method

.method public static blacklist equals([Z[Z)Z
    .registers 3

    if-eqz p0, :cond_b

    .line 192
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    .line 195
    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    :cond_b
    :goto_b
    if-eqz p1, :cond_13

    .line 193
    array-length p0, p1

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist equals([[B[[B)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_6

    .line 207
    :cond_5
    array-length v1, p0

    :goto_6
    if-nez p1, :cond_a

    move v2, v0

    goto :goto_b

    .line 209
    :cond_a
    array-length v2, p1

    :goto_b
    move v3, v0

    move v4, v3

    :goto_d
    if-ge v3, v1, :cond_16

    .line 211
    aget-object v5, p0, v3

    if-nez v5, :cond_16

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_16
    :goto_16
    if-ge v4, v2, :cond_1f

    .line 214
    aget-object v5, p1, v4

    if-nez v5, :cond_1f

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_1f
    const/4 v5, 0x1

    if-lt v3, v1, :cond_24

    move v6, v5

    goto :goto_25

    :cond_24
    move v6, v0

    :goto_25
    if-lt v4, v2, :cond_29

    move v7, v5

    goto :goto_2a

    :cond_29
    move v7, v0

    :goto_2a
    if-eqz v6, :cond_2f

    if-eqz v7, :cond_2f

    return v5

    :cond_2f
    if-eq v6, v7, :cond_32

    return v0

    .line 225
    :cond_32
    aget-object v5, p0, v3

    aget-object v6, p1, v4

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_3d

    return v0

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_d
.end method

.method private static blacklist equalsMapValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    .line 515
    instance-of v0, p0, [B

    if-eqz v0, :cond_15

    instance-of v0, p1, [B

    if-eqz v0, :cond_15

    .line 516
    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 518
    :cond_15
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 512
    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "keys and values in maps cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist hashCode(Ljava/util/Map;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 526
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 527
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->hashCodeForMap(Ljava/lang/Object;)I

    move-result v2

    .line 528
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->hashCodeForMap(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_c

    :cond_2b
    return v0
.end method

.method public static blacklist hashCode([D)I
    .registers 2

    if-eqz p0, :cond_b

    .line 298
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist hashCode([F)I
    .registers 2

    if-eqz p0, :cond_b

    .line 290
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist hashCode([I)I
    .registers 2

    if-eqz p0, :cond_b

    .line 274
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist hashCode([J)I
    .registers 2

    if-eqz p0, :cond_b

    .line 282
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist hashCode([Ljava/lang/Object;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_6

    .line 333
    :cond_5
    array-length v1, p0

    :goto_6
    move v2, v0

    :goto_7
    if-ge v0, v1, :cond_17

    .line 334
    aget-object v3, p0, v0

    if-eqz v3, :cond_14

    mul-int/lit8 v2, v2, 0x1f

    .line 336
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    return v2
.end method

.method public static blacklist hashCode([Z)I
    .registers 2

    if-eqz p0, :cond_b

    .line 306
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist hashCode([[B)I
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_6

    .line 316
    :cond_5
    array-length v1, p0

    :goto_6
    move v2, v0

    :goto_7
    if-ge v0, v1, :cond_17

    .line 317
    aget-object v3, p0, v0

    if-eqz v3, :cond_14

    mul-int/lit8 v2, v2, 0x1f

    .line 319
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    return v2
.end method

.method private static blacklist hashCodeForMap(Ljava/lang/Object;)I
    .registers 2

    .line 534
    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    .line 535
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0

    .line 537
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static final blacklist mergeMapEntry(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;Ljava/util/Map;Lcom/android/internal/telephony/protobuf/nano/MapFactories$MapFactory;IILjava/lang/Object;II)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/internal/telephony/protobuf/nano/MapFactories$MapFactory;",
            "IITV;II)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-interface {p2, p1}, Lcom/android/internal/telephony/protobuf/nano/MapFactories$MapFactory;->forMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 401
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result p2

    .line 402
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result p2

    const/4 v0, 0x0

    .line 405
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_33

    :cond_14
    if-ne v1, p6, :cond_1b

    .line 410
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_1b
    if-ne v1, p7, :cond_2d

    const/16 v1, 0xb

    if-ne p4, v1, :cond_28

    .line 413
    move-object v1, p5

    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_d

    .line 415
    :cond_28
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object p5

    goto :goto_d

    .line 418
    :cond_2d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_33
    const/4 p6, 0x0

    .line 423
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    .line 424
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    if-nez v0, :cond_40

    .line 428
    invoke-static {p3}, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->primitiveDefaultValue(I)Ljava/lang/Object;

    move-result-object v0

    :cond_40
    if-nez p5, :cond_46

    .line 433
    invoke-static {p4}, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->primitiveDefaultValue(I)Ljava/lang/Object;

    move-result-object p5

    .line 436
    :cond_46
    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private static blacklist primitiveDefaultValue(I)Ljava/lang/Object;
    .registers 4

    packed-switch p0, :pswitch_data_42

    .line 369
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a primitive type."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :pswitch_1f
    sget-object p0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object p0

    .line 348
    :pswitch_22
    const-string p0, ""

    return-object p0

    .line 344
    :pswitch_25
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_28
    const/4 p0, 0x0

    .line 359
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2e
    const-wide/16 v0, 0x0

    .line 365
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_35
    const/4 p0, 0x0

    .line 350
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_3b
    const-wide/16 v0, 0x0

    .line 352
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_35
        :pswitch_2e
        :pswitch_2e
        :pswitch_28
        :pswitch_2e
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_1f
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_2e
        :pswitch_28
        :pswitch_2e
    .end packed-switch
.end method

.method public static blacklist serializeMapField(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;Ljava/util/Map;III)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;",
            "Ljava/util/Map<",
            "TK;TV;>;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 446
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v1, :cond_38

    if-eqz v0, :cond_38

    const/4 v2, 0x1

    .line 452
    invoke-static {v2, p3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v3

    const/4 v4, 0x2

    .line 453
    invoke-static {v4, p4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFieldSize(IILjava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    .line 454
    invoke-virtual {p0, p2, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 455
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 456
    invoke-virtual {p0, v2, p3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeField(IILjava/lang/Object;)V

    .line 457
    invoke-virtual {p0, v4, p4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeField(IILjava/lang/Object;)V

    goto :goto_8

    .line 448
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "keys and values in maps cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    return-void
.end method

.method public static blacklist stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
