.class public Lcom/android/org/conscrypt/ct/CTLogInfo;
.super Ljava/lang/Object;
.source "CTLogInfo.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final logId:[B

.field private final publicKey:Ljava/security/PublicKey;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    :try_start_0
    const-string/jumbo v1, "SHA-256"

    #@6
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@9
    move-result-object v1

    #@a
    .line 41
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@d
    move-result-object v2

    #@e
    .line 40
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->logId:[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 47
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    #@16
    .line 48
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    #@18
    .line 49
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    #@1a
    .line 38
    return-void

    #@1b
    .line 42
    :catch_0
    move-exception v0

    #@1c
    .line 44
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1e
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@21
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 73
    if-ne p0, p1, :cond_0

    #@3
    .line 74
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 76
    :cond_0
    instance-of v2, p1, Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 77
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 80
    nop

    #@c
    nop

    #@d
    .line 82
    .local v0, "that":Lcom/android/org/conscrypt/ct/CTLogInfo;
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    #@f
    iget-object v3, v0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 83
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    #@19
    iget-object v3, v0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    .line 82
    if-eqz v2, :cond_2

    #@21
    .line 84
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    #@23
    iget-object v2, v0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    .line 81
    :cond_2
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getID()[B
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->logId:[B

    #@2
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    #@2
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    #@2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, 0x1f

    #@8
    .line 91
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    #@c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@f
    move-result v2

    #@10
    add-int v0, v1, v2

    #@12
    .line 92
    mul-int/lit8 v1, v0, 0x1f

    #@14
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    #@16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@19
    move-result v2

    #@1a
    add-int v0, v1, v2

    #@1c
    .line 94
    return v0
.end method

.method public verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .locals 9
    .param p1, "sct"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .param p2, "entry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;

    #@0
    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    #@3
    move-result-object v7

    #@4
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ct/CTLogInfo;->getID()[B

    #@7
    move-result-object v8

    #@8
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    #@b
    move-result v7

    #@c
    if-nez v7, :cond_0

    #@e
    .line 106
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@10
    return-object v7

    #@11
    .line 111
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->encodeTBS(Lcom/android/org/conscrypt/ct/CertificateEntry;)[B
    :try_end_0
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v6

    #@15
    .line 118
    .local v6, "toVerify":[B
    :try_start_1
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;

    #@18
    move-result-object v7

    #@19
    invoke-virtual {v7}, Lcom/android/org/conscrypt/ct/DigitallySigned;->getAlgorithm()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 119
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    move-result-object v5

    #@21
    .line 125
    .local v5, "signature":Ljava/security/Signature;
    :try_start_2
    iget-object v7, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    #@23
    invoke-virtual {v5, v7}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2

    #@26
    .line 131
    :try_start_3
    invoke-virtual {v5, v6}, Ljava/security/Signature;->update([B)V

    #@29
    .line 132
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v7}, Lcom/android/org/conscrypt/ct/DigitallySigned;->getSignature()[B

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v5, v7}, Ljava/security/Signature;->verify([B)Z

    #@34
    move-result v7

    #@35
    if-nez v7, :cond_1

    #@37
    .line 133
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    :try_end_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_3

    #@39
    return-object v7

    #@3a
    .line 112
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v5    # "signature":Ljava/security/Signature;
    .end local v6    # "toVerify":[B
    :catch_0
    move-exception v1

    #@3b
    .line 113
    .local v1, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@3d
    return-object v7

    #@3e
    .line 120
    .end local v1    # "e":Lcom/android/org/conscrypt/ct/SerializationException;
    .restart local v6    # "toVerify":[B
    :catch_1
    move-exception v3

    #@3f
    .line 121
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@41
    return-object v7

    #@42
    .line 126
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v5    # "signature":Ljava/security/Signature;
    :catch_2
    move-exception v2

    #@43
    .line 127
    .local v2, "e":Ljava/security/InvalidKeyException;
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@45
    return-object v7

    #@46
    .line 135
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :cond_1
    :try_start_4
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    :try_end_4
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_3

    #@48
    return-object v7

    #@49
    .line 136
    :catch_3
    move-exception v4

    #@4a
    .line 139
    .local v4, "e":Ljava/security/SignatureException;
    new-instance v7, Ljava/lang/RuntimeException;

    #@4c
    invoke-direct {v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@4f
    throw v7
.end method
