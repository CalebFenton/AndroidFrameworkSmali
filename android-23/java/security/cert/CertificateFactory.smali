.class public Ljava/security/cert/CertificateFactory;
.super Ljava/lang/Object;
.source "CertificateFactory.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final SERVICE:Ljava/lang/String; = "CertificateFactory"


# instance fields
.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/cert/CertificateFactorySpi;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 44
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "CertificateFactory"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/security/cert/CertificateFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "certFacSpi"    # Ljava/security/cert/CertificateFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p2, p0, Ljava/security/cert/CertificateFactory;->provider:Ljava/security/Provider;

    #@5
    .line 68
    iput-object p3, p0, Ljava/security/cert/CertificateFactory;->type:Ljava/lang/String;

    #@7
    .line 69
    iput-object p1, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    #@9
    .line 66
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    if-nez p0, :cond_0

    #@2
    .line 87
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "type == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 90
    :cond_0
    :try_start_0
    sget-object v2, Ljava/security/cert/CertificateFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v2, p0, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v1

    #@12
    .line 91
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v3, Ljava/security/cert/CertificateFactory;

    #@14
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v2, Ljava/security/cert/CertificateFactorySpi;

    #@18
    iget-object v4, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v3, v2, v4, p0}, Ljava/security/cert/CertificateFactory;-><init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    return-object v3

    #@1e
    .line 92
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_0
    move-exception v0

    #@1f
    .line 93
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/cert/CertificateException;

    #@21
    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 120
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "provider == null || provider.isEmpty()"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 122
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@14
    move-result-object v0

    #@15
    .line 123
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@17
    .line 124
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@19
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 126
    :cond_2
    invoke-static {p0, v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    if-nez p1, :cond_0

    #@2
    .line 151
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "provider == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 153
    :cond_0
    if-nez p0, :cond_1

    #@d
    .line 154
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v3, "type == null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 157
    :cond_1
    :try_start_0
    sget-object v2, Ljava/security/cert/CertificateFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@18
    const/4 v3, 0x0

    #@19
    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    .line 158
    .local v1, "spi":Ljava/lang/Object;
    new-instance v2, Ljava/security/cert/CertificateFactory;

    #@1f
    check-cast v1, Ljava/security/cert/CertificateFactorySpi;

    #@21
    .end local v1    # "spi":Ljava/lang/Object;
    invoke-direct {v2, v1, p1, p0}, Ljava/security/cert/CertificateFactory;-><init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    return-object v2

    #@25
    .line 159
    :catch_0
    move-exception v0

    #@26
    .line 160
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/cert/CertificateException;

    #@28
    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v2
.end method


# virtual methods
.method public final generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final generateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    invoke-virtual {p0}, Ljava/security/cert/CertificateFactory;->getCertPathEncodings()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 222
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 223
    new-instance v1, Ljava/security/cert/CertificateException;

    #@c
    const-string/jumbo v2, "There are no CertPath encodings"

    #@f
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 225
    :cond_0
    iget-object v2, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    #@15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/lang/String;

    #@1b
    invoke-virtual {v2, p1, v1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public final generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
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

    #@0
    .prologue
    .line 258
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getCertPathEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/CertificateFactorySpi;->engineGetCertPathEncodings()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method
