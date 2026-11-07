.class public final Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;
.super Ljava/lang/Object;
.source "Zuc128Mac.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Mac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;
    }
.end annotation


# static fields
.field private static final blacklist TOPBIT:I = 0x80


# instance fields
.field private blacklist theByteIndex:I

.field private final blacklist theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

.field private final blacklist theKeyStream:[I

.field private blacklist theMac:I

.field private blacklist theState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

.field private blacklist theWordIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac-IA;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    .line 58
    return-void
.end method

.method private blacklist getFinalWord()I
    .registers 3

    .line 202
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    if-eqz v0, :cond_b

    .line 204
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->createKeyStreamWord()I

    move-result v0

    return v0

    .line 206
    :cond_b
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    .line 207
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    aget v0, v0, v1

    return v0
.end method

.method private blacklist getKeyStreamWord(I)I
    .registers 6
    .param p1, "bitNo"    # I

    .line 169
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    aget v0, v0, v1

    .line 170
    .local v0, "myFirst":I
    if-nez p1, :cond_9

    .line 172
    return v0

    .line 176
    :cond_9
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v1, v1, v2

    .line 177
    .local v1, "mySecond":I
    shl-int v2, v0, p1

    rsub-int/lit8 v3, p1, 0x20

    ushr-int v3, v1, v3

    or-int/2addr v2, v3

    return v2
.end method

.method private blacklist initKeyStream()V
    .registers 4

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_18

    .line 104
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->createKeyStreamWord()I

    move-result v2

    aput v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 106
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    .line 107
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    .line 108
    return-void
.end method

.method private blacklist shift4NextByte()V
    .registers 4

    .line 139
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    .line 142
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    if-nez v0, :cond_22

    .line 144
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->createKeyStreamWord()I

    move-result v2

    aput v2, v0, v1

    .line 145
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theKeyStream:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theWordIndex:I

    .line 147
    :cond_22
    return-void
.end method

.method private blacklist updateMac(I)V
    .registers 4
    .param p1, "bitNo"    # I

    .line 157
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->getKeyStreamWord(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    .line 158
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 220
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->shift4NextByte()V

    .line 221
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->getKeyStreamWord(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    .line 222
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->getFinalWord()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    .line 223
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theMac:I

    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->encode32be(I[BI)V

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->reset()V

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "Zuc128Mac"

    return-object v0
.end method

.method public blacklist getMacSize()I
    .registers 2

    .line 77
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .param p1, "pParams"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 88
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->copy()Lcom/android/internal/org/bouncycastle/util/Memoable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    .line 90
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->initKeyStream()V

    .line 91
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    if-eqz v0, :cond_b

    .line 234
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac$InternalZuc128Engine;->reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V

    .line 236
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->initKeyStream()V

    .line 237
    return-void
.end method

.method public blacklist update(B)V
    .registers 6
    .param p1, "in"    # B

    .line 118
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->shift4NextByte()V

    .line 121
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->theByteIndex:I

    mul-int/lit8 v0, v0, 0x8

    .line 122
    .local v0, "bitBase":I
    const/16 v1, 0x80

    .local v1, "bitMask":I
    const/4 v2, 0x0

    .local v2, "bitNo":I
    :goto_a
    if-lez v1, :cond_1a

    .line 125
    and-int v3, p1, v1

    if-eqz v3, :cond_15

    .line 128
    add-int v3, v0, v2

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->updateMac(I)V

    .line 122
    :cond_15
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 131
    .end local v1    # "bitMask":I
    .end local v2    # "bitNo":I
    :cond_1a
    return-void
.end method

.method public blacklist update([BII)V
    .registers 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 189
    const/4 v0, 0x0

    .local v0, "byteNo":I
    :goto_1
    if-ge v0, p3, :cond_d

    .line 191
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc128Mac;->update(B)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    .end local v0    # "byteNo":I
    :cond_d
    return-void
.end method
