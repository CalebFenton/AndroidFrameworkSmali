.class Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "TrustManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/TrustManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtendedKeyUsagePKIXCertPathChecker"
.end annotation


# static fields
.field private static final EKU_OID:Ljava/lang/String; = "2.5.29.37"

.field private static final EKU_anyExtendedKeyUsage:Ljava/lang/String; = "2.5.29.37.0"

.field private static final EKU_clientAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final EKU_msSGC:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final EKU_nsSGC:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final EKU_serverAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final SUPPORTED_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clientAuth:Z

.field private final leaf:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 446
    new-instance v0, Ljava/util/HashSet;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const-string/jumbo v2, "2.5.29.37"

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@15
    move-result-object v0

    #@16
    .line 445
    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    #@18
    .line 435
    return-void
.end method

.method private constructor <init>(ZLjava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "clientAuth"    # Z
    .param p2, "leaf"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 451
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    #@3
    .line 452
    iput-boolean p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    #@5
    .line 453
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    #@7
    .line 451
    return-void
.end method

.method synthetic constructor <init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;)V
    .locals 0
    .param p1, "clientAuth"    # Z
    .param p2, "leaf"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;)V

    #@3
    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 7
    .param p1, "c"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 474
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    #@2
    if-eq p1, v5, :cond_0

    #@4
    .line 475
    return-void

    #@5
    .line 479
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    #@7
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v3

    #@b
    .line 485
    .local v3, "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    #@d
    .line 486
    return-void

    #@e
    .line 480
    .end local v3    # "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    #@f
    .line 482
    .local v0, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    #@11
    invoke-direct {v5, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@14
    throw v5

    #@15
    .line 489
    .end local v0    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v3    # "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    #@16
    .line 490
    .local v4, "goodExtendedKeyUsage":Z
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v2

    #@1a
    .local v2, "ekuOid$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_3

    #@20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljava/lang/String;

    #@26
    .line 492
    .local v1, "ekuOid":Ljava/lang/String;
    const-string/jumbo v5, "2.5.29.37.0"

    #@29
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_4

    #@2f
    .line 493
    const/4 v4, 0x1

    #@30
    .line 520
    .end local v1    # "ekuOid":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v4, :cond_8

    #@32
    .line 522
    const-string/jumbo v5, "2.5.29.37"

    #@35
    invoke-interface {p2, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@38
    .line 472
    return-void

    #@39
    .line 498
    .restart local v1    # "ekuOid":Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    #@3b
    if-eqz v5, :cond_5

    #@3d
    .line 499
    const-string/jumbo v5, "1.3.6.1.5.5.7.3.2"

    #@40
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_2

    #@46
    .line 500
    const/4 v4, 0x1

    #@47
    .line 501
    goto :goto_0

    #@48
    .line 507
    :cond_5
    const-string/jumbo v5, "1.3.6.1.5.5.7.3.1"

    #@4b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v5

    #@4f
    if-eqz v5, :cond_6

    #@51
    .line 508
    const/4 v4, 0x1

    #@52
    .line 509
    goto :goto_0

    #@53
    .line 511
    :cond_6
    const-string/jumbo v5, "2.16.840.1.113730.4.1"

    #@56
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_7

    #@5c
    .line 512
    const/4 v4, 0x1

    #@5d
    .line 513
    goto :goto_0

    #@5e
    .line 515
    :cond_7
    const-string/jumbo v5, "1.3.6.1.4.1.311.10.3.3"

    #@61
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v5

    #@65
    if-eqz v5, :cond_2

    #@67
    .line 516
    const/4 v4, 0x1

    #@68
    .line 517
    goto :goto_0

    #@69
    .line 524
    .end local v1    # "ekuOid":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    #@6b
    const-string/jumbo v6, "End-entity certificate does not have a valid extendedKeyUsage."

    #@6e
    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@71
    throw v5
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 467
    sget-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public init(Z)V
    .locals 0
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 457
    return-void
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    #@0
    .prologue
    .line 462
    const/4 v0, 0x1

    #@1
    return v0
.end method
