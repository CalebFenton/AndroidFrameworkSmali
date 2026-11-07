.class public Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;
.super Ljava/lang/Object;
.source "PKCS12Key.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/PBKDFKey;


# instance fields
.field private final blacklist password:[C

.field private final blacklist useWrongZeroLengthConversion:Z


# direct methods
.method public constructor blacklist <init>([C)V
    .registers 3
    .param p1, "password"    # [C

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 23
    return-void
.end method

.method public constructor blacklist <init>([CZ)V
    .registers 6
    .param p1, "password"    # [C
    .param p2, "useWrongZeroLengthConversion"    # Z

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 36
    new-array p1, v0, [C

    .line 39
    :cond_8
    array-length v1, p1

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    .line 40
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    .line 42
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 62
    const-string v0, "PKCS12"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    array-length v0, v0

    if-nez v0, :cond_d

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0

    .line 87
    :cond_d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 72
    const-string v0, "PKCS12"

    return-object v0
.end method

.method public whitelist test-api getPassword()[C
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    return-object v0
.end method
