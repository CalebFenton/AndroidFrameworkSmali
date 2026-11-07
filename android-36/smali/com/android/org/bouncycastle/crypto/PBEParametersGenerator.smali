.class public abstract Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.super Ljava/lang/Object;
.source "PBEParametersGenerator.java"


# instance fields
.field protected blacklist iterationCount:I

.field protected blacklist password:[B

.field protected blacklist salt:[B


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist PKCS12PasswordToBytes([C)[B
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    .line 155
    array-length v1, p0

    if-lez v1, :cond_22

    .line 158
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 160
    :goto_d
    array-length v2, p0

    if-eq v0, v2, :cond_21

    mul-int/lit8 v2, v0, 0x2

    .line 162
    aget-char v3, p0, v0

    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v3

    .line 163
    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    return-object v1

    .line 170
    :cond_22
    new-array p0, v0, [B

    return-object p0
.end method

.method public static blacklist PKCS5PasswordToBytes([C)[B
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    .line 110
    array-length v1, p0

    new-array v2, v1, [B

    :goto_6
    if-eq v0, v1, :cond_10

    .line 114
    aget-char v3, p0, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    return-object v2

    .line 121
    :cond_11
    new-array p0, v0, [B

    return-object p0
.end method

.method public static blacklist PKCS5PasswordToUTF8Bytes([C)[B
    .registers 1

    if-eqz p0, :cond_7

    .line 137
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    .line 141
    new-array p0, p0, [B

    return-object p0
.end method


# virtual methods
.method public abstract blacklist generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract blacklist generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract blacklist generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
.end method

.method public blacklist init([B[BI)V
    .registers 4

    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    .line 37
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    .line 38
    iput p3, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return-void
.end method
