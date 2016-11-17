.class public Lsun/security/util/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# static fields
.field private static final BITS_PER_UNIT:I = 0x8

.field private static final BYTES_PER_LINE:I = 0x8

.field private static final NYBBLE:[[B


# instance fields
.field private length:I

.field private repn:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    .line 219
    const/16 v0, 0x10

    #@3
    new-array v0, v0, [[B

    #@5
    .line 220
    new-array v1, v3, [B

    #@7
    fill-array-data v1, :array_0

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 221
    new-array v1, v3, [B

    #@f
    fill-array-data v1, :array_1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    .line 222
    new-array v1, v3, [B

    #@17
    fill-array-data v1, :array_2

    #@1a
    const/4 v2, 0x2

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 223
    new-array v1, v3, [B

    #@1f
    fill-array-data v1, :array_3

    #@22
    const/4 v2, 0x3

    #@23
    aput-object v1, v0, v2

    #@25
    .line 224
    new-array v1, v3, [B

    #@27
    fill-array-data v1, :array_4

    #@2a
    aput-object v1, v0, v3

    #@2c
    .line 225
    new-array v1, v3, [B

    #@2e
    fill-array-data v1, :array_5

    #@31
    const/4 v2, 0x5

    #@32
    aput-object v1, v0, v2

    #@34
    .line 226
    new-array v1, v3, [B

    #@36
    fill-array-data v1, :array_6

    #@39
    const/4 v2, 0x6

    #@3a
    aput-object v1, v0, v2

    #@3c
    .line 227
    new-array v1, v3, [B

    #@3e
    fill-array-data v1, :array_7

    #@41
    const/4 v2, 0x7

    #@42
    aput-object v1, v0, v2

    #@44
    .line 228
    new-array v1, v3, [B

    #@46
    fill-array-data v1, :array_8

    #@49
    const/16 v2, 0x8

    #@4b
    aput-object v1, v0, v2

    #@4d
    .line 229
    new-array v1, v3, [B

    #@4f
    fill-array-data v1, :array_9

    #@52
    const/16 v2, 0x9

    #@54
    aput-object v1, v0, v2

    #@56
    .line 230
    new-array v1, v3, [B

    #@58
    fill-array-data v1, :array_a

    #@5b
    const/16 v2, 0xa

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 231
    new-array v1, v3, [B

    #@61
    fill-array-data v1, :array_b

    #@64
    const/16 v2, 0xb

    #@66
    aput-object v1, v0, v2

    #@68
    .line 232
    new-array v1, v3, [B

    #@6a
    fill-array-data v1, :array_c

    #@6d
    const/16 v2, 0xc

    #@6f
    aput-object v1, v0, v2

    #@71
    .line 233
    new-array v1, v3, [B

    #@73
    fill-array-data v1, :array_d

    #@76
    const/16 v2, 0xd

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 234
    new-array v1, v3, [B

    #@7c
    fill-array-data v1, :array_e

    #@7f
    const/16 v2, 0xe

    #@81
    aput-object v1, v0, v2

    #@83
    .line 235
    new-array v1, v3, [B

    #@85
    fill-array-data v1, :array_f

    #@88
    const/16 v2, 0xf

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 219
    sput-object v0, Lsun/security/util/BitArray;->NYBBLE:[[B

    #@8e
    .line 38
    return-void

    #@8f
    .line 220
    nop

    #@90
    :array_0
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data

    #@96
    .line 221
    :array_1
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x31t
    .end array-data

    #@9c
    .line 222
    :array_2
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x30t
    .end array-data

    #@a2
    .line 223
    :array_3
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x31t
    .end array-data

    #@a8
    .line 224
    :array_4
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data

    #@ae
    .line 225
    :array_5
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x31t
    .end array-data

    #@b4
    .line 226
    :array_6
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x30t
    .end array-data

    #@ba
    .line 227
    :array_7
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x31t
    .end array-data

    #@c0
    .line 228
    :array_8
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x30t
    .end array-data

    #@c6
    .line 229
    :array_9
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x31t
    .end array-data

    #@cc
    .line 230
    :array_a
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x30t
    .end array-data

    #@d2
    .line 231
    :array_b
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x31t
    .end array-data

    #@d8
    .line 232
    :array_c
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x30t
    .end array-data

    #@de
    .line 233
    :array_d
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x31t
    .end array-data

    #@e4
    .line 234
    :array_e
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x30t
    .end array-data

    #@ea
    .line 235
    :array_f
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x31t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    if-gez p1, :cond_0

    #@5
    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Negative length for BitArray"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 61
    :cond_0
    iput p1, p0, Lsun/security/util/BitArray;->length:I

    #@10
    .line 63
    add-int/lit8 v0, p1, 0x8

    #@12
    add-int/lit8 v0, v0, -0x1

    #@14
    div-int/lit8 v0, v0, 0x8

    #@16
    new-array v0, v0, [B

    #@18
    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    #@1a
    .line 56
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "a"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 76
    if-gez p1, :cond_0

    #@6
    .line 77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "Negative length for BitArray"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 79
    :cond_0
    array-length v3, p2

    #@10
    mul-int/lit8 v3, v3, 0x8

    #@12
    if-ge v3, p1, :cond_1

    #@14
    .line 80
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v4, "Byte array too short to represent bit array of given length"

    #@19
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v3

    #@1d
    .line 84
    :cond_1
    iput p1, p0, Lsun/security/util/BitArray;->length:I

    #@1f
    .line 86
    add-int/lit8 v3, p1, 0x8

    #@21
    add-int/lit8 v3, v3, -0x1

    #@23
    div-int/lit8 v1, v3, 0x8

    #@25
    .line 87
    .local v1, "repLength":I
    mul-int/lit8 v3, v1, 0x8

    #@27
    sub-int v2, v3, p1

    #@29
    .line 88
    .local v2, "unusedBits":I
    const/16 v3, 0xff

    #@2b
    shl-int/2addr v3, v2

    #@2c
    int-to-byte v0, v3

    #@2d
    .line 95
    .local v0, "bitMask":B
    new-array v3, v1, [B

    #@2f
    iput-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    #@31
    .line 96
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    #@33
    invoke-static {p2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@36
    .line 97
    if-lez v1, :cond_2

    #@38
    .line 98
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    #@3a
    add-int/lit8 v4, v1, -0x1

    #@3c
    aget-byte v5, v3, v4

    #@3e
    and-int/2addr v5, v0

    #@3f
    int-to-byte v5, v5

    #@40
    aput-byte v5, v3, v4

    #@42
    .line 74
    :cond_2
    return-void
.end method

.method private constructor <init>(Lsun/security/util/BitArray;)V
    .locals 1
    .param p1, "ba"    # Lsun/security/util/BitArray;

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 120
    iget v0, p1, Lsun/security/util/BitArray;->length:I

    #@5
    iput v0, p0, Lsun/security/util/BitArray;->length:I

    #@7
    .line 121
    iget-object v0, p1, Lsun/security/util/BitArray;->repn:[B

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [B

    #@f
    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    #@11
    .line 119
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 2
    .param p1, "bits"    # [Z

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 107
    array-length v1, p1

    #@4
    iput v1, p0, Lsun/security/util/BitArray;->length:I

    #@6
    .line 108
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    #@8
    add-int/lit8 v1, v1, 0x7

    #@a
    div-int/lit8 v1, v1, 0x8

    #@c
    new-array v1, v1, [B

    #@e
    iput-object v1, p0, Lsun/security/util/BitArray;->repn:[B

    #@10
    .line 110
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    #@13
    if-ge v0, v1, :cond_0

    #@15
    .line 111
    aget-boolean v1, p1, v0

    #@17
    invoke-virtual {p0, v0, v1}, Lsun/security/util/BitArray;->set(IZ)V

    #@1a
    .line 110
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 106
    :cond_0
    return-void
.end method

.method private static position(I)I
    .locals 2
    .param p0, "idx"    # I

    #@0
    .prologue
    .line 50
    rem-int/lit8 v0, p0, 0x8

    #@2
    rsub-int/lit8 v0, v0, 0x7

    #@4
    const/4 v1, 0x1

    #@5
    shl-int v0, v1, v0

    #@7
    return v0
.end method

.method private static subscript(I)I
    .locals 1
    .param p0, "idx"    # I

    #@0
    .prologue
    .line 46
    div-int/lit8 v0, p0, 0x8

    #@2
    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 215
    new-instance v0, Lsun/security/util/BitArray;

    #@2
    invoke-direct {v0, p0}, Lsun/security/util/BitArray;-><init>(Lsun/security/util/BitArray;)V

    #@5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 174
    if-ne p1, p0, :cond_0

    #@4
    return v5

    #@5
    .line 175
    :cond_0
    if-eqz p1, :cond_1

    #@7
    instance-of v2, p1, Lsun/security/util/BitArray;

    #@9
    if-eqz v2, :cond_1

    #@b
    move-object v0, p1

    #@c
    .line 177
    check-cast v0, Lsun/security/util/BitArray;

    #@e
    .line 179
    .local v0, "ba":Lsun/security/util/BitArray;
    iget v2, v0, Lsun/security/util/BitArray;->length:I

    #@10
    iget v3, p0, Lsun/security/util/BitArray;->length:I

    #@12
    if-eq v2, v3, :cond_2

    #@14
    return v4

    #@15
    .line 175
    .end local v0    # "ba":Lsun/security/util/BitArray;
    :cond_1
    return v4

    #@16
    .line 181
    .restart local v0    # "ba":Lsun/security/util/BitArray;
    :cond_2
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    #@19
    array-length v2, v2

    #@1a
    if-ge v1, v2, :cond_4

    #@1c
    .line 182
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    #@1e
    aget-byte v2, v2, v1

    #@20
    iget-object v3, v0, Lsun/security/util/BitArray;->repn:[B

    #@22
    aget-byte v3, v3, v1

    #@24
    if-eq v2, v3, :cond_3

    #@26
    return v4

    #@27
    .line 181
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 184
    :cond_4
    return v5
.end method

.method public get(I)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 128
    if-ltz p1, :cond_0

    #@3
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    #@5
    if-lt p1, v1, :cond_1

    #@7
    .line 129
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 132
    :cond_1
    iget-object v1, p0, Lsun/security/util/BitArray;->repn:[B

    #@13
    invoke-static {p1}, Lsun/security/util/BitArray;->subscript(I)I

    #@16
    move-result v2

    #@17
    aget-byte v1, v1, v2

    #@19
    invoke-static {p1}, Lsun/security/util/BitArray;->position(I)I

    #@1c
    move-result v2

    #@1d
    and-int/2addr v1, v2

    #@1e
    if-eqz v1, :cond_2

    #@20
    const/4 v0, 0x1

    #@21
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 205
    const/4 v0, 0x0

    #@1
    .line 207
    .local v0, "hashCode":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 208
    mul-int/lit8 v2, v0, 0x1f

    #@9
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    #@b
    aget-byte v3, v3, v1

    #@d
    add-int v0, v2, v3

    #@f
    .line 207
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 210
    :cond_0
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    #@14
    xor-int/2addr v2, v0

    #@15
    return v2
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 157
    iget v0, p0, Lsun/security/util/BitArray;->length:I

    #@2
    return v0
.end method

.method public set(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    if-ltz p1, :cond_0

    #@2
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    #@4
    if-lt p1, v2, :cond_1

    #@6
    .line 141
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 143
    :cond_1
    invoke-static {p1}, Lsun/security/util/BitArray;->subscript(I)I

    #@13
    move-result v1

    #@14
    .line 144
    .local v1, "idx":I
    invoke-static {p1}, Lsun/security/util/BitArray;->position(I)I

    #@17
    move-result v0

    #@18
    .line 146
    .local v0, "bit":I
    if-eqz p2, :cond_2

    #@1a
    .line 147
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    #@1c
    aget-byte v3, v2, v1

    #@1e
    or-int/2addr v3, v0

    #@1f
    int-to-byte v3, v3

    #@20
    aput-byte v3, v2, v1

    #@22
    .line 139
    :goto_0
    return-void

    #@23
    .line 149
    :cond_2
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    #@25
    aget-byte v3, v2, v1

    #@27
    not-int v4, v0

    #@28
    and-int/2addr v3, v4

    #@29
    int-to-byte v3, v3

    #@2a
    aput-byte v3, v2, v1

    #@2c
    goto :goto_0
.end method

.method public toBooleanArray()[Z
    .locals 3

    #@0
    .prologue
    .line 191
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    #@2
    new-array v0, v2, [Z

    #@4
    .line 193
    .local v0, "bits":[Z
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    #@7
    if-ge v1, v2, :cond_0

    #@9
    .line 194
    invoke-virtual {p0, v1}, Lsun/security/util/BitArray;->get(I)Z

    #@c
    move-result v2

    #@d
    aput-boolean v2, v0, v1

    #@f
    .line 193
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 196
    :cond_0
    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v4, 0x0

    #@2
    .line 244
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@4
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@7
    .line 246
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    #@a
    array-length v2, v2

    #@b
    add-int/lit8 v2, v2, -0x1

    #@d
    if-ge v0, v2, :cond_1

    #@f
    .line 247
    sget-object v2, Lsun/security/util/BitArray;->NYBBLE:[[B

    #@11
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    #@13
    aget-byte v3, v3, v0

    #@15
    shr-int/lit8 v3, v3, 0x4

    #@17
    and-int/lit8 v3, v3, 0xf

    #@19
    aget-object v2, v2, v3

    #@1b
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@1e
    .line 248
    sget-object v2, Lsun/security/util/BitArray;->NYBBLE:[[B

    #@20
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    #@22
    aget-byte v3, v3, v0

    #@24
    and-int/lit8 v3, v3, 0xf

    #@26
    aget-object v2, v2, v3

    #@28
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@2b
    .line 250
    rem-int/lit8 v2, v0, 0x8

    #@2d
    const/4 v3, 0x7

    #@2e
    if-ne v2, v3, :cond_0

    #@30
    .line 251
    const/16 v2, 0xa

    #@32
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@35
    .line 246
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 253
    :cond_0
    const/16 v2, 0x20

    #@3a
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@3d
    goto :goto_1

    #@3e
    .line 258
    :cond_1
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    #@40
    array-length v2, v2

    #@41
    add-int/lit8 v2, v2, -0x1

    #@43
    mul-int/lit8 v0, v2, 0x8

    #@45
    :goto_2
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    #@47
    if-ge v0, v2, :cond_3

    #@49
    .line 259
    invoke-virtual {p0, v0}, Lsun/security/util/BitArray;->get(I)Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_2

    #@4f
    const/16 v2, 0x31

    #@51
    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@54
    .line 258
    add-int/lit8 v0, v0, 0x1

    #@56
    goto :goto_2

    #@57
    .line 259
    :cond_2
    const/16 v2, 0x30

    #@59
    goto :goto_3

    #@5a
    .line 262
    :cond_3
    new-instance v2, Ljava/lang/String;

    #@5c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@5f
    move-result-object v3

    #@60
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    #@63
    return-object v2
.end method

.method public truncate()Lsun/security/util/BitArray;
    .locals 5

    #@0
    .prologue
    .line 267
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    #@2
    add-int/lit8 v0, v1, -0x1

    #@4
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@6
    .line 268
    invoke-virtual {p0, v0}, Lsun/security/util/BitArray;->get(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 269
    new-instance v1, Lsun/security/util/BitArray;

    #@e
    add-int/lit8 v2, v0, 0x1

    #@10
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    #@12
    add-int/lit8 v4, v0, 0x8

    #@14
    div-int/lit8 v4, v4, 0x8

    #@16
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    #@19
    move-result-object v3

    #@1a
    invoke-direct {v1, v2, v3}, Lsun/security/util/BitArray;-><init>(I[B)V

    #@1d
    return-object v1

    #@1e
    .line 267
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@20
    goto :goto_0

    #@21
    .line 272
    :cond_1
    new-instance v1, Lsun/security/util/BitArray;

    #@23
    const/4 v2, 0x1

    #@24
    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>(I)V

    #@27
    return-object v1
.end method
