.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
.super Ljava/lang/Object;
.source "OCSPReqBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;
    }
.end annotation


# instance fields
.field private blacklist list:Ljava/util/List;

.field private blacklist requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 31
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method private blacklist generateRequest(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;
    .registers 12
    .param p1, "contentSigner"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p2, "chain"    # [Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    .local v0, "it":Ljava/util/Iterator;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 119
    .local v1, "requests":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 123
    :try_start_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->toRequest()Lcom/android/internal/org/bouncycastle/asn1/ocsp/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 128
    goto :goto_b

    .line 125
    :catch_1f
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    const-string v4, "exception creating Request"

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_28
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 133
    .local v2, "tbsReq":Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;
    const/4 v3, 0x0

    .line 135
    .local v3, "signature":Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;
    if-eqz p1, :cond_ab

    .line 137
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    if-eqz v4, :cond_a2

    .line 144
    :try_start_3d
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 146
    .local v4, "sOut":Ljava/io/OutputStream;
    const-string v5, "DER"

    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4d} :catch_88

    .line 153
    .end local v4    # "sOut":Ljava/io/OutputStream;
    nop

    .line 155
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    .line 157
    .local v4, "bitSig":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 159
    .local v5, "sigAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    if-eqz p2, :cond_81

    array-length v6, p2

    if-lez v6, :cond_81

    .line 161
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 163
    .local v6, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_66
    array-length v8, p2

    if-eq v7, v8, :cond_75

    .line 165
    aget-object v8, p2, v7

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 163
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 168
    .end local v7    # "i":I
    :cond_75
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v7, v5, v4, v8}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object v3, v7

    .line 169
    .end local v6    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_ab

    .line 172
    :cond_81
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    invoke-direct {v6, v5, v4}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    move-object v3, v6

    goto :goto_ab

    .line 150
    .end local v4    # "bitSig":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .end local v5    # "sigAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_88
    move-exception v4

    .line 152
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception processing TBSRequest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 139
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a2
    new-instance v4, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    const-string/jumbo v5, "requestorName must be specified if request is signed."

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    :cond_ab
    :goto_ab
    new-instance v4, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;)V

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;)V

    return-object v4
.end method


# virtual methods
.method public blacklist addRequest(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .registers 5
    .param p1, "certId"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    .line 61
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;-><init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object p0
.end method

.method public blacklist addRequest(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .registers 5
    .param p1, "certId"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "singleRequestExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    new-instance v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;-><init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-object p0
.end method

.method public blacklist build()Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->generateRequest(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;
    .registers 5
    .param p1, "signer"    # Lcom/android/internal/org/bouncycastle/operator/ContentSigner;
    .param p2, "chain"    # [Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 196
    if-eqz p1, :cond_7

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->generateRequest(Lcom/android/internal/org/bouncycastle/operator/ContentSigner;[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v0

    return-object v0

    .line 198
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no signer specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRequestExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .registers 2
    .param p1, "requestExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 105
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 107
    return-object p0
.end method

.method public blacklist setRequestorName(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .registers 4
    .param p1, "requestorName"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 89
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 91
    return-object p0
.end method

.method public blacklist setRequestorName(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .registers 2
    .param p1, "requestorName"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 97
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 99
    return-object p0
.end method
