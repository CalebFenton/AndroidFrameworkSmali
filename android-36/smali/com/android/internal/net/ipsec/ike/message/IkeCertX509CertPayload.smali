.class public final Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;
.source "IkeCertX509CertPayload.java"


# instance fields
.field public final blacklist certificate:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor blacklist <init>(Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .line 45
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;-><init>(I)V

    .line 46
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    .line 47
    return-void
.end method

.method protected constructor blacklist <init>(Z[B)V
    .registers 6
    .param p1, "critical"    # Z
    .param p2, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;-><init>(ZI)V

    .line 53
    :try_start_4
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 54
    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 56
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    .line 58
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_2f

    .line 62
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    array-length v1, v1

    array-length v2, p2

    if-lt v1, v2, :cond_27

    .line 67
    .end local v0    # "factory":Ljava/security/cert/CertificateFactory;
    nop

    .line 68
    return-void

    .line 63
    .restart local v0    # "factory":Ljava/security/cert/CertificateFactory;
    :cond_27
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v2, "Unexpected trailing bytes."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;
    .end local p1    # "critical":Z
    .end local p2    # "certData":[B
    throw v1

    .line 59
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;
    .restart local p1    # "critical":Z
    .restart local p2    # "certData":[B
    :cond_2f
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v2, "No certificate parsed from received data."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;
    .end local p1    # "critical":Z
    .end local p2    # "certData":[B
    throw v1
    :try_end_37
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_37} :catch_37

    .line 65
    .end local v0    # "factory":Ljava/security/cert/CertificateFactory;
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;
    .restart local p1    # "critical":Z
    .restart local p2    # "certData":[B
    :catch_37
    move-exception v0

    .line 66
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    invoke-direct {v1, v0}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 80
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certEncodingType:I

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 82
    :try_start_d
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_16
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_d .. :try_end_16} :catch_17

    .line 85
    goto :goto_18

    .line 83
    :catch_17
    move-exception v0

    .line 86
    :goto_18
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .registers 3

    .line 96
    const/4 v0, 0x5

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeCertX509CertPayload;->certificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    array-length v1, v1
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_8} :catch_a

    add-int/2addr v1, v0

    return v1

    .line 97
    :catch_a
    move-exception v1

    .line 98
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 109
    const-string v0, "Cert(X509)"

    return-object v0
.end method
