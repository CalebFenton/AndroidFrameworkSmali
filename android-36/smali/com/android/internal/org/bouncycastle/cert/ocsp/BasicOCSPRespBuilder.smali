.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
.super Ljava/lang/Object;
.source "BasicOCSPRespBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;
    }
.end annotation


# instance fields
.field private blacklist list:Ljava/util/List;

.field private blacklist responderID:Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

.field private blacklist responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;)V
    .registers 4
    .param p1, "key"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "digCalc"    # Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 122
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;)V
    .registers 3
    .param p1, "responderID"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 108
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    .line 109
    return-void
.end method


# virtual methods
.method public blacklist addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 9
    .param p1, "certID"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;

    .line 135
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "certID":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .end local p2    # "certStatus":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .local v1, "certID":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .local v2, "certStatus":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 137
    return-object v0
.end method

.method public blacklist addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 10
    .param p1, "certID"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .param p3, "singleExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 152
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .end local p1    # "certID":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .end local p2    # "certStatus":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .end local p3    # "singleExtensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .local v1, "certID":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .local v2, "certStatus":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .local v5, "singleExtensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 154
    return-object v0
.end method

.method public blacklist addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 11
    .param p1, "certID"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .param p3, "nextUpdate"    # Ljava/util/Date;
    .param p4, "singleExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 171
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "certID":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .end local p2    # "certStatus":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .end local p3    # "nextUpdate":Ljava/util/Date;
    .end local p4    # "singleExtensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .local v1, "certID":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .local v2, "certStatus":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .local v4, "nextUpdate":Ljava/util/Date;
    .local v5, "singleExtensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 173
    return-object v0
.end method

.method public blacklist addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 11
    .param p1, "certID"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .param p3, "thisUpdate"    # Ljava/util/Date;
    .param p4, "nextUpdate"    # Ljava/util/Date;

    .line 190
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "certID":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .end local p2    # "certStatus":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .end local p3    # "thisUpdate":Ljava/util/Date;
    .end local p4    # "nextUpdate":Ljava/util/Date;
    .local v1, "certID":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .local v2, "certStatus":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .local v3, "thisUpdate":Ljava/util/Date;
    .local v4, "nextUpdate":Ljava/util/Date;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;

    .line 192
    return-object v0
.end method

.method public blacklist addResponse(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 13
    .param p1, "certID"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .param p3, "thisUpdate"    # Ljava/util/Date;
    .param p4, "nextUpdate"    # Ljava/util/Date;
    .param p5, "singleExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 211
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "certID":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .end local p2    # "certStatus":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .end local p3    # "thisUpdate":Ljava/util/Date;
    .end local p4    # "nextUpdate":Ljava/util/Date;
    .end local p5    # "singleExtensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .local v2, "certID":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .local v3, "certStatus":Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .local v4, "thisUpdate":Ljava/util/Date;
    .local v5, "nextUpdate":Ljava/util/Date;
    .local v6, "singleExtensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;-><init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-object p0
.end method

.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/util/Date;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;
    .registers 13
    .param p1, "signer"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p2, "chain"    # [Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .param p3, "producedAt"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 237
    .local v0, "it":Ljava/util/Iterator;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 239
    .local v1, "responses":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 243
    :try_start_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->toResponse()Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 248
    goto :goto_b

    .line 245
    :catch_1f
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    const-string v4, "exception creating Request"

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 251
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_28
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responderID:Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v3

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v4, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 256
    .local v2, "tbsResp":Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;
    :try_start_3f
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 258
    .local v3, "sigOut":Ljava/io/OutputStream;
    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 259
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 261
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_58} :catch_89

    .line 266
    .end local v3    # "sigOut":Ljava/io/OutputStream;
    .local v4, "bitSig":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    nop

    .line 268
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 270
    .local v3, "sigAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v5, 0x0

    .line 271
    .local v5, "chainSeq":Lcom/android/internal/org/bouncycastle/asn1/DERSequence;
    if-eqz p2, :cond_7e

    array-length v6, p2

    if-lez v6, :cond_7e

    .line 273
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 275
    .local v6, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_69
    array-length v8, p2

    if-eq v7, v8, :cond_78

    .line 277
    aget-object v8, p2, v7

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 275
    add-int/lit8 v7, v7, 0x1

    goto :goto_69

    .line 280
    .end local v7    # "i":I
    :cond_78
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object v5, v7

    .line 283
    .end local v6    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_7e
    new-instance v6, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    return-object v6

    .line 263
    .end local v3    # "sigAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "bitSig":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .end local v5    # "chainSeq":Lcom/android/internal/org/bouncycastle/asn1/DERSequence;
    :catch_89
    move-exception v3

    .line 265
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception processing TBSRequest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public blacklist setResponseExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
    .registers 2
    .param p1, "responseExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 224
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 226
    return-object p0
.end method
