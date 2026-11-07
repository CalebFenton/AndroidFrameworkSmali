.class public final Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;
.super Ljava/lang/Object;
.source "Zuc256Mac.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Mac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;
    }
.end annotation


# static fields
.field private static final blacklist TOPBIT:I = 0x80


# instance fields
.field private blacklist theByteIndex:I

.field private final blacklist theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;

.field private final blacklist theKeyStream:[I

.field private final blacklist theMac:[I

.field private final blacklist theMacLength:I

.field private blacklist theState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;

.field private blacklist theWordIndex:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "pLength"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;

    .line 64
    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theMacLength:I

    .line 65
    div-int/lit8 v0, p1, 0x20

    .line 66
    .local v0, "numWords":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theMac:[I

    .line 67
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theKeyStream:[I

    .line 68
    return-void
.end method

.method private blacklist getKeyStreamWord(II)I
    .registers 7
    .param p1, "wordNo"    # I
    .param p2, "bitNo"    # I

    .line 201
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theKeyStream:[I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theWordIndex:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theKeyStream:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aget v0, v0, v1

    .line 202
    .local v0, "myFirst":I
    if-nez p2, :cond_e

    .line 204
    return v0

    .line 208
    :cond_e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theKeyStream:[I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theWordIndex:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theKeyStream:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v1, v1, v2

    .line 209
    .local v1, "mySecond":I
    shl-int v2, v0, p2

    rsub-int/lit8 v3, p2, 0x20

    ushr-int v3, v1, v3

    or-int/2addr v2, v3

    return v2
.end method

.method private blacklist initKeyStream()V
    .registers 4

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theMac:[I

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 111
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theMac:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;->createKeyStreamWord()I

    move-result v2

    aput v2, v1, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_14
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theKeyStream:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_28

    .line 117
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theKeyStream:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;->createKeyStreamWord()I

    move-result v2

    aput v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 119
    .end local v0    # "i":I
    :cond_28
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theKeyStream:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theWordIndex:I

    .line 120
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theByteIndex:I

    .line 121
    return-void
.end method

.method private blacklist shift4Final()V
    .registers 3

    .line 168
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theByteIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theByteIndex:I

    .line 171
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theByteIndex:I

    if-nez v0, :cond_16

    .line 173
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theKeyStream:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theWordIndex:I

    .line 175
    :cond_16
    return-void
.end method

.method private blacklist shift4NextByte()V
    .registers 4

    .line 152
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theByteIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theByteIndex:I

    .line 155
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theByteIndex:I

    if-nez v0, :cond_22

    .line 157
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theKeyStream:[I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theWordIndex:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;->createKeyStreamWord()I

    move-result v2

    aput v2, v0, v1

    .line 158
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theWordIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theKeyStream:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theWordIndex:I

    .line 160
    :cond_22
    return-void
.end method

.method private blacklist updateMac(I)V
    .registers 6
    .param p1, "bitNo"    # I

    .line 185
    const/4 v0, 0x0

    .local v0, "wordNo":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theMac:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 187
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theMac:[I

    aget v2, v1, v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->getKeyStreamWord(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "wordNo":I
    :cond_14
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 237
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->shift4Final()V

    .line 240
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theByteIndex:I

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->updateMac(I)V

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theMac:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 243
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theMac:[I

    aget v1, v1, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p2

    invoke-static {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->encode32be(I[BI)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 247
    .end local v0    # "i":I
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->reset()V

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Zuc256Mac-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theMacLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMacSize()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theMacLength:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .param p1, "pParams"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 98
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;->copy()Lcom/android/internal/org/bouncycastle/util/Memoable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;

    .line 100
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->initKeyStream()V

    .line 101
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theEngine:Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac$InternalZuc256Engine;->reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V

    .line 260
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->initKeyStream()V

    .line 261
    return-void
.end method

.method public blacklist update(B)V
    .registers 6
    .param p1, "in"    # B

    .line 131
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->shift4NextByte()V

    .line 134
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->theByteIndex:I

    mul-int/lit8 v0, v0, 0x8

    .line 135
    .local v0, "bitBase":I
    const/16 v1, 0x80

    .local v1, "bitMask":I
    const/4 v2, 0x0

    .local v2, "bitNo":I
    :goto_a
    if-lez v1, :cond_1a

    .line 138
    and-int v3, p1, v1

    if-eqz v3, :cond_15

    .line 141
    add-int v3, v0, v2

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->updateMac(I)V

    .line 135
    :cond_15
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 144
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

    .line 221
    const/4 v0, 0x0

    .local v0, "byteNo":I
    :goto_1
    if-ge v0, p3, :cond_d

    .line 223
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/Zuc256Mac;->update(B)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    .end local v0    # "byteNo":I
    :cond_d
    return-void
.end method
