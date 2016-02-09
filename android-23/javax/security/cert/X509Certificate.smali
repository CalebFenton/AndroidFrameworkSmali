.class public abstract Ljavax/security/cert/X509Certificate;
.super Ljavax/security/cert/Certificate;
.source "X509Certificate.java"


# static fields
.field private static constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 51
    :try_start_0
    const-string/jumbo v3, "cert.provider.x509v1"

    #@3
    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 52
    .local v1, "classname":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    .line 53
    .local v0, "cl":Ljava/lang/Class;
    const/4 v3, 0x1

    #@c
    new-array v3, v3, [Ljava/lang/Class;

    #@e
    const-class v4, Ljava/io/InputStream;

    #@10
    const/4 v5, 0x0

    #@11
    aput-object v4, v3, v5

    #@13
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@16
    move-result-object v3

    #@17
    sput-object v3, Ljavax/security/cert/X509Certificate;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 46
    .end local v0    # "cl":Ljava/lang/Class;
    :goto_0
    return-void

    #@1a
    .line 54
    :catch_0
    move-exception v2

    #@1b
    .local v2, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/security/cert/Certificate;-><init>()V

    #@3
    return-void
.end method

.method public static final getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;
    .locals 7
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    if-nez p0, :cond_0

    #@2
    .line 77
    new-instance v4, Ljavax/security/cert/CertificateException;

    #@4
    const-string/jumbo v5, "inStream == null"

    #@7
    invoke-direct {v4, v5}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 79
    :cond_0
    sget-object v4, Ljavax/security/cert/X509Certificate;->constructor:Ljava/lang/reflect/Constructor;

    #@d
    if-eqz v4, :cond_1

    #@f
    .line 82
    :try_start_0
    sget-object v4, Ljavax/security/cert/X509Certificate;->constructor:Ljava/lang/reflect/Constructor;

    #@11
    const/4 v5, 0x1

    #@12
    new-array v5, v5, [Ljava/lang/Object;

    #@14
    const/4 v6, 0x0

    #@15
    aput-object p0, v5, v6

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Ljavax/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 81
    return-object v4

    #@1e
    .line 83
    :catch_0
    move-exception v2

    #@1f
    .line 84
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v4, Ljavax/security/cert/CertificateException;

    #@21
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-direct {v4, v5}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v4

    #@29
    .line 90
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "X.509"

    #@2c
    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@2f
    move-result-object v1

    #@30
    .line 92
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@33
    move-result-object v0

    #@34
    .line 91
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    #@36
    .line 97
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljavax/security/cert/X509Certificate$1;

    #@38
    invoke-direct {v4, v0}, Ljavax/security/cert/X509Certificate$1;-><init>(Ljava/security/cert/X509Certificate;)V

    #@3b
    return-object v4

    #@3c
    .line 93
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_1
    move-exception v3

    #@3d
    .line 94
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljavax/security/cert/CertificateException;

    #@3f
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-direct {v4, v5}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@46
    throw v4
.end method

.method public static final getInstance([B)Ljavax/security/cert/X509Certificate;
    .locals 3
    .param p0, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    if-nez p0, :cond_0

    #@2
    .line 210
    new-instance v1, Ljavax/security/cert/CertificateException;

    #@4
    const-string/jumbo v2, "certData == null"

    #@7
    invoke-direct {v1, v2}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 212
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@d
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@10
    .line 213
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Ljavax/security/cert/X509Certificate;->getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method


# virtual methods
.method public abstract checkValidity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract checkValidity(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract getIssuerDN()Ljava/security/Principal;
.end method

.method public abstract getNotAfter()Ljava/util/Date;
.end method

.method public abstract getNotBefore()Ljava/util/Date;
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract getSigAlgName()Ljava/lang/String;
.end method

.method public abstract getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract getSigAlgParams()[B
.end method

.method public abstract getSubjectDN()Ljava/security/Principal;
.end method

.method public abstract getVersion()I
.end method
