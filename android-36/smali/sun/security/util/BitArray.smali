.class public Lsun/security/util/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# static fields
.field private static final greylist-max-o BITS_PER_UNIT:I = 0x8

.field private static final greylist-max-o BYTES_PER_LINE:I = 0x8

.field private static final greylist-max-o NYBBLE:[[B


# instance fields
.field private greylist-max-o length:I

.field private greylist-max-o repn:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 229
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_5a

    new-array v2, v0, [B

    fill-array-data v2, :array_60

    new-array v3, v0, [B

    fill-array-data v3, :array_66

    new-array v4, v0, [B

    fill-array-data v4, :array_6c

    new-array v5, v0, [B

    fill-array-data v5, :array_72

    new-array v6, v0, [B

    fill-array-data v6, :array_78

    new-array v7, v0, [B

    fill-array-data v7, :array_7e

    new-array v8, v0, [B

    fill-array-data v8, :array_84

    new-array v9, v0, [B

    fill-array-data v9, :array_8a

    new-array v10, v0, [B

    fill-array-data v10, :array_90

    new-array v11, v0, [B

    fill-array-data v11, :array_96

    new-array v12, v0, [B

    fill-array-data v12, :array_9c

    new-array v13, v0, [B

    fill-array-data v13, :array_a2

    new-array v14, v0, [B

    fill-array-data v14, :array_a8

    new-array v15, v0, [B

    fill-array-data v15, :array_ae

    new-array v0, v0, [B

    fill-array-data v0, :array_b4

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [[B

    move-result-object v0

    sput-object v0, Lsun/security/util/BitArray;->NYBBLE:[[B

    return-void

    :array_5a
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data

    :array_60
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_66
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_6c
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_72
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_78
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_7e
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_84
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x31t
    .end array-data

    :array_8a
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x30t
    .end array-data

    :array_90
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_96
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_9c
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_a2
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_a8
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_ae
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_b4
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x31t
    .end array-data
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-ltz p1, :cond_12

    .line 61
    iput p1, p0, Lsun/security/util/BitArray;->length:I

    .line 63
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    .line 64
    return-void

    .line 58
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative length for BitArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist <init>(I[B)V
    .registers 4
    .param p1, "length"    # I
    .param p2, "a"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/BitArray;-><init>(I[BI)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(I[BI)V
    .registers 10
    .param p1, "length"    # I
    .param p2, "a"    # [B
    .param p3, "ofs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-ltz p1, :cond_50

    .line 89
    array-length v0, p2

    sub-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x8

    if-lt v0, p1, :cond_31

    .line 94
    iput p1, p0, Lsun/security/util/BitArray;->length:I

    .line 96
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    .line 97
    .local v0, "repLength":I
    mul-int/lit8 v1, v0, 0x8

    sub-int/2addr v1, p1

    .line 98
    .local v1, "unusedBits":I
    const/16 v2, 0xff

    shl-int/2addr v2, v1

    int-to-byte v2, v2

    .line 105
    .local v2, "bitMask":B
    new-array v3, v0, [B

    iput-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    .line 106
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    const/4 v4, 0x0

    invoke-static {p2, p3, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    if-lez v0, :cond_30

    .line 108
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v3, v4

    and-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 110
    :cond_30
    return-void

    .line 90
    .end local v0    # "repLength":I
    .end local v1    # "unusedBits":I
    .end local v2    # "bitMask":B
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Byte array too short to represent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-bit array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative length for BitArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Lsun/security/util/BitArray;)V
    .registers 3
    .param p1, "ba"    # Lsun/security/util/BitArray;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iget v0, p1, Lsun/security/util/BitArray;->length:I

    iput v0, p0, Lsun/security/util/BitArray;->length:I

    .line 131
    iget-object v0, p1, Lsun/security/util/BitArray;->repn:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    .line 132
    return-void
.end method

.method public constructor blacklist <init>([Z)V
    .registers 4
    .param p1, "bits"    # [Z

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    array-length v0, p1

    iput v0, p0, Lsun/security/util/BitArray;->length:I

    .line 118
    iget v0, p0, Lsun/security/util/BitArray;->length:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    if-ge v0, v1, :cond_1d

    .line 121
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lsun/security/util/BitArray;->set(IZ)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 123
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private static greylist-max-o position(I)I
    .registers 3
    .param p0, "idx"    # I

    .line 50
    rem-int/lit8 v0, p0, 0x8

    rsub-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method private static greylist-max-o subscript(I)I
    .registers 2
    .param p0, "idx"    # I

    .line 46
    div-int/lit8 v0, p0, 0x8

    return v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 225
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, p0}, Lsun/security/util/BitArray;-><init>(Lsun/security/util/BitArray;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 184
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 185
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    instance-of v2, p1, Lsun/security/util/BitArray;

    if-nez v2, :cond_c

    goto :goto_2b

    .line 187
    :cond_c
    move-object v2, p1

    check-cast v2, Lsun/security/util/BitArray;

    .line 189
    .local v2, "ba":Lsun/security/util/BitArray;
    iget v3, v2, Lsun/security/util/BitArray;->length:I

    iget v4, p0, Lsun/security/util/BitArray;->length:I

    if-eq v3, v4, :cond_16

    return v1

    .line 191
    :cond_16
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    iget-object v4, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v4, v4

    if-ge v3, v4, :cond_2a

    .line 192
    iget-object v4, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v4, v4, v3

    iget-object v5, v2, Lsun/security/util/BitArray;->repn:[B

    aget-byte v5, v5, v3

    if-eq v4, v5, :cond_27

    return v1

    .line 191
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 194
    .end local v3    # "i":I
    :cond_2a
    return v0

    .line 185
    .end local v2    # "ba":Lsun/security/util/BitArray;
    :cond_2b
    :goto_2b
    return v1
.end method

.method public blacklist get(I)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 138
    if-ltz p1, :cond_19

    iget v0, p0, Lsun/security/util/BitArray;->length:I

    if-ge p1, v0, :cond_19

    .line 142
    iget-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    invoke-static {p1}, Lsun/security/util/BitArray;->subscript(I)I

    move-result v1

    aget-byte v0, v0, v1

    invoke-static {p1}, Lsun/security/util/BitArray;->position(I)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0

    .line 139
    :cond_19
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 218
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v3, v1

    add-int v0, v2, v3

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 220
    .end local v1    # "i":I
    :cond_12
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    xor-int/2addr v1, v0

    return v1
.end method

.method public blacklist length()I
    .registers 2

    .line 167
    iget v0, p0, Lsun/security/util/BitArray;->length:I

    return v0
.end method

.method public blacklist set(IZ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 150
    if-ltz p1, :cond_23

    iget v0, p0, Lsun/security/util/BitArray;->length:I

    if-ge p1, v0, :cond_23

    .line 153
    invoke-static {p1}, Lsun/security/util/BitArray;->subscript(I)I

    move-result v0

    .line 154
    .local v0, "idx":I
    invoke-static {p1}, Lsun/security/util/BitArray;->position(I)I

    move-result v1

    .line 156
    .local v1, "bit":I
    if-eqz p2, :cond_19

    .line 157
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v2, v0

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_22

    .line 159
    :cond_19
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v2, v0

    not-int v4, v1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 161
    :goto_22
    return-void

    .line 151
    .end local v0    # "idx":I
    .end local v1    # "bit":I
    :cond_23
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist toBooleanArray()[Z
    .registers 4

    .line 201
    iget v0, p0, Lsun/security/util/BitArray;->length:I

    new-array v0, v0, [Z

    .line 203
    .local v0, "bits":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    if-ge v1, v2, :cond_12

    .line 204
    invoke-virtual {p0, v1}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 206
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public greylist toByteArray()[B
    .registers 2

    .line 180
    iget-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 254
    iget v0, p0, Lsun/security/util/BitArray;->length:I

    if-nez v0, :cond_7

    .line 255
    const-string v0, ""

    return-object v0

    .line 258
    :cond_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_44

    .line 261
    sget-object v2, Lsun/security/util/BitArray;->NYBBLE:[[B

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v3, v1

    const/4 v4, 0x4

    shr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 262
    sget-object v2, Lsun/security/util/BitArray;->NYBBLE:[[B

    iget-object v5, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v5, v5, v1

    and-int/lit8 v5, v5, 0xf

    aget-object v2, v2, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 264
    rem-int/lit8 v2, v1, 0x8

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3c

    .line 265
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_41

    .line 267
    :cond_3c
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 260
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 272
    .end local v1    # "i":I
    :cond_44
    iget-object v1, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x8

    .restart local v1    # "i":I
    :goto_4b
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    if-ge v1, v2, :cond_60

    .line 273
    invoke-virtual {p0, v1}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_58

    const/16 v2, 0x31

    goto :goto_5a

    :cond_58
    const/16 v2, 0x30

    :goto_5a
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 276
    .end local v1    # "i":I
    :cond_60
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public blacklist truncate()Lsun/security/util/BitArray;
    .registers 6

    .line 281
    iget v0, p0, Lsun/security/util/BitArray;->length:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_1a

    .line 282
    invoke-virtual {p0, v0}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 283
    new-instance v1, Lsun/security/util/BitArray;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lsun/security/util/BitArray;-><init>(I[BI)V

    return-object v1

    .line 281
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 286
    .end local v0    # "i":I
    :cond_1a
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, v1}, Lsun/security/util/BitArray;-><init>(I)V

    return-object v0
.end method
