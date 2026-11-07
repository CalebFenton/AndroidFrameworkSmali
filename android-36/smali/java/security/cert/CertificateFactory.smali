.class public Ljava/security/cert/CertificateFactory;
.super Ljava/lang/Object;
.source "CertificateFactory.java"


# instance fields
.field private greylist-max-o certFacSpi:Ljava/security/cert/CertificateFactorySpi;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o type:Ljava/lang/String;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .param p1, "certFacSpi"    # Ljava/security/cert/CertificateFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    .line 172
    iput-object p2, p0, Ljava/security/cert/CertificateFactory;->provider:Ljava/security/Provider;

    .line 173
    iput-object p3, p0, Ljava/security/cert/CertificateFactory;->type:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 206
    :try_start_0
    const-string v0, "CertificateFactory"

    const-class v1, Ljava/security/cert/CertificateFactorySpi;

    invoke-static {v0, v1, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 208
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertificateFactory;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertificateFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/cert/CertificateFactory;-><init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 210
    .end local v0    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_14
    move-exception v0

    .line 211
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 254
    const-string v0, "CertificateFactory"

    :try_start_2
    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-class v1, Ljava/security/cert/CertificateFactorySpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 257
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertificateFactory;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertificateFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/cert/CertificateFactory;-><init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_16} :catch_17

    return-object v1

    .line 259
    .end local v0    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_17
    move-exception v0

    .line 260
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 297
    const-string v0, "CertificateFactory"

    :try_start_2
    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-class v1, Ljava/security/cert/CertificateFactorySpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 300
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertificateFactory;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertificateFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/cert/CertificateFactory;-><init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_16} :catch_17

    return-object v1

    .line 302
    .end local v0    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_17
    move-exception v0

    .line 303
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final whitelist test-api generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api generateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 449
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getCertPathEncodings()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->certFacSpi:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0}, Ljava/security/cert/CertificateFactorySpi;->engineGetCertPathEncodings()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 313
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 324
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->type:Ljava/lang/String;

    return-object v0
.end method
