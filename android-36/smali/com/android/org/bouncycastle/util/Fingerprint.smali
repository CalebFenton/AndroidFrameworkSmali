.class public Lcom/android/org/bouncycastle/util/Fingerprint;
.super Ljava/lang/Object;
.source "Fingerprint.java"


# static fields
.field private static blacklist encodingTable:[C


# instance fields
.field private final blacklist fingerprint:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 16
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/util/Fingerprint;->encodingTable:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor blacklist <init>([B)V
    .registers 3

    const/16 v0, 0xa0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/util/Fingerprint;-><init>([BI)V

    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Fingerprint;->calculateFingerprint([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    return-void
.end method

.method public static blacklist calculateFingerprint([BI)[B
    .registers 6

    .line 132
    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_1f

    .line 139
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 141
    array-length v1, p0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 143
    div-int/lit8 p1, p1, 0x8

    new-array p0, p1, [B

    const/16 v1, 0x20

    .line 148
    new-array v3, v1, [B

    .line 149
    invoke-interface {v0, v3, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-lt p1, v1, :cond_1b

    return-object v3

    .line 154
    :cond_1b
    invoke-static {v3, v2, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 134
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitLength must be a multiple of 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 96
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/util/Fingerprint;

    if-eqz v0, :cond_13

    .line 98
    check-cast p1, Lcom/android/org/bouncycastle/util/Fingerprint;

    iget-object p1, p1, Lcom/android/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    iget-object p0, p0, Lcom/android/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 77
    :goto_6
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    array-length v2, v2

    if-eq v1, v2, :cond_31

    if-lez v1, :cond_12

    .line 81
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_12
    sget-object v2, Lcom/android/org/bouncycastle/util/Fingerprint;->encodingTable:[C

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    aget-byte v3, v3, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    sget-object v2, Lcom/android/org/bouncycastle/util/Fingerprint;->encodingTable:[C

    iget-object v3, p0, Lcom/android/org/bouncycastle/util/Fingerprint;->fingerprint:[B

    aget-byte v3, v3, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 87
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
