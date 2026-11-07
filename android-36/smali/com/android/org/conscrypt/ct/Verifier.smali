.class public Lcom/android/org/conscrypt/ct/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# instance fields
.field private final blacklist store:Lcom/android/org/conscrypt/ct/LogStore;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ct/LogStore;)V
    .registers 2
    .param p1, "store"    # Lcom/android/org/conscrypt/ct/LogStore;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/Verifier;->store:Lcom/android/org/conscrypt/ct/LogStore;

    .line 39
    return-void
.end method

.method private blacklist getSCTsFromOCSPResponse([B[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .registers 13
    .param p1, "data"    # [B
    .param p2, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 221
    if-eqz p1, :cond_3e

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    move-object v2, p1

    goto :goto_3f

    .line 225
    :cond_8
    const/4 v0, 0x0

    aget-object v1, p2, v0

    .line 226
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v4

    aget-object v6, p2, v0

    const/4 v0, 0x1

    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v7

    aget-object v9, p2, v0

    .line 225
    const-string v3, "1.3.6.1.4.1.11129.2.4.5"

    move-object v2, p1

    .end local p1    # "data":[B
    .local v2, "data":[B
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->get_ocsp_single_extension([BLjava/lang/String;JLcom/android/org/conscrypt/OpenSSLX509Certificate;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object p1

    .line 227
    .local p1, "extData":[B
    if-nez p1, :cond_28

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 232
    :cond_28
    nop

    .line 233
    :try_start_29
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    .line 232
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/ct/Verifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    move-result-object v0
    :try_end_37
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_29 .. :try_end_37} :catch_38

    return-object v0

    .line 235
    :catch_38
    move-exception v0

    .line 236
    .local v0, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 221
    .end local v0    # "e":Lcom/android/org/conscrypt/ct/SerializationException;
    .end local v2    # "data":[B
    .local p1, "data":[B
    :cond_3e
    move-object v2, p1

    .line 222
    .end local p1    # "data":[B
    .restart local v2    # "data":[B
    :goto_3f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    .registers 8
    .param p0, "data"    # [B
    .param p1, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 173
    if-nez p0, :cond_7

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 179
    :cond_7
    const/4 v0, 0x2

    :try_start_8
    invoke-static {p0, v0, v0}, Lcom/android/org/conscrypt/ct/Serialization;->readList([BII)[[B

    move-result-object v0
    :try_end_c
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_8 .. :try_end_c} :catch_27

    .line 183
    .local v0, "sctList":[[B
    nop

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_26

    aget-object v4, v0, v3

    .line 188
    .local v4, "encodedSCT":[B
    nop

    .line 189
    :try_start_19
    invoke-static {v4, p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->decode([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v5

    .line 190
    .local v5, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_19 .. :try_end_20} :catch_22

    .line 193
    nop

    .end local v5    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    goto :goto_23

    .line 191
    :catch_22
    move-exception v5

    .line 186
    .end local v4    # "encodedSCT":[B
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 196
    :cond_26
    return-object v1

    .line 181
    .end local v0    # "sctList":[[B
    .end local v1    # "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    :catch_27
    move-exception v0

    .line 182
    .local v0, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getSCTsFromTLSExtension([B)Ljava/util/List;
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/ct/Verifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getSCTsFromX509Extension(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .registers 5
    .param p1, "leaf"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 247
    const-string v0, "1.3.6.1.4.1.11129.2.4.2"

    invoke-virtual {p1, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 248
    .local v0, "extData":[B
    if-nez v0, :cond_d

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 253
    :cond_d
    nop

    .line 254
    :try_start_e
    invoke-static {v0}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v1

    sget-object v2, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    .line 253
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/ct/Verifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    move-result-object v1
    :try_end_1c
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_e .. :try_end_1c} :catch_1d

    return-object v1

    .line 256
    :catch_1d
    move-exception v1

    .line 257
    .local v1, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private blacklist markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/VerificationResult;)V
    .registers 7
    .param p2, "result"    # Lcom/android/org/conscrypt/ct/VerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lcom/android/org/conscrypt/ct/VerificationResult;",
            ")V"
        }
    .end annotation

    .line 157
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 158
    .local v1, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    new-instance v2, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;)V

    .line 159
    .local v2, "builder":Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;
    sget-object v3, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->setStatus(Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->build()Lcom/android/org/conscrypt/ct/VerifiedSCT;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/org/conscrypt/ct/VerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    .line 160
    .end local v1    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .end local v2    # "builder":Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;
    goto :goto_4

    .line 161
    :cond_23
    return-void
.end method

.method private blacklist verifyEmbeddedSCTs(Ljava/util/List;[Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/VerificationResult;)V
    .registers 8
    .param p2, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p3, "result"    # Lcom/android/org/conscrypt/ct/VerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;[",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            "Lcom/android/org/conscrypt/ct/VerificationResult;",
            ")V"
        }
    .end annotation

    .line 84
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    return-void

    .line 88
    :cond_7
    const/4 v0, 0x0

    .line 89
    .local v0, "precertEntry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    array-length v1, p2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_19

    .line 90
    const/4 v1, 0x0

    aget-object v1, p2, v1

    .line 91
    .local v1, "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v2, 0x1

    aget-object v2, p2, v2

    .line 94
    .local v2, "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :try_start_12
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForPrecertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;

    move-result-object v3
    :try_end_16
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_16} :catch_18

    move-object v0, v3

    .line 97
    goto :goto_19

    .line 95
    :catch_18
    move-exception v3

    .line 100
    .end local v1    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_19
    :goto_19
    if-nez v0, :cond_1f

    .line 101
    invoke-direct {p0, p1, p3}, Lcom/android/org/conscrypt/ct/Verifier;->markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/VerificationResult;)V

    .line 102
    return-void

    .line 105
    :cond_1f
    invoke-direct {p0, p1, v0, p3}, Lcom/android/org/conscrypt/ct/Verifier;->verifySCTs(Ljava/util/List;Lcom/android/org/conscrypt/ct/CertificateEntry;Lcom/android/org/conscrypt/ct/VerificationResult;)V

    .line 106
    return-void
.end method

.method private blacklist verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/VerificationResult;)V
    .registers 5
    .param p2, "leaf"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p3, "result"    # Lcom/android/org/conscrypt/ct/VerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            "Lcom/android/org/conscrypt/ct/VerificationResult;",
            ")V"
        }
    .end annotation

    .line 116
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    return-void

    .line 122
    :cond_7
    :try_start_7
    invoke-static {p2}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForX509Certificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;

    move-result-object v0
    :try_end_b
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_b} :catch_10

    .line 126
    .local v0, "x509Entry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    nop

    .line 128
    invoke-direct {p0, p1, v0, p3}, Lcom/android/org/conscrypt/ct/Verifier;->verifySCTs(Ljava/util/List;Lcom/android/org/conscrypt/ct/CertificateEntry;Lcom/android/org/conscrypt/ct/VerificationResult;)V

    .line 129
    return-void

    .line 123
    .end local v0    # "x509Entry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :catch_10
    move-exception v0

    .line 124
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-direct {p0, p1, p3}, Lcom/android/org/conscrypt/ct/Verifier;->markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/VerificationResult;)V

    .line 125
    return-void
.end method

.method private blacklist verifySCTs(Ljava/util/List;Lcom/android/org/conscrypt/ct/CertificateEntry;Lcom/android/org/conscrypt/ct/VerificationResult;)V
    .registers 10
    .param p2, "certEntry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;
    .param p3, "result"    # Lcom/android/org/conscrypt/ct/VerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lcom/android/org/conscrypt/ct/CertificateEntry;",
            "Lcom/android/org/conscrypt/ct/VerificationResult;",
            ")V"
        }
    .end annotation

    .line 136
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 137
    .local v1, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    new-instance v2, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;)V

    .line 138
    .local v2, "builder":Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;
    iget-object v3, p0, Lcom/android/org/conscrypt/ct/Verifier;->store:Lcom/android/org/conscrypt/ct/LogStore;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/org/conscrypt/ct/LogStore;->getKnownLog([B)Lcom/android/org/conscrypt/ct/LogInfo;

    move-result-object v3

    .line 139
    .local v3, "log":Lcom/android/org/conscrypt/ct/LogInfo;
    if-nez v3, :cond_27

    .line 140
    sget-object v4, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    invoke-virtual {v2, v4}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->setStatus(Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;

    goto :goto_35

    .line 142
    :cond_27
    invoke-virtual {v3, v1, p2}, Lcom/android/org/conscrypt/ct/LogInfo;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v4

    .line 143
    .local v4, "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    invoke-virtual {v2, v4}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->setStatus(Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;

    .line 144
    sget-object v5, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    if-ne v4, v5, :cond_35

    .line 145
    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->setLogInfo(Lcom/android/org/conscrypt/ct/LogInfo;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;

    .line 148
    .end local v4    # "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    :cond_35
    :goto_35
    invoke-virtual {v2}, Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;->build()Lcom/android/org/conscrypt/ct/VerifiedSCT;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/org/conscrypt/ct/VerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    .line 149
    .end local v1    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .end local v2    # "builder":Lcom/android/org/conscrypt/ct/VerifiedSCT$Builder;
    .end local v3    # "log":Lcom/android/org/conscrypt/ct/LogInfo;
    goto :goto_4

    .line 150
    :cond_3d
    return-void
.end method


# virtual methods
.method public blacklist verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lcom/android/org/conscrypt/ct/VerificationResult;
    .registers 10
    .param p2, "tlsData"    # [B
    .param p3, "ocspData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B)",
            "Lcom/android/org/conscrypt/ct/VerificationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 43
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 44
    .local v0, "certs":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v1, 0x0

    .line 45
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 46
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    aput-object v5, v0, v1

    .line 47
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    move v1, v4

    goto :goto_b

    .line 48
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_21
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/conscrypt/ct/Verifier;->verifySignedCertificateTimestamps([Lcom/android/org/conscrypt/OpenSSLX509Certificate;[B[B)Lcom/android/org/conscrypt/ct/VerificationResult;

    move-result-object v2

    return-object v2
.end method

.method public blacklist verifySignedCertificateTimestamps([Lcom/android/org/conscrypt/OpenSSLX509Certificate;[B[B)Lcom/android/org/conscrypt/ct/VerificationResult;
    .registers 9
    .param p1, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p2, "tlsData"    # [B
    .param p3, "ocspData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 59
    array-length v0, p1

    if-eqz v0, :cond_23

    .line 63
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 65
    .local v1, "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    new-instance v2, Lcom/android/org/conscrypt/ct/VerificationResult;

    invoke-direct {v2}, Lcom/android/org/conscrypt/ct/VerificationResult;-><init>()V

    .line 66
    .local v2, "result":Lcom/android/org/conscrypt/ct/VerificationResult;
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/ct/Verifier;->getSCTsFromTLSExtension([B)Ljava/util/List;

    move-result-object v3

    .line 67
    .local v3, "tlsScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v3, v1, v2}, Lcom/android/org/conscrypt/ct/Verifier;->verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/VerificationResult;)V

    .line 69
    invoke-direct {p0, p3, p1}, Lcom/android/org/conscrypt/ct/Verifier;->getSCTsFromOCSPResponse([B[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    move-result-object v4

    .line 70
    .local v4, "ocspScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v4, v1, v2}, Lcom/android/org/conscrypt/ct/Verifier;->verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/VerificationResult;)V

    .line 72
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ct/Verifier;->getSCTsFromX509Extension(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "embeddedScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v0, p1, v2}, Lcom/android/org/conscrypt/ct/Verifier;->verifyEmbeddedSCTs(Ljava/util/List;[Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/VerificationResult;)V

    .line 74
    return-object v2

    .line 60
    .end local v0    # "embeddedScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    .end local v1    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "result":Lcom/android/org/conscrypt/ct/VerificationResult;
    .end local v3    # "tlsScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    .end local v4    # "ocspScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Chain of certificates mustn\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
