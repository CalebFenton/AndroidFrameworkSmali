.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;
.super Ljava/lang/Object;
.source "BasicOCSPResp.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Encodable;


# instance fields
.field private blacklist data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

.field private blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V
    .registers 3
    .param p1, "resp"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    .line 47
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    .line 48
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 209
    if-ne p1, p0, :cond_4

    .line 211
    const/4 v0, 0x1

    return v0

    .line 214
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    if-nez v0, :cond_a

    .line 216
    const/4 v0, 0x0

    return v0

    .line 219
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 221
    .local v0, "r":Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getCerts()[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 155
    .local v0, "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v0, :cond_2d

    .line 157
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 159
    .local v1, "certs":[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, v1

    if-eq v2, v3, :cond_2c

    .line 161
    new-instance v3, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V

    aput-object v3, v1, v2

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 164
    .end local v2    # "i":I
    :cond_2c
    return-object v1

    .line 167
    .end local v1    # "certs":[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    :cond_2d
    sget-object v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object v1

    .line 171
    .end local v0    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_30
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public blacklist getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0

    .line 117
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExtensionOIDs()Ljava/util/List;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProducedAt()Ljava/util/Date;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getProducedAt()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResponderId()Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponderID()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;)V

    return-object v0
.end method

.method public blacklist getResponses()[Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponses()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 95
    .local v0, "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;

    .line 97
    .local v1, "rs":[Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-eq v2, v3, :cond_22

    .line 99
    new-instance v3, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;)V

    aput-object v3, v1, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 102
    .end local v2    # "i":I
    :cond_22
    return-object v1
.end method

.method public blacklist getSignature()[B
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignatureAlgOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignatureAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTBSResponseData()[B
    .registers 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 61
    :catch_d
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist hasExtensions()Z
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isSignatureValid(Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;)Z
    .registers 6
    .param p1, "verifierProvider"    # Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object v0

    .line 185
    .local v0, "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 187
    .local v1, "vOut":Ljava/io/OutputStream;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 188
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->getSignature()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    return v2

    .line 192
    .end local v0    # "verifier":Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .end local v1    # "vOut":Ljava/io/OutputStream;
    :catch_29
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception processing sig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
