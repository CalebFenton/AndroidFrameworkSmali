.class public Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;
.super Ljava/lang/Object;
.source "OCSPResp.java"


# static fields
.field public static final blacklist INTERNAL_ERROR:I = 0x2

.field public static final blacklist MALFORMED_REQUEST:I = 0x1

.field public static final blacklist SIG_REQUIRED:I = 0x5

.field public static final blacklist SUCCESSFUL:I = 0x0

.field public static final blacklist TRY_LATER:I = 0x3

.field public static final blacklist UNAUTHORIZED:I = 0x6


# instance fields
.field private blacklist resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)V
    .registers 6
    .param p1, "aIn"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const-string v0, "malformed response: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    :try_start_5
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_f} :catch_55
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_f} :catch_39
    .catch Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception; {:try_start_5 .. :try_end_f} :catch_1d

    .line 71
    nop

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    if-eqz v0, :cond_15

    .line 77
    return-void

    .line 75
    :cond_15
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    const-string v1, "malformed response: no response data found"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :catch_1d
    move-exception v1

    .line 70
    .local v1, "e":Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 64
    .end local v1    # "e":Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;
    :catch_39
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 60
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_55
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/CertIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;)V
    .registers 2
    .param p1, "resp"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "resp"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "resp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;-><init>(Ljava/io/InputStream;)V

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 121
    if-ne p1, p0, :cond_4

    .line 123
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;

    if-nez v0, :cond_a

    .line 128
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;

    .line 133
    .local v0, "r":Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResponseObject()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseBytes()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v0

    .line 89
    .local v0, "rb":Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;
    if-nez v0, :cond_a

    .line 91
    const/4 v1, 0x0

    return-object v1

    .line 94
    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->getResponseType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 98
    :try_start_16
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->getResponse()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 99
    .local v1, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cert/ocsp/BasicOCSPResp;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2b} :catch_2c

    return-object v2

    .line 101
    .end local v1    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :catch_2c
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem decoding object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_47
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->getResponse()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getStatus()I
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->getResponseStatus()Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponseStatus;->getIntValue()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPResp;->resp:Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPResponse;

    return-object v0
.end method
