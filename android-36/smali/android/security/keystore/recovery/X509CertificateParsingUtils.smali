.class public Landroid/security/keystore/recovery/X509CertificateParsingUtils;
.super Ljava/lang/Object;
.source "X509CertificateParsingUtils.java"


# static fields
.field private static final greylist-max-o CERT_FORMAT:Ljava/lang/String; = "X.509"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o decodeBase64(Ljava/lang/String;)[B
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o decodeBase64Cert(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-static {p0}, Landroid/security/keystore/recovery/X509CertificateParsingUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/recovery/X509CertificateParsingUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 40
    :catch_9
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o decodeCert(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 75
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_e

    .line 79
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 80
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1

    .line 76
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_e
    move-exception v0

    .line 78
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o decodeCert([B)Ljava/security/cert/X509Certificate;
    .registers 2
    .param p0, "certBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/security/keystore/recovery/X509CertificateParsingUtils;->decodeCert(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
