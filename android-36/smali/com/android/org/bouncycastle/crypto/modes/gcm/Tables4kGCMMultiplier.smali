.class public Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables4kGCMMultiplier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;


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
    .registers 8

    .line 17
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    const/16 v1, 0x100

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1a

    .line 19
    new-array v0, v2, [I

    aput v2, v0, v3

    const/4 v4, 0x0

    aput v1, v0, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    goto :goto_23

    .line 21
    :cond_1a
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->areEqual([B[B)B

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_59

    :cond_23
    :goto_23
    const/16 v0, 0x10

    .line 26
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    .line 27
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([B[B)V

    .line 32
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v0, v0, v3

    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    .line 33
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object p1, p1, v3

    invoke-static {p1, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP7([J[J)V

    :goto_3c
    if-ge v2, v1, :cond_59

    .line 38
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    shr-int/lit8 v0, v2, 0x1

    aget-object v0, p1, v0

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    .line 41
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v0, p1, v2

    aget-object v4, p1, v3

    add-int/lit8 v5, v2, 0x1

    aget-object p1, p1, v5

    invoke-static {v0, v4, p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_3c

    :cond_59
    :goto_59
    return-void
.end method

.method public blacklist multiplyH([B)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 56
    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    const/16 v3, 0xf

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aget-object v2, v2, v3

    const/4 v3, 0x0

    .line 57
    aget-wide v4, v2, v3

    const/4 v6, 0x1

    aget-wide v7, v2, v6

    const/16 v2, 0xe

    :goto_16
    const/16 v9, 0x8

    if-ltz v2, :cond_41

    .line 61
    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-byte v11, v1, v2

    and-int/lit16 v11, v11, 0xff

    aget-object v10, v10, v11

    const/16 v11, 0x38

    shl-long v12, v7, v11

    .line 64
    aget-wide v14, v10, v6

    ushr-long/2addr v7, v9

    shl-long v16, v4, v11

    or-long v7, v7, v16

    xor-long/2addr v7, v14

    .line 65
    aget-wide v10, v10, v3

    ushr-long/2addr v4, v9

    xor-long/2addr v4, v10

    xor-long/2addr v4, v12

    ushr-long v9, v12, v6

    xor-long/2addr v4, v9

    const/4 v9, 0x2

    ushr-long v9, v12, v9

    xor-long/2addr v4, v9

    const/4 v9, 0x7

    ushr-long v9, v12, v9

    xor-long/2addr v4, v9

    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 68
    :cond_41
    invoke-static {v4, v5, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 69
    invoke-static {v7, v8, v1, v9}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method
