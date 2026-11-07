.class Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;
.super Ljava/lang/Object;
.source "OCSPUtils.java"


# static fields
.field static final blacklist EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

.field static blacklist EMPTY_LIST:Ljava/util/List;

.field static blacklist EMPTY_SET:Ljava/util/Set;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    sput-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_SET:Ljava/util/Set;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist extractDate(Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;
    .registers 5
    .param p0, "time"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 29
    :catch_5
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception processing GeneralizedTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist getCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;
    .registers 3
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 37
    if-nez p0, :cond_5

    .line 39
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 42
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getCriticalExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;
    .registers 2
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 58
    if-nez p0, :cond_5

    .line 60
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 63
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getNonCriticalExtensionOIDs(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;
    .registers 3
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 47
    if-nez p0, :cond_5

    .line 49
    sget-object v0, Lcom/android/internal/org/bouncycastle/cert/ocsp/OCSPUtils;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    .line 53
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getNonCriticalExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
