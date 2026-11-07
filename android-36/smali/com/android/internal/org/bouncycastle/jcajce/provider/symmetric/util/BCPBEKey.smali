.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
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

.field blacklist oid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final blacklist param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

.field private final blacklist password:[C

.field private final blacklist salt:[B

.field blacklist tryWrong:Z

.field blacklist type:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 11
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "type"    # I
    .param p4, "digest"    # I
    .param p5, "keySize"    # I
    .param p6, "ivSize"    # I
    .param p7, "pbeKeySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p8, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 53
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    .line 56
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    .line 57
    iput p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    .line 58
    iput p6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    .line 59
    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    .line 60
    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->iterationCount:I

    .line 61
    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    .line 62
    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 67
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->iterationCount:I

    .line 71
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    .line 72
    return-void
.end method

.method static blacklist checkDestroyed(Ljavax/security/auth/Destroyable;)V
    .registers 3
    .param p0, "destroyable"    # Ljavax/security/auth/Destroyable;

    .line 257
    invoke-interface {p0}, Ljavax/security/auth/Destroyable;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 261
    return-void

    .line 259
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api destroy()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 239
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 241
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([CC)V

    .line 243
    :cond_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    if-eqz v0, :cond_1c

    .line 245
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 248
    :cond_1c
    return-void
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    .line 78
    .local v0, "rv":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 80
    return-object v0
.end method

.method blacklist getDigest()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    .line 143
    .local v0, "rv":I
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 145
    return v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    if-eqz v0, :cond_1e

    .line 98
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_15

    .line 100
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .local v0, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_19

    .line 104
    .end local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_15
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 107
    .restart local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :goto_19
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 108
    .local v0, "enc":[B
    goto :goto_3c

    .line 111
    .end local v0    # "enc":[B
    :cond_1e
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 113
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    .restart local v0    # "enc":[B
    goto :goto_3c

    .line 115
    .end local v0    # "enc":[B
    :cond_2a
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_36

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    .restart local v0    # "enc":[B
    goto :goto_3c

    .line 121
    .end local v0    # "enc":[B
    :cond_36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    .line 125
    .restart local v0    # "enc":[B
    :goto_3c
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 127
    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 85
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 87
    const-string v0, "RAW"

    return-object v0
.end method

.method public whitelist test-api getIterationCount()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->iterationCount:I

    .line 211
    .local v0, "rv":I
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 213
    return v0
.end method

.method public blacklist getIvSize()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    .line 161
    .local v0, "rv":I
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 163
    return v0
.end method

.method blacklist getKeySize()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    .line 152
    .local v0, "rv":I
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 154
    return v0
.end method

.method public blacklist getOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 220
    .local v0, "rv":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 222
    return-object v0
.end method

.method public blacklist getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 170
    .local v0, "rv":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 172
    return-object v0
.end method

.method public whitelist test-api getPassword()[C
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([C)[C

    move-result-object v0

    .line 182
    .local v0, "clone":[C
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 184
    if-eqz v0, :cond_c

    .line 189
    return-object v0

    .line 186
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no password available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getSalt()[B
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 199
    .local v0, "clone":[B
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 201
    return-object v0
.end method

.method blacklist getType()I
    .registers 2

    .line 132
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    .line 134
    .local v0, "rv":I
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 136
    return v0
.end method

.method public whitelist test-api isDestroyed()Z
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public blacklist setTryWrongPKCS12Zero(Z)V
    .registers 2
    .param p1, "tryWrong"    # Z

    .line 227
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 228
    return-void
.end method

.method blacklist shouldTryWrongPKCS12()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    return v0
.end method
