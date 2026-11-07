.class public Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables4kGCMMultiplier.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private blacklist H:[B

.field private blacklist T:[[J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist init([B)V
    .registers 9
    .param p1, "H"    # [B

    .line 17
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    const/16 v1, 0x100

    const/4 v2, 0x1

    if-nez v0, :cond_1a

    .line 19
    const/4 v0, 0x2

    new-array v3, v0, [I

    aput v0, v3, v2

    const/4 v0, 0x0

    aput v1, v3, v0

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    goto :goto_23

    .line 21
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->areEqual([B[B)B

    move-result v0

    if-eqz v0, :cond_23

    .line 23
    return-void

    .line 26
    :cond_23
    :goto_23
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    .line 27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([B[B)V

    .line 32
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    .line 33
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP7([J[J)V

    .line 35
    const/4 v0, 0x2

    .local v0, "n":I
    :goto_43
    if-ge v0, v1, :cond_66

    .line 38
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    shr-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    .line 41
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    .line 35
    add-int/lit8 v0, v0, 0x2

    goto :goto_43

    .line 43
    .end local v0    # "n":I
    :cond_66
    return-void
.end method

.method public blacklist multiplyH([B)V
    .registers 22
    .param p1, "x"    # [B

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    const/16 v3, 0xf

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aget-object v2, v2, v3

    .line 57
    .local v2, "t":[J
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    .local v4, "z0":J
    const/4 v6, 0x1

    aget-wide v7, v2, v6

    .line 59
    .local v7, "z1":J
    const/16 v9, 0xe

    .local v9, "i":I
    :goto_16
    const/16 v10, 0x8

    if-ltz v9, :cond_45

    .line 61
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-byte v12, v1, v9

    and-int/lit16 v12, v12, 0xff

    aget-object v2, v11, v12

    .line 63
    const/16 v11, 0x38

    shl-long v12, v7, v11

    .line 64
    .local v12, "c":J
    aget-wide v14, v2, v6

    ushr-long v16, v7, v10

    shl-long v18, v4, v11

    or-long v16, v16, v18

    xor-long v7, v14, v16

    .line 65
    aget-wide v14, v2, v3

    ushr-long v10, v4, v10

    xor-long/2addr v10, v14

    xor-long/2addr v10, v12

    ushr-long v14, v12, v6

    xor-long/2addr v10, v14

    const/4 v14, 0x2

    ushr-long v14, v12, v14

    xor-long/2addr v10, v14

    const/4 v14, 0x7

    ushr-long v14, v12, v14

    xor-long v4, v10, v14

    .line 59
    .end local v12    # "c":J
    add-int/lit8 v9, v9, -0x1

    goto :goto_16

    .line 68
    .end local v9    # "i":I
    :cond_45
    invoke-static {v4, v5, v1, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 69
    invoke-static {v7, v8, v1, v10}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 70
    return-void
.end method
