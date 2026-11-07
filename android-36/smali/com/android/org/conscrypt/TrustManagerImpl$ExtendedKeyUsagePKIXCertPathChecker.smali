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
.field private static final greylist-max-o EKU_OID:Ljava/lang/String; = "2.5.29.37"

.field private static final greylist-max-o EKU_anyExtendedKeyUsage:Ljava/lang/String; = "2.5.29.37.0"

.field private static final greylist-max-o EKU_clientAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final greylist-max-o EKU_msSGC:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final greylist-max-o EKU_nsSGC:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final greylist-max-o EKU_serverAuth:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final greylist-max-o SUPPORTED_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o clientAuth:Z

.field private final greylist-max-o leaf:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 824
    new-instance v0, Ljava/util/HashSet;

    .line 825
    const-string v1, "2.5.29.37"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    .line 824
    return-void
.end method

.method private constructor greylist-max-o <init>(ZLjava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "clientAuth"    # Z
    .param p2, "leaf"    # Ljava/security/cert/X509Certificate;

    .line 830
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 831
    iput-boolean p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    .line 832
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    .line 833
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 8
    .param p1, "c"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 853
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    if-eq p1, v0, :cond_5

    .line 854
    return-void

    .line 858
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->leaf:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_b} :catch_67

    .line 862
    .local v0, "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 864
    if-nez v0, :cond_f

    .line 865
    return-void

    .line 868
    :cond_f
    const/4 v1, 0x0

    .line 869
    .local v1, "goodExtendedKeyUsage":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 871
    .local v3, "ekuOid":Ljava/lang/String;
    const-string v4, "2.5.29.37.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 872
    const/4 v1, 0x1

    .line 873
    goto :goto_57

    .line 877
    :cond_2a
    iget-boolean v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->clientAuth:Z

    if-eqz v4, :cond_38

    .line 878
    const-string v4, "1.3.6.1.5.5.7.3.2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 879
    const/4 v1, 0x1

    .line 880
    goto :goto_57

    .line 886
    :cond_38
    const-string v4, "1.3.6.1.5.5.7.3.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 887
    const/4 v1, 0x1

    .line 888
    goto :goto_57

    .line 890
    :cond_42
    const-string v4, "2.16.840.1.113730.4.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 891
    const/4 v1, 0x1

    .line 892
    goto :goto_57

    .line 894
    :cond_4c
    const-string v4, "1.3.6.1.4.1.311.10.3.3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 895
    const/4 v1, 0x1

    .line 896
    goto :goto_57

    .line 898
    .end local v3    # "ekuOid":Ljava/lang/String;
    :cond_56
    goto :goto_14

    .line 899
    :cond_57
    :goto_57
    if-eqz v1, :cond_5f

    .line 901
    const-string v2, "2.5.29.37"

    invoke-interface {p2, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 906
    return-void

    .line 903
    :cond_5f
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "End-entity certificate does not have a valid extendedKeyUsage."

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 859
    .end local v0    # "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "goodExtendedKeyUsage":Z
    :catch_67
    move-exception v0

    .line 861
    .local v0, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getSupportedExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 845
    sget-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;->SUPPORTED_EXTENSIONS:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api init(Z)V
    .registers 2
    .param p1, "forward"    # Z

    .line 836
    return-void
.end method

.method public whitelist test-api isForwardCheckingSupported()Z
    .registers 2

    .line 840
    const/4 v0, 0x1

    return v0
.end method
