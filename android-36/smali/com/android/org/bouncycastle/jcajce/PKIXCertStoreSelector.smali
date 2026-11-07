.class public Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
.super Ljava/lang/Object;
.source "PKIXCertStoreSelector.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final blacklist baseSelector:Ljava/security/cert/CertSelector;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbaseSelector(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/security/cert/CertSelector;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/security/cert/CertSelector;Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    return-void
.end method

.method public static blacklist getCertificates(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .registers 3

    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    return-object v0
.end method

.method public blacklist getCertificate()Ljava/security/cert/Certificate;
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    instance-of v0, p0, Ljava/security/cert/X509CertSelector;

    if-eqz v0, :cond_d

    .line 68
    check-cast p0, Ljava/security/cert/X509CertSelector;

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist match(Ljava/security/cert/Certificate;)Z
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    invoke-interface {p0, p1}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method
