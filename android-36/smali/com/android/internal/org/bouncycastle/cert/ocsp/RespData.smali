.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/RespData;
.super Ljava/lang/Object;
.source "RespData.java"


# instance fields
.field private blacklist data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;)V
    .registers 2
    .param p1, "data"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespData;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist getProducedAt()Ljava/util/Date;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespData;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getProducedAt()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResponderId()Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;
    .registers 3

    .line 40
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespData;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponderID()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespID;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;)V

    return-object v0
.end method

.method public blacklist getResponseExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespData;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResponses()[Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;
    .registers 6

    .line 50
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespData;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getResponses()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 51
    .local v0, "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;

    .line 53
    .local v1, "rs":[Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-eq v2, v3, :cond_22

    .line 55
    new-instance v3, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/cert/ocsp/SingleResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/SingleResponse;)V

    aput-object v3, v1, v2

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 58
    .end local v2    # "i":I
    :cond_22
    return-object v1
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/RespData;->data:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
