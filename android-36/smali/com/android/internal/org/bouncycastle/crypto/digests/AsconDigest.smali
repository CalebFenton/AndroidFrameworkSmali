.class public Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;
.super Ljava/lang/Object;
.source "AsconDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;
    }
.end annotation


# instance fields
.field private final blacklist ASCON_PB_ROUNDS:I

.field private final blacklist CRYPTO_BYTES:I

.field private final blacklist algorithmName:Ljava/lang/String;

.field blacklist asconParameters:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

.field private final blacklist buffer:Ljava/io/ByteArrayOutputStream;

.field private blacklist x0:J

.field private blacklist x1:J

.field private blacklist x2:J

.field private blacklist x3:J

.field private blacklist x4:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;)V
    .registers 4
    .param p1, "parameters"    # Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 59
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->CRYPTO_BYTES:I

    .line 35
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    .line 36
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter settings for Ascon Hash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_1f
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    .line 44
    const-string v0, "Ascon-HashA"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    .line 45
    goto :goto_31

    .line 39
    :pswitch_28
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    .line 40
    const-string v0, "Ascon-Hash"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    .line 41
    nop

    .line 49
    :goto_31
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->reset()V

    .line 50
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist LOADBYTES([BII)J
    .registers 11
    .param p1, "bytes"    # [B
    .param p2, "inOff"    # I
    .param p3, "n"    # I

    .line 110
    const-wide/16 v0, 0x0

    .line 111
    .local v0, "x":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p3, :cond_16

    .line 113
    add-int v3, v2, p2

    aget-byte v3, p1, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    rsub-int/lit8 v5, v2, 0x7

    shl-int/lit8 v5, v5, 0x3

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 115
    .end local v2    # "i":I
    :cond_16
    return-wide v0
.end method

.method private blacklist P(I)V
    .registers 4
    .param p1, "nr"    # I

    .line 83
    const/16 v0, 0xc

    if-ne p1, v0, :cond_18

    .line 85
    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 86
    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 87
    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 88
    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 90
    :cond_18
    const/16 v0, 0x8

    if-lt p1, v0, :cond_26

    .line 92
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 93
    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 95
    :cond_26
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 96
    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 97
    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 98
    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 99
    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 100
    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    .line 101
    return-void
.end method

.method private blacklist PAD(I)J
    .registers 5
    .param p1, "i"    # I

    .line 105
    shl-int/lit8 v0, p1, 0x3

    rsub-int/lit8 v0, v0, 0x38

    const-wide/16 v1, 0x80

    shl-long v0, v1, v0

    return-wide v0
.end method

.method private blacklist ROR(JI)J
    .registers 8
    .param p1, "x"    # J
    .param p3, "n"    # I

    .line 64
    ushr-long v0, p1, p3

    rsub-int/lit8 v2, p3, 0x40

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist ROUND(J)V
    .registers 17
    .param p1, "C"    # J

    .line 69
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    .line 70
    .local v0, "t0":J
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v2, v4

    xor-long/2addr v2, p1

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 71
    .local v2, "t1":J
    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    .line 72
    .local v4, "t2":J
    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    xor-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v6, v8

    xor-long/2addr v6, p1

    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    not-long v8, v8

    iget-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    iget-wide v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v10, v12

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    .line 73
    .local v6, "t3":J
    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    and-long/2addr v10, v12

    xor-long/2addr v8, v10

    .line 74
    .local v8, "t4":J
    const/16 v10, 0x13

    invoke-direct {p0, v0, v1, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v10

    xor-long/2addr v10, v0

    const/16 v12, 0x1c

    invoke-direct {p0, v0, v1, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 75
    const/16 v10, 0x27

    invoke-direct {p0, v2, v3, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v10

    xor-long/2addr v10, v2

    const/16 v12, 0x3d

    invoke-direct {p0, v2, v3, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    .line 76
    const/4 v10, 0x1

    invoke-direct {p0, v4, v5, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v10

    xor-long/2addr v10, v4

    const/4 v12, 0x6

    invoke-direct {p0, v4, v5, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    not-long v10, v10

    iput-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    .line 77
    const/16 v10, 0xa

    invoke-direct {p0, v6, v7, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v10

    xor-long/2addr v10, v6

    const/16 v12, 0x11

    invoke-direct {p0, v6, v7, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    .line 78
    const/4 v10, 0x7

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v10

    xor-long/2addr v10, v8

    const/16 v12, 0x29

    invoke-direct {p0, v8, v9, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    .line 79
    return-void
.end method

.method private blacklist STOREBYTES([BIJI)V
    .registers 10
    .param p1, "bytes"    # [B
    .param p2, "inOff"    # I
    .param p3, "w"    # J
    .param p5, "n"    # I

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p5, :cond_12

    .line 122
    add-int v1, v0, p2

    rsub-int/lit8 v2, v0, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long v2, p3, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "i":I
    :cond_12
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 14
    .param p1, "output"    # [B
    .param p2, "outOff"    # I

    .line 163
    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_65

    .line 167
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 168
    .local v0, "input":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 169
    .local v1, "len":I
    const/4 v2, 0x0

    .line 171
    .local v2, "inOff":I
    const/16 v3, 0x8

    .line 172
    .local v3, "ASCON_HASH_RATE":I
    :goto_14
    if-lt v1, v3, :cond_29

    .line 174
    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const/16 v6, 0x8

    invoke-direct {p0, v0, v2, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->LOADBYTES([BII)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 175
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    .line 176
    add-int/2addr v2, v3

    .line 177
    sub-int/2addr v1, v3

    goto :goto_14

    .line 180
    :cond_29
    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    invoke-direct {p0, v0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->LOADBYTES([BII)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 181
    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->PAD(I)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 182
    const/16 v4, 0xc

    .line 183
    .local v4, "ASCON_PA_ROUNDS":I
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    .line 185
    const/16 v1, 0x20

    move v7, p2

    .line 186
    .end local p2    # "outOff":I
    .local v7, "outOff":I
    :goto_43
    if-le v1, v3, :cond_57

    .line 188
    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const/16 v10, 0x8

    move-object v5, p0

    move-object v6, p1

    .end local p1    # "output":[B
    .local v6, "output":[B
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->STOREBYTES([BIJI)V

    .line 189
    iget p1, v5, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    .line 190
    add-int/2addr v7, v3

    .line 191
    sub-int/2addr v1, v3

    move-object p1, v6

    goto :goto_43

    .line 194
    .end local v6    # "output":[B
    .restart local p1    # "output":[B
    :cond_57
    move-object v5, p0

    move-object v6, p1

    .end local p1    # "output":[B
    .restart local v6    # "output":[B
    iget-wide v8, v5, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    move v10, v1

    .end local v1    # "len":I
    .local v10, "len":I
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->STOREBYTES([BIJI)V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->reset()V

    .line 196
    const/16 p1, 0x20

    return p1

    .line 165
    .end local v0    # "input":[B
    .end local v2    # "inOff":I
    .end local v3    # "ASCON_HASH_RATE":I
    .end local v4    # "ASCON_PA_ROUNDS":I
    .end local v6    # "output":[B
    .end local v7    # "outOff":I
    .end local v10    # "len":I
    .restart local p1    # "output":[B
    .restart local p2    # "outOff":I
    :cond_65
    move-object v6, p1

    .end local p1    # "output":[B
    .restart local v6    # "output":[B
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v0, "output buffer is too short"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getByteLength()I
    .registers 2

    .line 141
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getDigestSize()I
    .registers 2

    .line 135
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist reset()V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 204
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    goto :goto_56

    .line 207
    :pswitch_f
    const-wide v0, 0x1470194fc6528a6L

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 208
    const-wide v0, 0x738ec38ac0adffa7L    # 4.301965536445435E248

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    .line 209
    const-wide v0, 0x2ec8e3296c76384cL    # 2.5621814324380113E-83

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    .line 210
    const-wide v0, -0x29095ab280adc883L    # -8.509507695364991E110

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    .line 211
    const-wide v0, -0x5ec3bd5ddc417279L

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    .line 212
    goto :goto_56

    .line 214
    :pswitch_33
    const-wide v0, -0x116c675524980fc3L    # -4.533484413786092E224

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x0:J

    .line 215
    const-wide v0, -0x744de7ce39f0effeL

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x1:J

    .line 216
    const-wide v0, -0x4b756d24672a259eL    # -1.3546972168863344E-55

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x2:J

    .line 217
    const-wide v0, 0x43189921b8f8e3e8L    # 1.730942389336314E15

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x3:J

    .line 218
    const-wide v0, 0x348fa5c9d525e140L    # 1.613361697436867E-55

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->x4:J

    .line 221
    :goto_56
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_33
        :pswitch_f
    .end packed-switch
.end method

.method public blacklist update(B)V
    .registers 3
    .param p1, "in"    # B

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 148
    return-void
.end method

.method public blacklist update([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 153
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_b

    .line 157
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 158
    return-void

    .line 155
    :cond_b
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
