.class public abstract Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
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

    .line 21
    return-void
.end method

.method public static blacklist PKCS12PasswordToBytes([C)[B
    .registers 5
    .param p0, "password"    # [C

    .line 155
    if-eqz p0, :cond_26

    array-length v0, p0

    if-lez v0, :cond_26

    .line 158
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 160
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, p0

    if-eq v1, v2, :cond_25

    .line 162
    mul-int/lit8 v2, v1, 0x2

    aget-char v3, p0, v1

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 163
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 166
    .end local v1    # "i":I
    :cond_25
    return-object v0

    .line 170
    .end local v0    # "bytes":[B
    :cond_26
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public static blacklist PKCS5PasswordToBytes([C)[B
    .registers 4
    .param p0, "password"    # [C

    .line 108
    if-eqz p0, :cond_12

    .line 110
    array-length v0, p0

    new-array v0, v0, [B

    .line 112
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, v0

    if-eq v1, v2, :cond_11

    .line 114
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 117
    .end local v1    # "i":I
    :cond_11
    return-object v0

    .line 121
    .end local v0    # "bytes":[B
    :cond_12
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public static blacklist PKCS5PasswordToUTF8Bytes([C)[B
    .registers 2
    .param p0, "password"    # [C

    .line 135
    if-eqz p0, :cond_7

    .line 137
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0

    .line 141
    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method


# virtual methods
.method public abstract blacklist generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract blacklist generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract blacklist generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
.end method

.method public blacklist getIterationCount()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return v0
.end method

.method public blacklist getPassword()[B
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    return-object v0
.end method

.method public blacklist getSalt()[B
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    return-object v0
.end method

.method public blacklist init([B[BI)V
    .registers 4
    .param p1, "password"    # [B
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    .line 36
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    .line 37
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    .line 38
    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    .line 39
    return-void
.end method
