.class public Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
.super Ljava/lang/Object;
.source "PKCS12Key.java"

# interfaces
.implements Ljavax/crypto/SecretKey;


# instance fields
.field private final blacklist password:[C

.field private final blacklist useWrongZeroLengthConversion:Z


# direct methods
.method public constructor blacklist <init>([CZ)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 36
    new-array p1, v0, [C

    .line 39
    :cond_8
    array-length v1, p1

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    .line 40
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    .line 42
    array-length p0, p1

    invoke-static {p1, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 1

    .line 62
    const-string p0, "PKCS12"

    return-object p0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    array-length v0, v0

    if-nez v0, :cond_d

    const/4 p0, 0x2

    .line 84
    new-array p0, p0, [B

    return-object p0

    .line 87
    :cond_d
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 1

    .line 72
    const-string p0, "PKCS12"

    return-object p0
.end method
