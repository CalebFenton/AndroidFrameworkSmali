.class public Lcom/android/org/conscrypt/ct/CTVerifier;
.super Ljava/lang/Object;
.source "CTVerifier.java"


# instance fields
.field private final store:Lcom/android/org/conscrypt/ct/CTLogStore;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/ct/CTLogStore;)V
    .locals 0
    .param p1, "store"    # Lcom/android/org/conscrypt/ct/CTLogStore;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTVerifier;->store:Lcom/android/org/conscrypt/ct/CTLogStore;

    #@5
    .line 31
    return-void
.end method

.method private getSCTsFromOCSPResponse([B[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .locals 8
    .param p1, "data"    # [B
    .param p2, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 202
    if-eqz p1, :cond_0

    #@2
    array-length v0, p2

    #@3
    const/4 v1, 0x2

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 203
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@8
    return-object v0

    #@9
    .line 206
    :cond_1
    const-string/jumbo v1, "1.3.6.1.4.1.11129.2.4.5"

    #@c
    .line 207
    const/4 v0, 0x0

    #@d
    aget-object v0, p2, v0

    #@f
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    #@12
    move-result-wide v2

    #@13
    .line 208
    const/4 v0, 0x1

    #@14
    aget-object v0, p2, v0

    #@16
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    #@19
    move-result-wide v4

    #@1a
    move-object v0, p1

    #@1b
    .line 206
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->get_ocsp_single_extension([BLjava/lang/String;JJ)[B

    #@1e
    move-result-object v7

    #@1f
    .line 209
    .local v7, "extData":[B
    if-nez v7, :cond_2

    #@21
    .line 210
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@23
    return-object v0

    #@24
    .line 216
    :cond_2
    :try_start_0
    invoke-static {v7}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    #@27
    move-result-object v0

    #@28
    .line 215
    invoke-static {v0}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    #@2b
    move-result-object v0

    #@2c
    .line 217
    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@2e
    .line 214
    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    move-result-object v0

    #@32
    return-object v0

    #@33
    .line 218
    :catch_0
    move-exception v6

    #@34
    .line 219
    .local v6, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@36
    return-object v0
.end method

.method private getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    .locals 7
    .param p1, "data"    # [B
    .param p2, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 155
    if-nez p1, :cond_0

    #@2
    .line 156
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@4
    return-object v5

    #@5
    .line 161
    :cond_0
    const/4 v5, 0x2

    #@6
    .line 162
    const/4 v6, 0x2

    #@7
    .line 161
    :try_start_0
    invoke-static {p1, v5, v6}, Lcom/android/org/conscrypt/ct/Serialization;->readList([BII)[[B
    :try_end_0
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v3

    #@b
    .line 167
    .local v3, "sctList":[[B
    new-instance v4, Ljava/util/ArrayList;

    #@d
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 168
    .local v4, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    const/4 v5, 0x0

    #@11
    array-length v6, v3

    #@12
    :goto_0
    if-ge v5, v6, :cond_1

    #@14
    aget-object v1, v3, v5

    #@16
    .line 170
    .local v1, "encodedSCT":[B
    :try_start_1
    invoke-static {v1, p2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->decode([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    #@19
    move-result-object v2

    #@1a
    .line 171
    .local v2, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_1 .. :try_end_1} :catch_1

    #@1d
    .line 168
    .end local v2    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 163
    .end local v1    # "encodedSCT":[B
    .end local v3    # "sctList":[[B
    .end local v4    # "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    :catch_0
    move-exception v0

    #@21
    .line 164
    .local v0, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@23
    return-object v5

    #@24
    .line 177
    .end local v0    # "e":Lcom/android/org/conscrypt/ct/SerializationException;
    .restart local v3    # "sctList":[[B
    .restart local v4    # "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    :cond_1
    return-object v4

    #@25
    .line 172
    .restart local v1    # "encodedSCT":[B
    :catch_1
    move-exception v0

    #@26
    .restart local v0    # "e":Lcom/android/org/conscrypt/ct/SerializationException;
    goto :goto_1
.end method

.method private getSCTsFromTLSExtension([B)Ljava/util/List;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 188
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getSCTsFromX509Extension(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .locals 4
    .param p1, "leaf"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 230
    const-string/jumbo v2, "1.3.6.1.4.1.11129.2.4.2"

    #@3
    invoke-virtual {p1, v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@6
    move-result-object v1

    #@7
    .line 231
    .local v1, "extData":[B
    if-nez v1, :cond_0

    #@9
    .line 232
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@b
    return-object v2

    #@c
    .line 238
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    #@f
    move-result-object v2

    #@10
    .line 237
    invoke-static {v2}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    #@13
    move-result-object v2

    #@14
    .line 239
    sget-object v3, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@16
    .line 236
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 240
    :catch_0
    move-exception v0

    #@1c
    .line 241
    .local v0, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@1e
    return-object v2
.end method

.method private markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .locals 4
    .param p2, "result"    # Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 141
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "sct$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    #@10
    .line 142
    .local v0, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    new-instance v2, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    #@12
    sget-object v3, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@14
    invoke-direct {v2, v0, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    #@17
    invoke-virtual {p2, v2}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    #@1a
    goto :goto_0

    #@1b
    .line 140
    .end local v0    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    :cond_0
    return-void
.end method

.method private verifyEmbeddedSCTs(Ljava/util/List;[Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .locals 9
    .param p2, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p3, "result"    # Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;[",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 69
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v7

    #@4
    if-eqz v7, :cond_0

    #@6
    .line 70
    return-void

    #@7
    .line 73
    :cond_0
    const/4 v3, 0x0

    #@8
    .line 74
    .local v3, "precertEntry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    array-length v7, p2

    #@9
    const/4 v8, 0x2

    #@a
    if-lt v7, v8, :cond_1

    #@c
    .line 75
    const/4 v7, 0x0

    #@d
    aget-object v2, p2, v7

    #@f
    .line 76
    .local v2, "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v7, 0x1

    #@10
    aget-object v1, p2, v7

    #@12
    .line 79
    .local v1, "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :try_start_0
    invoke-static {v2, v1}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForPrecertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v3

    #@16
    .line 85
    .end local v1    # "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v3    # "precertEntry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    #@18
    .line 86
    invoke-direct {p0, p1, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    #@1b
    .line 87
    return-void

    #@1c
    .line 80
    .restart local v1    # "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .restart local v2    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .restart local v3    # "precertEntry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :catch_0
    move-exception v0

    #@1d
    .local v0, "e":Ljava/security/cert/CertificateException;
    goto :goto_0

    #@1e
    .line 90
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v1    # "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v3    # "precertEntry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v5

    #@22
    .local v5, "sct$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_3

    #@28
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    #@2e
    .line 91
    .local v4, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    invoke-direct {p0, v4, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@31
    move-result-object v6

    #@32
    .line 92
    .local v6, "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    new-instance v7, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    #@34
    invoke-direct {v7, v4, v6}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    #@37
    invoke-virtual {p3, v7}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    #@3a
    goto :goto_1

    #@3b
    .line 67
    .end local v4    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .end local v6    # "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    :cond_3
    return-void
.end method

.method private verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .locals 6
    .param p2, "leaf"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p3, "result"    # Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 105
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 106
    return-void

    #@7
    .line 111
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForX509Certificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v4

    #@b
    .line 117
    .local v4, "x509Entry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "sct$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    #@1b
    .line 118
    .local v1, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    invoke-direct {p0, v1, v4}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@1e
    move-result-object v3

    #@1f
    .line 119
    .local v3, "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    new-instance v5, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    #@21
    invoke-direct {v5, v1, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    #@24
    invoke-virtual {p3, v5}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    #@27
    goto :goto_0

    #@28
    .line 112
    .end local v1    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .end local v2    # "sct$iterator":Ljava/util/Iterator;
    .end local v3    # "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .end local v4    # "x509Entry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :catch_0
    move-exception v0

    #@29
    .line 113
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-direct {p0, p1, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    #@2c
    .line 114
    return-void

    #@2d
    .line 103
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .restart local v2    # "sct$iterator":Ljava/util/Iterator;
    .restart local v4    # "x509Entry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :cond_1
    return-void
.end method

.method private verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .locals 3
    .param p1, "sct"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .param p2, "certEntry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;

    #@0
    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/CTVerifier;->store:Lcom/android/org/conscrypt/ct/CTLogStore;

    #@2
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Lcom/android/org/conscrypt/ct/CTLogStore;->getKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;

    #@9
    move-result-object v0

    #@a
    .line 129
    .local v0, "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    if-nez v0, :cond_0

    #@c
    .line 130
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@e
    return-object v1

    #@f
    .line 133
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/ct/CTLogInfo;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method


# virtual methods
.method public verifySignedCertificateTimestamps([Lcom/android/org/conscrypt/OpenSSLX509Certificate;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .locals 7
    .param p1, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p2, "tlsData"    # [B
    .param p3, "ocspData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 43
    array-length v5, p1

    #@2
    if-nez v5, :cond_0

    #@4
    .line 44
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v6, "Chain of certificates mustn\'t be empty."

    #@9
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v5

    #@d
    .line 47
    :cond_0
    aget-object v1, p1, v6

    #@f
    .line 49
    .local v1, "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    new-instance v3, Lcom/android/org/conscrypt/ct/CTVerificationResult;

    #@11
    invoke-direct {v3}, Lcom/android/org/conscrypt/ct/CTVerificationResult;-><init>()V

    #@14
    .line 50
    .local v3, "result":Lcom/android/org/conscrypt/ct/CTVerificationResult;
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromTLSExtension([B)Ljava/util/List;

    #@17
    move-result-object v4

    #@18
    .line 51
    .local v4, "tlsScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v4, v1, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    #@1b
    .line 53
    invoke-direct {p0, p3, p1}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromOCSPResponse([B[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    #@1e
    move-result-object v2

    #@1f
    .line 54
    .local v2, "ocspScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v2, v1, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    #@22
    .line 56
    aget-object v5, p1, v6

    #@24
    invoke-direct {p0, v5}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromX509Extension(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    #@27
    move-result-object v0

    #@28
    .line 57
    .local v0, "embeddedScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v0, p1, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyEmbeddedSCTs(Ljava/util/List;[Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    #@2b
    .line 58
    return-object v3
.end method
