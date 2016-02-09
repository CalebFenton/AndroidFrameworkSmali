.class public abstract Ljava/security/cert/X509Certificate;
.super Ljava/security/cert/Certificate;
.source "X509Certificate.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# static fields
.field private static final serialVersionUID:J = -0x22924357c8106208L


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 74
    const-string/jumbo v0, "X.509"

    #@3
    invoke-direct {p0, v0}, Ljava/security/cert/Certificate;-><init>(Ljava/lang/String;)V

    #@6
    .line 73
    return-void
.end method


# virtual methods
.method public abstract checkValidity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract checkValidity(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract getBasicConstraints()I
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getIssuerDN()Ljava/security/Principal;
.end method

.method public abstract getIssuerUniqueID()[Z
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    #@0
    .prologue
    .line 186
    :try_start_0
    const-string/jumbo v3, "X.509"

    #@3
    .line 185
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v2

    #@7
    .line 189
    .local v2, "factory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@c
    move-result-object v4

    #@d
    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@10
    .line 188
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@16
    .line 191
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 193
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "factory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    #@1c
    .line 194
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@1e
    const-string/jumbo v4, "Failed to get X500Principal issuer"

    #@21
    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v3
.end method

.method public abstract getKeyUsage()[Z
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

.method public abstract getSignature()[B
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getSubjectDN()Ljava/security/Principal;
.end method

.method public abstract getSubjectUniqueID()[Z
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 5

    #@0
    .prologue
    .line 242
    :try_start_0
    const-string/jumbo v3, "X.509"

    #@3
    .line 241
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@6
    move-result-object v2

    #@7
    .line 245
    .local v2, "factory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@c
    move-result-object v4

    #@d
    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@10
    .line 244
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@16
    .line 247
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 248
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "factory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    #@1c
    .line 249
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@1e
    const-string/jumbo v4, "Failed to get X500Principal subject"

    #@21
    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw v3
.end method

.method public abstract getTBSCertificate()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract getVersion()I
.end method
