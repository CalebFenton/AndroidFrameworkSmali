.class public Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;,
        Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;,
        Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;,
        Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$2;
    }
.end annotation


# static fields
.field private static final PKCS7_MARKER:[B

.field private static final PUSHBACK_SIZE:I = 0x40


# instance fields
.field private certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[B
    .locals 1

    #@0
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    #@9
    .line 36
    return-void

    #@a
    .line 37
    :array_0
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x37t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    #@3
    .line 216
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;-><init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;)V

    #@8
    .line 215
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    #@a
    .line 243
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$2;

    #@c
    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$2;-><init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;)V

    #@f
    .line 242
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    #@11
    .line 36
    return-void
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/security/cert/CRL;
    :try_end_0
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 292
    :catch_0
    move-exception v0

    #@a
    .line 293
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CRLException;

    #@c
    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
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
    .line 299
    if-nez p1, :cond_0

    #@2
    .line 300
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 304
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    #@9
    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 305
    :catch_0
    move-exception v0

    #@f
    .line 306
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CRLException;

    #@11
    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    #@14
    throw v1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 323
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 6
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
    .line 329
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 330
    .local v1, "filtered":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@d
    move-result v3

    #@e
    if-ge v2, v3, :cond_1

    #@10
    .line 331
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/security/cert/Certificate;

    #@16
    .line 333
    .local v0, "c":Ljava/security/cert/Certificate;
    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    #@18
    if-nez v3, :cond_0

    #@1a
    .line 334
    new-instance v3, Ljava/security/cert/CertificateException;

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "Certificate not X.509 type at index "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 337
    :cond_0
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@36
    .end local v0    # "c":Ljava/security/cert/Certificate;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 330
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 340
    :cond_1
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    #@3e
    invoke-direct {v3, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    #@41
    return-object v3
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 273
    :catch_0
    move-exception v0

    #@a
    .line 274
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CertificateException;

    #@c
    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
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
    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 283
    :catch_0
    move-exception v0

    #@8
    .line 284
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CertificateException;

    #@a
    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
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
    .line 312
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
