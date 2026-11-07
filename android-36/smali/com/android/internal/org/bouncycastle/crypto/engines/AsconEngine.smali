.class public Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;
.super Ljava/lang/Object;
.source "AsconEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;,
        Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    }
.end annotation


# instance fields
.field private final blacklist ASCON_AEAD_RATE:I

.field private final blacklist ASCON_IV:J

.field private final blacklist CRYPTO_ABYTES:I

.field private final blacklist CRYPTO_KEYBYTES:I

.field private blacklist K0:J

.field private blacklist K1:J

.field private blacklist K2:J

.field private blacklist N0:J

.field private blacklist N1:J

.field private final blacklist algorithmName:Ljava/lang/String;

.field private final blacklist asconParameters:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field private blacklist initialAssociatedText:[B

.field private final blacklist m_buf:[B

.field private blacklist m_bufPos:I

.field private final blacklist m_bufferSizeDecrypt:I

.field private blacklist m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

.field private blacklist mac:[B

.field private final blacklist nr:I

.field private blacklist x0:J

.field private blacklist x1:J

.field private blacklist x2:J

.field private blacklist x3:J

.field private blacklist x4:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;)V
    .registers 6
    .param p1, "asconParameters"    # Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 78
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x10

    packed-switch v0, :pswitch_data_6c

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameter setting for ASCON AEAD"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :pswitch_1f
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    .line 97
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    .line 98
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    .line 99
    const-wide v2, -0x7fbff3fa00000000L    # -1.785284289241434E-307

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    .line 100
    const-string v0, "Ascon-128 AEAD"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    .line 101
    goto :goto_57

    .line 89
    :pswitch_31
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    .line 90
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    .line 91
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    .line 92
    const-wide v2, -0x7f7ff3f800000000L

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    .line 93
    const-string v0, "Ascon-128a AEAD"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    .line 94
    goto :goto_57

    .line 82
    :pswitch_43
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    .line 83
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    .line 84
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    .line 85
    const-wide v2, -0x5fbff3fa00000000L    # -2.393674885049323E-153

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    .line 86
    const-string v0, "Ascon-80pq AEAD"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    .line 87
    nop

    .line 105
    :goto_57
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne v0, v1, :cond_5c

    const/4 v1, 0x6

    :cond_5c
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->nr:I

    .line 106
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    .line 107
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    .line 108
    return-void

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist P(I)V
    .registers 4
    .param p1, "nr"    # I

    .line 131
    const/16 v0, 0x8

    if-lt p1, v0, :cond_26

    .line 133
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1c

    .line 135
    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 136
    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 137
    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 138
    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 140
    :cond_1c
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 141
    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 143
    :cond_26
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 144
    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 145
    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 146
    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 147
    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 148
    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    .line 149
    return-void
.end method

.method private blacklist PAD(I)J
    .registers 5
    .param p1, "i"    # I

    .line 112
    shl-int/lit8 v0, p1, 0x3

    rsub-int/lit8 v0, v0, 0x38

    const-wide/16 v1, 0x80

    shl-long v0, v1, v0

    return-wide v0
.end method

.method private blacklist ROUND(J)V
    .registers 17
    .param p1, "C"    # J

    .line 117
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    .line 118
    .local v0, "t0":J
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v2, v4

    xor-long/2addr v2, p1

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 119
    .local v2, "t1":J
    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    .line 120
    .local v4, "t2":J
    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v6, v8

    xor-long/2addr v6, p1

    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    not-long v8, v8

    iget-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v12, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v10, v12

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    .line 121
    .local v6, "t3":J
    iget-wide v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v12, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    and-long/2addr v10, v12

    xor-long/2addr v8, v10

    .line 122
    .local v8, "t4":J
    const/16 v10, 0x13

    invoke-static {v0, v1, v10}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v10

    xor-long/2addr v10, v0

    const/16 v12, 0x1c

    invoke-static {v0, v1, v12}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 123
    const/16 v10, 0x27

    invoke-static {v2, v3, v10}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v10

    xor-long/2addr v10, v2

    const/16 v12, 0x3d

    invoke-static {v2, v3, v12}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 124
    const/4 v10, 0x1

    invoke-static {v4, v5, v10}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v10

    xor-long/2addr v10, v4

    const/4 v12, 0x6

    invoke-static {v4, v5, v12}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    not-long v10, v10

    iput-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 125
    const/16 v10, 0xa

    invoke-static {v6, v7, v10}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v10

    xor-long/2addr v10, v6

    const/16 v12, 0x11

    invoke-static {v6, v7, v12}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 126
    const/4 v10, 0x7

    invoke-static {v8, v9, v10}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v10

    xor-long/2addr v10, v8

    const/16 v12, 0x29

    invoke-static {v8, v9, v12}, Lcom/android/internal/org/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v12

    xor-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 127
    return-void
.end method

.method private blacklist ascon_aeadinit()V
    .registers 7

    .line 154
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 155
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_11

    .line 157
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 159
    :cond_11
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 160
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 161
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->N0:J

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 162
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->N1:J

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 163
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 164
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v0, v1, :cond_31

    .line 166
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 168
    :cond_31
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 169
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 170
    return-void
.end method

.method private blacklist checkAAD()V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    .line 188
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_26
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 178
    goto :goto_4e

    .line 186
    :pswitch_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_48
    goto :goto_4e

    .line 180
    :pswitch_49
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 181
    nop

    .line 190
    :goto_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_49
        :pswitch_48
        :pswitch_9
        :pswitch_2b
        :pswitch_26
        :pswitch_48
    .end packed-switch
.end method

.method private blacklist checkData()Z
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_54

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :pswitch_28
    return v1

    .line 198
    :pswitch_29
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V

    .line 199
    return v1

    .line 209
    :pswitch_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :pswitch_4c
    return v2

    .line 202
    :pswitch_4d
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V

    .line 203
    return v2

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4d
        :pswitch_4c
        :pswitch_2f
        :pswitch_29
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method

.method private blacklist finishAAD(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V
    .registers 11
    .param p1, "nextState"    # Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 228
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_60

    goto :goto_54

    .line 232
    :sswitch_b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 233
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const-wide/16 v2, -0x1

    const/16 v4, 0x8

    if-lt v0, v4, :cond_3b

    .line 235
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v7

    xor-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 236
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v0, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v7

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x38

    shl-long/2addr v2, v0

    and-long/2addr v2, v7

    xor-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    goto :goto_4e

    .line 240
    :cond_3b
    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v6

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    shl-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x38

    shl-long/2addr v2, v0

    and-long/2addr v2, v6

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 242
    :goto_4e
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 243
    nop

    .line 248
    :goto_54
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 249
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 250
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 251
    return-void

    :sswitch_data_60
    .sparse-switch
        0x2 -> :sswitch_b
        0x6 -> :sswitch_b
    .end sparse-switch
.end method

.method private blacklist finishData(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V
    .registers 9
    .param p1, "nextState"    # Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 357
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_66

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 360
    :pswitch_f
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 361
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 362
    goto :goto_50

    .line 364
    :pswitch_1e
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 365
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 366
    goto :goto_50

    .line 368
    :pswitch_2d
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K0:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    shr-long/2addr v5, v4

    or-long/2addr v2, v5

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 369
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    shl-long/2addr v2, v4

    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    shr-long/2addr v5, v4

    or-long/2addr v2, v5

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x2:J

    .line 370
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 371
    nop

    .line 375
    :goto_50
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 376
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 377
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 379
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 380
    return-void

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_1e
        :pswitch_f
    .end packed-switch
.end method

.method private blacklist processBufferAAD([BI)V
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "inOff"    # I

    .line 217
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 218
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1a

    .line 220
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 222
    :cond_1a
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 223
    return-void
.end method

.method private blacklist processBufferDecrypt([BI[BI)V
    .registers 12
    .param p1, "buffer"    # [B
    .param p2, "bufOff"    # I
    .param p3, "output"    # [B
    .param p4, "outOff"    # I

    .line 255
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_2e

    .line 259
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    .line 260
    .local v0, "t0":J
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v2, v0

    invoke-static {v2, v3, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 261
    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 263
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_28

    .line 265
    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    .line 266
    .local v2, "t1":J
    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x8

    invoke-static {v4, v5, p3, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 267
    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 269
    .end local v2    # "t1":J
    :cond_28
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 270
    return-void

    .line 257
    .end local v0    # "t0":J
    :cond_2e
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist processBufferEncrypt([BI[BI)V
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "bufOff"    # I
    .param p3, "output"    # [B
    .param p4, "outOff"    # I

    .line 274
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_32

    .line 278
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 279
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 281
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2c

    .line 283
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 284
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 v2, p4, 0x8

    invoke-static {v0, v1, p3, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 287
    :cond_2c
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    .line 288
    return-void

    .line 276
    :cond_32
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist processFinalDecrypt([BII[BI)V
    .registers 15
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I

    .line 292
    const/16 v0, 0x8

    const-wide/16 v1, -0x1

    if-lt p3, v0, :cond_44

    .line 294
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    .line 295
    .local v3, "c0":J
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 296
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v5, v6, p4, p5}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 297
    iput-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 298
    add-int/lit8 p2, p2, 0x8

    .line 299
    add-int/lit8 p5, p5, 0x8

    .line 300
    add-int/lit8 p3, p3, -0x8

    .line 301
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v7

    xor-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 302
    if-eqz p3, :cond_43

    .line 304
    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v5

    .line 305
    .local v5, "c1":J
    iget-wide v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 306
    iget-wide v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {v7, v8, p4, p5, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    .line 307
    iget-wide v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    shl-int/lit8 v0, p3, 0x3

    ushr-long v0, v1, v0

    and-long/2addr v0, v7

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 308
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 310
    .end local v3    # "c0":J
    .end local v5    # "c1":J
    :cond_43
    goto :goto_6b

    .line 313
    :cond_44
    iget-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 314
    if-eqz p3, :cond_6b

    .line 316
    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v3

    .line 317
    .restart local v3    # "c0":J
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 318
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v5, v6, p4, p5, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    .line 319
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    shl-int/lit8 v0, p3, 0x3

    ushr-long v0, v1, v0

    and-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 320
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 324
    .end local v3    # "c0":J
    :cond_6b
    :goto_6b
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->finishData(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V

    .line 325
    return-void
.end method

.method private blacklist processFinalEncrypt([BII[BI)V
    .registers 10
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I

    .line 329
    const/16 v0, 0x8

    if-lt p3, v0, :cond_32

    .line 331
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 332
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p4, p5}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 333
    add-int/lit8 p2, p2, 0x8

    .line 334
    add-int/lit8 p5, p5, 0x8

    .line 335
    add-int/lit8 p3, p3, -0x8

    .line 336
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 337
    if-eqz p3, :cond_4b

    .line 339
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    .line 340
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {v0, v1, p4, p5, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    goto :goto_4b

    .line 345
    :cond_32
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 346
    if-eqz p3, :cond_4b

    .line 348
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    .line 349
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p4, p5, p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    .line 352
    :cond_4b
    :goto_4b
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->finishData(Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;)V

    .line 353
    return-void
.end method

.method private blacklist reset(Z)V
    .registers 5
    .param p1, "clearMac"    # Z

    .line 702
    if-eqz p1, :cond_5

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    .line 706
    :cond_5
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clear([B)V

    .line 707
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 709
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    .line 725
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :pswitch_33
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 718
    goto :goto_3e

    .line 722
    :pswitch_38
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 723
    return-void

    .line 713
    :pswitch_3d
    nop

    .line 727
    :goto_3e
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ascon_aeadinit()V

    .line 728
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    if-eqz v1, :cond_4d

    .line 730
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    array-length v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processAADBytes([BII)V

    .line 732
    :cond_4d
    return-void

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_3d
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 12
    .param p1, "outBytes"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;,
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 607
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v6

    .line 609
    .local v6, "forEncryption":Z
    const-string v1, "output buffer too short"

    const/16 v7, 0x8

    if-eqz v6, :cond_49

    .line 611
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int v8, v2, v3

    .line 612
    .local v8, "resultLength":I
    add-int v2, p2, v8

    array-length v3, p1

    if-gt v2, v3, :cond_43

    .line 616
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processFinalEncrypt([BII[BI)V

    .line 617
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    .line 618
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 619
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    invoke-static {v1, v2, v3, v7}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 620
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    invoke-static {v1, v5, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    goto :goto_92

    .line 614
    :cond_43
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 625
    .end local v8    # "resultLength":I
    :cond_49
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-lt v2, v3, :cond_bc

    .line 629
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 630
    iget v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 631
    .restart local v8    # "resultLength":I
    add-int v2, p2, v8

    array-length v3, p1

    if-gt v2, v3, :cond_b6

    .line 635
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processFinalDecrypt([BII[BI)V

    .line 636
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    .line 637
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v4, v7

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    .line 638
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->x4:J

    or-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_93

    .line 642
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    .line 644
    :goto_92
    return v8

    .line 640
    :cond_93
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mac check in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 633
    :cond_b6
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 627
    .end local v8    # "resultLength":I
    :cond_bc
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v2, "data too short"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAlgorithmVersion()Ljava/lang/String;
    .registers 2

    .line 459
    const-string/jumbo v0, "v1.2"

    return-object v0
.end method

.method public blacklist getIVBytesSize()I
    .registers 2

    .line 741
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    return v0
.end method

.method public blacklist getKeyBytesSize()I
    .registers 2

    .line 736
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    return v0
.end method

.method public blacklist getMac()[B
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    return-object v0
.end method

.method public blacklist getOutputSize(I)I
    .registers 6
    .param p1, "len"    # I

    .line 677
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 679
    .local v1, "total":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    .line 691
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr v0, v1

    return v0

    .line 686
    :pswitch_12
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 683
    :pswitch_1d
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 689
    :pswitch_26
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr v0, v2

    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_26
        :pswitch_26
        :pswitch_1d
        :pswitch_1d
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 6
    .param p1, "len"    # I

    .line 654
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 655
    .local v1, "total":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    goto :goto_27

    .line 663
    :pswitch_f
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 664
    goto :goto_27

    .line 659
    :pswitch_1a
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 660
    goto :goto_27

    .line 667
    :pswitch_23
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v1, v0

    .line 668
    nop

    .line 672
    :goto_27
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    rem-int v0, v1, v0

    sub-int v0, v1, v0

    return v0

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_23
        :pswitch_23
        :pswitch_1a
        :pswitch_1a
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 11
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 387
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    const/16 v1, 0x8

    if-eqz v0, :cond_3a

    .line 389
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    .line 390
    .local v0, "aeadParameters":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    .line 391
    .local v2, "key":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v3

    .line 392
    .local v3, "npub":[B
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    .line 394
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v4

    .line 395
    .local v4, "macSizeBits":I
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    mul-int/2addr v5, v1

    if-ne v4, v5, :cond_21

    .line 399
    .end local v0    # "aeadParameters":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    .end local v4    # "macSizeBits":I
    goto :goto_4f

    .line 397
    .restart local v0    # "aeadParameters":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    .restart local v4    # "macSizeBits":I
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for MAC size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    .end local v0    # "aeadParameters":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    .end local v2    # "key":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .end local v3    # "npub":[B
    .end local v4    # "macSizeBits":I
    :cond_3a
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_119

    .line 402
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 403
    .local v0, "withIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 404
    .restart local v2    # "key":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 405
    .restart local v3    # "npub":[B
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    .line 406
    .end local v0    # "withIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    nop

    .line 412
    :goto_4f
    if-eqz v2, :cond_111

    .line 416
    if-eqz v3, :cond_ea

    array-length v0, v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-ne v0, v4, :cond_ea

    .line 421
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 422
    .local v0, "k":[B
    array-length v4, v0

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v4, v5, :cond_c3

    .line 427
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v7

    invoke-direct {v4, v5, v6, p2, v7}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 427
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 429
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->N0:J

    .line 430
    invoke-static {v3, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->N1:J

    .line 431
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_93

    .line 433
    invoke-static {v0, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    .line 434
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    goto :goto_af

    .line 436
    :cond_93
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v5, 0x14

    if-ne v1, v5, :cond_bd

    .line 438
    invoke-static {v0, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K0:J

    .line 439
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K1:J

    .line 440
    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->K2:J

    .line 447
    :goto_af
    if-eqz p1, :cond_b4

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_b6

    :cond_b4
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    :goto_b6
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_state:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$State;

    .line 449
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    .line 450
    return-void

    .line 444
    :cond_bd
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 424
    :cond_c3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key must be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes long"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    .end local v0    # "k":[B
    :cond_ea
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " requires exactly "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes of IV"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ascon Init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    .end local v2    # "key":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    .end local v3    # "npub":[B
    :cond_119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to Ascon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processAADByte(B)V
    .registers 4
    .param p1, "in"    # B

    .line 464
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    .line 465
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    aput-byte p1, v0, v1

    .line 466
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne v0, v1, :cond_19

    .line 468
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    .line 470
    :cond_19
    return-void
.end method

.method public blacklist processAADBytes([BII)V
    .registers 8
    .param p1, "inBytes"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 474
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_48

    .line 479
    if-gtz p3, :cond_8

    .line 481
    return-void

    .line 483
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    .line 484
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const/4 v1, 0x0

    if-lez v0, :cond_32

    .line 486
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v2

    .line 487
    .local v0, "available":I
    if-ge p3, v0, :cond_24

    .line 489
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 491
    return-void

    .line 493
    :cond_24
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    add-int/2addr p2, v0

    .line 495
    sub-int/2addr p3, v0

    .line 496
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    .line 499
    .end local v0    # "available":I
    :cond_32
    :goto_32
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v0, :cond_40

    .line 501
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    .line 502
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v0

    .line 503
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr p3, v0

    goto :goto_32

    .line 505
    :cond_40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 507
    return-void

    .line 476
    :cond_48
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processByte(B[BI)I
    .registers 11
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 512
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    .end local p2    # "out":[B
    .end local p3    # "outOff":I
    .local v5, "out":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBytes([BII[BI)I

    move-result p2

    return p2
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 14
    .param p1, "inBytes"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "outBytes"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 518
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_c3

    .line 522
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v0

    .line 523
    .local v0, "forEncryption":Z
    const/4 v1, 0x0

    .line 525
    .local v1, "resultLength":I
    const/4 v2, 0x0

    if-eqz v0, :cond_48

    .line 527
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    if-lez v3, :cond_35

    .line 529
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v3, v4

    .line 530
    .local v3, "available":I
    if-ge p3, v3, :cond_25

    .line 532
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 534
    return v2

    .line 537
    :cond_25
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    add-int/2addr p2, v3

    .line 539
    sub-int/2addr p3, v3

    .line 541
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v4, v2, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    .line 542
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    .line 546
    .end local v3    # "available":I
    :cond_35
    :goto_35
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v3, :cond_bb

    .line 548
    add-int v3, p5, v1

    invoke-direct {p0, p1, p2, p4, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    .line 549
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v3

    .line 550
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr p3, v3

    .line 551
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v1, v3

    goto :goto_35

    .line 556
    :cond_48
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v3, v4

    .line 557
    .restart local v3    # "available":I
    if-ge p3, v3, :cond_5c

    .line 559
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 561
    return v2

    .line 565
    :cond_5c
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt v4, v5, :cond_90

    .line 567
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v5, p5, v1

    invoke-direct {p0, v4, v2, p4, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    .line 568
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 569
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v1, v4

    .line 572
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v3, v4

    .line 573
    if-ge p3, v3, :cond_5c

    .line 575
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 577
    return v1

    .line 581
    :cond_90
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v4, v5

    .line 582
    .end local v3    # "available":I
    .local v4, "available":I
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    add-int/2addr p2, v4

    .line 584
    sub-int/2addr p3, v4

    .line 585
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v5, p5, v1

    invoke-direct {p0, v3, v2, p4, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    .line 586
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v1, v3

    .line 589
    :goto_a8
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    if-lt p3, v3, :cond_bb

    .line 591
    add-int v3, p5, v1

    invoke-direct {p0, p1, p2, p4, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    .line 592
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v3

    .line 593
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr p3, v3

    .line 594
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v1, v3

    goto :goto_a8

    .line 598
    .end local v4    # "available":I
    :cond_bb
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 599
    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    .line 601
    return v1

    .line 520
    .end local v0    # "forEncryption":Z
    .end local v1    # "resultLength":I
    :cond_c3
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 697
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    .line 698
    return-void
.end method
