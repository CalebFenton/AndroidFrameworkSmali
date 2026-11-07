.class Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;
.super Ljava/lang/Object;
.source "BasicOCSPRespBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseObject"
.end annotation


# instance fields
.field blacklist certId:Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

.field blacklist certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

.field blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field blacklist nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

.field blacklist thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 12
    .param p1, "certId"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;
    .param p2, "certStatus"    # Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateStatus;
    .param p3, "thisUpdate"    # Ljava/util/Date;
    .param p4, "nextUpdate"    # Ljava/util/Date;
    .param p5, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certId:Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    .line 57
    const/4 v0, 0x0

    if-nez p2, :cond_10

    .line 59
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_5b

    .line 61
    :cond_10
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/UnknownStatus;

    if-eqz v1, :cond_1f

    .line 63
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    const/4 v2, 0x2

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_5b

    .line 67
    :cond_1f
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;

    .line 69
    .local v1, "rs":Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->hasRevocationReason()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 71
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 72
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationReason()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;)V

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    goto :goto_5b

    .line 76
    :cond_46
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 77
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-direct {v3, v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/CRLReason;)V

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    .line 81
    .end local v1    # "rs":Lcom/android/internal/org/bouncycastle/cert/ocsp/RevokedStatus;
    :goto_5b
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p3}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 83
    if-eqz p4, :cond_6c

    .line 85
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v0, p4}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_6e

    .line 89
    :cond_6c
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 92
    :goto_6e
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 93
    return-void
.end method


# virtual methods
.method public blacklist toResponse()Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certId:Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/CertificateID;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->certStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPRespBuilder$ResponseObject;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertID;Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    return-object v0
.end method
