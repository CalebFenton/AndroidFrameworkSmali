.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPRespBuilder;
.super Ljava/lang/Object;
.source "OCSPRespBuilder.java"


# static fields
.field public static final blacklist INTERNAL_ERROR:I = 0x2

.field public static final blacklist MALFORMED_REQUEST:I = 0x1

.field public static final blacklist SIG_REQUIRED:I = 0x5

.field public static final blacklist SUCCESSFUL:I = 0x0

.field public static final blacklist TRY_LATER:I = 0x3

.field public static final blacklist UNAUTHORIZED:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build(ILjava/lang/Object;)Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;
    .registers 9
    .param p1, "status"    # I
    .param p2, "response"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 33
    if-nez p2, :cond_13

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-direct {v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;)V

    return-object v0

    .line 38
    :cond_13
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    if-eqz v0, :cond_44

    .line 40
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 45
    .local v0, "r":Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;
    :try_start_1a
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_3b

    .line 50
    .local v1, "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 52
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 55
    .local v2, "rb":Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;
    new-instance v3, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-direct {v5, p1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    invoke-direct {v4, v5, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;)V

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;)V

    return-object v3

    .line 47
    .end local v1    # "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "rb":Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;
    :catch_3b
    move-exception v1

    .line 49
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    const-string v3, "can\'t encode object."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 59
    .end local v0    # "r":Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_44
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    const-string/jumbo v1, "unknown response object"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
