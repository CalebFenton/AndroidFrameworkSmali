.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
.super Ljava/lang/Object;
.source "BCPBEKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field blacklist algorithm:Ljava/lang/String;

.field blacklist digest:I

.field private final blacklist hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist iterationCount:I

.field blacklist ivSize:I

.field blacklist keySize:I

.field blacklist oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final blacklist param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private final blacklist password:[C

.field private final blacklist salt:[B

.field blacklist tryWrong:Z

.field blacklist type:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 11

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 53
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    .line 56
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    .line 57
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    .line 58
    iput p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    .line 59
    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    .line 60
    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->iterationCount:I

    .line 61
    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    .line 62
    iput-object p8, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    return-void
.end method

.method static blacklist checkDestroyed(Ljavax/security/auth/Destroyable;)V
    .registers 2

    .line 257
    invoke-interface {p0}, Ljavax/security/auth/Destroyable;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 259
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "key has been destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api destroy()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 239
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 241
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->fill([CC)V

    .line 243
    :cond_11
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    if-eqz p0, :cond_18

    .line 245
    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    :cond_18
    return-void
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    return-object v0
.end method

.method blacklist getDigest()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    .line 143
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    return v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    if-eqz v0, :cond_18

    .line 98
    instance-of v1, v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_11

    .line 100
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    goto :goto_13

    .line 104
    :cond_11
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 107
    :goto_13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    goto :goto_34

    .line 111
    :cond_18
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    goto :goto_34

    :cond_24
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2e

    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    goto :goto_34

    .line 121
    :cond_2e
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    .line 125
    :goto_34
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 1

    .line 85
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 87
    const-string p0, "RAW"

    return-object p0
.end method

.method public whitelist test-api getIterationCount()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->iterationCount:I

    .line 211
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    return v0
.end method

.method public blacklist getIvSize()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    .line 161
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    return v0
.end method

.method blacklist getKeySize()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    .line 152
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    return v0
.end method

.method public blacklist getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 220
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    return-object v0
.end method

.method public blacklist getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 170
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    return-object v0
.end method

.method public whitelist test-api getPassword()[C
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([C)[C

    move-result-object v0

    .line 182
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    if-eqz v0, :cond_c

    return-object v0

    .line 186
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no password available"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api getSalt()[B
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 199
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    return-object v0
.end method

.method blacklist getType()I
    .registers 2

    .line 132
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    .line 134
    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    return v0
.end method

.method public whitelist test-api isDestroyed()Z
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method blacklist shouldTryWrongPKCS12()Z
    .registers 1

    .line 232
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    return p0
.end method
