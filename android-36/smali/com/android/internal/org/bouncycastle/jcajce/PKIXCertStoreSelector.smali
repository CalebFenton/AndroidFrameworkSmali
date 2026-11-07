.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
.super Ljava/lang/Object;
.source "PKIXCertStoreSelector.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;,
        Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/Certificate;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/org/bouncycastle/util/Selector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist baseSelector:Ljava/security/cert/CertSelector;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/security/cert/CertSelector;)V
    .registers 2
    .param p1, "baseSelector"    # Ljava/security/cert/CertSelector;

    .line 55
    .local p0, "this":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/security/cert/CertSelector;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    return-void
.end method

.method public static blacklist getCertificates(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .registers 3
    .param p0, "selector"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .param p1, "certStore"    # Ljava/security/cert/CertStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 81
    .local p0, "this":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    return-object v0
.end method

.method public blacklist getCertificate()Ljava/security/cert/Certificate;
    .registers 2

    .line 66
    .local p0, "this":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    instance-of v0, v0, Ljava/security/cert/X509CertSelector;

    if-eqz v0, :cond_f

    .line 68
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    check-cast v0, Ljava/security/cert/X509CertSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 71
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist match(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    .local p0, "this":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    check-cast p1, Ljava/security/cert/Certificate;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result p1

    return p1
.end method

.method public blacklist match(Ljava/security/cert/Certificate;)Z
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 76
    .local p0, "this":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;, "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    invoke-interface {v0, p1}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method
