.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "OCSPResponse.java"


# instance fields
.field blacklist responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

.field blacklist responseStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 40
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    .line 43
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 45
    nop

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 45
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    .line 48
    :cond_23
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;)V
    .registers 3
    .param p1, "responseStatus"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;
    .param p2, "responseBytes"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    .line 33
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    .line 35
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    .line 36
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 54
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    if-eqz v0, :cond_8

    .line 62
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    return-object v0

    .line 64
    :cond_8
    if-eqz p0, :cond_14

    .line 66
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 69
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getResponseBytes()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    return-object v0
.end method

.method public blacklist getResponseStatus()Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 92
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 94
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 96
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    if-eqz v1, :cond_1b

    .line 98
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    :cond_1b
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
