.class Lsun/security/provider/certpath/ForwardBuilder;
.super Lsun/security/provider/certpath/Builder;
.source "ForwardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

.field private caTargetSelector:Ljava/security/cert/X509CertSelector;

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private eeSelector:Ljava/security/cert/X509CertSelector;

.field private searchAllCertStores:Z

.field trustAnchor:Ljava/security/cert/TrustAnchor;

.field private final trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final trustedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final trustedSubjectDNs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .locals 1

    #@0
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@9
    .line 62
    return-void
.end method

.method constructor <init>(Lsun/security/provider/certpath/PKIX$BuilderParams;Z)V
    .locals 5
    .param p1, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;
    .param p2, "searchAllCertStores"    # Z

    #@0
    .prologue
    .line 81
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/Builder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    #@3
    .line 73
    const/4 v3, 0x1

    #@4
    iput-boolean v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    #@6
    .line 84
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    #@9
    move-result-object v3

    #@a
    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    #@c
    .line 85
    new-instance v3, Ljava/util/HashSet;

    #@e
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    #@10
    invoke-interface {v4}, Ljava/util/Set;->size()I

    #@13
    move-result v4

    #@14
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    #@17
    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    #@19
    .line 86
    new-instance v3, Ljava/util/HashSet;

    #@1b
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    #@1d
    invoke-interface {v4}, Ljava/util/Set;->size()I

    #@20
    move-result v4

    #@21
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    #@24
    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    #@26
    .line 87
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    #@28
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v1

    #@2c
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Ljava/security/cert/TrustAnchor;

    #@38
    .line 88
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@3b
    move-result-object v2

    #@3c
    .line 89
    .local v2, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    #@3e
    .line 90
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    #@40
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@43
    .line 91
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    #@45
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@48
    move-result-object v4

    #@49
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4c
    goto :goto_0

    #@4d
    .line 93
    :cond_0
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    #@4f
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    #@52
    move-result-object v4

    #@53
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@56
    goto :goto_0

    #@57
    .line 96
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_1
    new-instance v3, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;

    #@59
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    #@5b
    invoke-direct {v3, v4}, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;-><init>(Ljava/util/Set;)V

    #@5e
    iput-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->comparator:Ljava/util/Comparator;

    #@60
    .line 97
    iput-boolean p2, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    #@62
    .line 80
    return-void
.end method

.method private getCerts(Lsun/security/x509/AuthorityInfoAccessExtension;Ljava/util/Collection;)Z
    .locals 8
    .param p1, "aiaExt"    # Lsun/security/x509/AuthorityInfoAccessExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/AuthorityInfoAccessExtension;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v7, 0x0

    #@1
    .line 359
    sget-boolean v6, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    #@3
    if-nez v6, :cond_0

    #@5
    .line 360
    return v7

    #@6
    .line 362
    :cond_0
    invoke-virtual {p1}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    #@9
    move-result-object v2

    #@a
    .line 363
    .local v2, "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_2

    #@12
    .line 364
    :cond_1
    return v7

    #@13
    .line 367
    :cond_2
    const/4 v3, 0x0

    #@14
    .line 368
    .local v3, "add":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "ad$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_4

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lsun/security/x509/AccessDescription;

    #@24
    .line 369
    .local v0, "ad":Lsun/security/x509/AccessDescription;
    invoke-static {v0}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;

    #@27
    move-result-object v4

    #@28
    .line 370
    .local v4, "cs":Ljava/security/cert/CertStore;
    if-eqz v4, :cond_3

    #@2a
    .line 373
    :try_start_0
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@2c
    invoke-virtual {v4, v6}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    #@2f
    move-result-object v6

    #@30
    .line 372
    invoke-interface {p2, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_3

    #@36
    .line 374
    const/4 v3, 0x1

    #@37
    .line 375
    iget-boolean v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    if-nez v6, :cond_3

    #@3b
    .line 376
    const/4 v6, 0x1

    #@3c
    return v6

    #@3d
    .line 379
    :catch_0
    move-exception v5

    #@3e
    .line 380
    .local v5, "cse":Ljava/security/cert/CertStoreException;
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@40
    if-eqz v6, :cond_3

    #@42
    .line 381
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@44
    const-string/jumbo v7, "exception getting certs from CertStore:"

    #@47
    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@4a
    .line 382
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    #@4d
    goto :goto_0

    #@4e
    .line 387
    .end local v0    # "ad":Lsun/security/x509/AccessDescription;
    .end local v4    # "cs":Ljava/security/cert/CertStore;
    .end local v5    # "cse":Ljava/security/cert/CertStoreException;
    :cond_4
    return v3
.end method

.method private getMatchingCACerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V
    .locals 11
    .param p1, "currentState"    # Lsun/security/provider/certpath/ForwardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ForwardState;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "caCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v10, -0x1

    #@1
    .line 191
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@3
    if-eqz v7, :cond_0

    #@5
    .line 192
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@7
    const-string/jumbo v8, "ForwardBuilder.getMatchingCACerts()..."

    #@a
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@d
    .line 194
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    #@10
    move-result v2

    #@11
    .line 200
    .local v2, "initialSize":I
    const/4 v4, 0x0

    #@12
    .line 202
    .local v4, "sel":Ljava/security/cert/X509CertSelector;
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_6

    #@18
    .line 203
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    #@1a
    invoke-virtual {v7}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    #@1d
    move-result v7

    #@1e
    const/4 v8, -0x2

    #@1f
    if-ne v7, v8, :cond_1

    #@21
    .line 205
    return-void

    #@22
    .line 211
    :cond_1
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@24
    if-eqz v7, :cond_2

    #@26
    .line 212
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@28
    const-string/jumbo v8, "ForwardBuilder.getMatchingCACerts(): ca is target"

    #@2b
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2e
    .line 215
    :cond_2
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    #@30
    if-nez v7, :cond_3

    #@32
    .line 217
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    #@34
    invoke-virtual {v7}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    #@37
    move-result-object v7

    #@38
    check-cast v7, Ljava/security/cert/X509CertSelector;

    #@3a
    .line 216
    iput-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    #@3c
    .line 229
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@3e
    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    #@41
    move-result v7

    #@42
    if-eqz v7, :cond_3

    #@44
    .line 230
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    #@46
    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    #@49
    move-result-object v8

    #@4a
    invoke-virtual {v7, v8}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    #@4d
    .line 233
    :cond_3
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    #@4f
    .line 289
    .local v4, "sel":Ljava/security/cert/X509CertSelector;
    :goto_0
    invoke-virtual {v4, v10}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    #@52
    .line 291
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    #@54
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v6

    #@58
    .local v6, "trustedCert$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v7

    #@5c
    if-eqz v7, :cond_8

    #@5e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v5

    #@62
    check-cast v5, Ljava/security/cert/X509Certificate;

    #@64
    .line 292
    .local v5, "trustedCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4, v5}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@67
    move-result v7

    #@68
    if-eqz v7, :cond_4

    #@6a
    .line 293
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@6c
    if-eqz v7, :cond_5

    #@6e
    .line 294
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@70
    const-string/jumbo v8, "ForwardBuilder.getMatchingCACerts: found matching trust anchor"

    #@73
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@76
    .line 297
    :cond_5
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@79
    move-result v7

    #@7a
    if-eqz v7, :cond_4

    #@7c
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    #@7e
    if-nez v7, :cond_4

    #@80
    .line 298
    return-void

    #@81
    .line 236
    .end local v5    # "trustedCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "trustedCert$iterator":Ljava/util/Iterator;
    .local v4, "sel":Ljava/security/cert/X509CertSelector;
    :cond_6
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@83
    if-nez v7, :cond_7

    #@85
    .line 237
    new-instance v7, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@87
    invoke-direct {v7}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    #@8a
    iput-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@8c
    .line 249
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@8e
    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    #@91
    move-result v7

    #@92
    if-eqz v7, :cond_7

    #@94
    .line 250
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@96
    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    #@99
    move-result-object v8

    #@9a
    invoke-virtual {v7, v8}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    #@9d
    .line 256
    :cond_7
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@9f
    iget-object v8, p1, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    #@a1
    invoke-virtual {v7, v8}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    #@a4
    .line 264
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@a6
    iget-object v8, p1, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    #@a8
    .line 263
    invoke-static {v7, v8}, Lsun/security/provider/certpath/CertPathHelper;->setPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V

    #@ab
    .line 271
    iget-object v7, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    #@ad
    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    #@b0
    move-result-object v1

    #@b1
    .line 272
    .local v1, "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@b3
    invoke-virtual {v7, v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->parseAuthorityKeyIdentifierExtension(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V

    #@b6
    .line 277
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@b8
    iget-object v8, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    #@ba
    invoke-virtual {v8}, Lsun/security/x509/X509CertImpl;->getNotBefore()Ljava/util/Date;

    #@bd
    move-result-object v8

    #@be
    .line 278
    iget-object v9, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    #@c0
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getNotAfter()Ljava/util/Date;

    #@c3
    move-result-object v9

    #@c4
    .line 277
    invoke-virtual {v7, v8, v9}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V

    #@c7
    .line 280
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@c9
    .local v4, "sel":Ljava/security/cert/X509CertSelector;
    goto :goto_0

    #@ca
    .line 307
    .end local v1    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .restart local v6    # "trustedCert$iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@cc
    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@cf
    move-result-object v7

    #@d0
    invoke-virtual {v4, v7}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    #@d3
    .line 313
    iget v7, p1, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    #@d5
    invoke-virtual {v4, v7}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    #@d8
    .line 322
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    #@db
    move-result v7

    #@dc
    if-nez v7, :cond_9

    #@de
    .line 323
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@e0
    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    #@e3
    move-result v7

    #@e4
    if-ne v7, v10, :cond_d

    #@e6
    .line 327
    :cond_9
    :goto_1
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    #@e8
    .line 326
    invoke-virtual {p0, v4, p2, p3, v7}, Lsun/security/provider/certpath/Builder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    #@eb
    move-result v7

    #@ec
    if-eqz v7, :cond_a

    #@ee
    .line 328
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    #@f0
    if-eqz v7, :cond_e

    #@f2
    .line 333
    :cond_a
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    #@f5
    move-result v7

    #@f6
    if-nez v7, :cond_b

    #@f8
    sget-boolean v7, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    #@fa
    if-eqz v7, :cond_b

    #@fc
    .line 336
    iget-object v7, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    #@fe
    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    #@101
    move-result-object v0

    #@102
    .line 337
    .local v0, "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    if-eqz v0, :cond_b

    #@104
    .line 338
    invoke-direct {p0, v0, p3}, Lsun/security/provider/certpath/ForwardBuilder;->getCerts(Lsun/security/x509/AuthorityInfoAccessExtension;Ljava/util/Collection;)Z

    #@107
    .line 342
    .end local v0    # "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    :cond_b
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@109
    if-eqz v7, :cond_c

    #@10b
    .line 343
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    #@10e
    move-result v7

    #@10f
    sub-int v3, v7, v2

    #@111
    .line 344
    .local v3, "numCerts":I
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@113
    new-instance v8, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string/jumbo v9, "ForwardBuilder.getMatchingCACerts: found "

    #@11b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v8

    #@11f
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@122
    move-result-object v8

    #@123
    .line 345
    const-string/jumbo v9, " CA certs"

    #@126
    .line 344
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v8

    #@12a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v8

    #@12e
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@131
    .line 189
    .end local v3    # "numCerts":I
    :cond_c
    return-void

    #@132
    .line 324
    :cond_d
    iget-object v7, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@134
    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    #@137
    move-result v7

    #@138
    iget v8, p1, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    #@13a
    if-le v7, v8, :cond_a

    #@13c
    goto :goto_1

    #@13d
    .line 329
    :cond_e
    return-void
.end method

.method private getMatchingEECerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V
    .locals 2
    .param p1, "currentState"    # Lsun/security/provider/certpath/ForwardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ForwardState;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "eeCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 148
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@6
    const-string/jumbo v1, "ForwardBuilder.getMatchingEECerts()..."

    #@9
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c
    .line 158
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    #@e
    if-nez v0, :cond_2

    #@10
    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    #@12
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/security/cert/X509CertSelector;

    #@18
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    #@1a
    .line 164
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    #@1c
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@1e
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    #@25
    .line 169
    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@27
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_1

    #@2d
    .line 170
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    #@2f
    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    #@36
    .line 175
    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    #@38
    const/4 v1, -0x2

    #@39
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    #@3c
    .line 179
    :cond_2
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    #@3e
    iget-boolean v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    #@40
    invoke-virtual {p0, v0, p2, p3, v1}, Lsun/security/provider/certpath/Builder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    #@43
    .line 145
    return-void
.end method


# virtual methods
.method addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 871
    .local p2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@3
    .line 869
    return-void
.end method

.method getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .param p1, "currentState"    # Lsun/security/provider/certpath/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    sget-object v2, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 115
    sget-object v2, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@6
    const-string/jumbo v3, "ForwardBuilder.getMatchingCerts()..."

    #@9
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c
    :cond_0
    move-object v1, p1

    #@d
    .line 118
    check-cast v1, Lsun/security/provider/certpath/ForwardState;

    #@f
    .line 125
    .local v1, "currState":Lsun/security/provider/certpath/ForwardState;
    new-instance v0, Ljava/util/TreeSet;

    #@11
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->comparator:Ljava/util/Comparator;

    #@13
    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@16
    .line 130
    .local v0, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 131
    invoke-direct {p0, v1, p2, v0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingEECerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V

    #@1f
    .line 133
    :cond_1
    invoke-direct {p0, v1, p2, v0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingCACerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V

    #@22
    .line 135
    return-object v0
.end method

.method isPathCompleted(Ljava/security/cert/X509Certificate;)Z
    .locals 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 798
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    #@3
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_4

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/security/cert/TrustAnchor;

    #@13
    .line 799
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@16
    move-result-object v6

    #@17
    if-eqz v6, :cond_1

    #@19
    .line 800
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {p1, v6}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_0

    #@23
    .line 801
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@25
    .line 802
    return v8

    #@26
    .line 807
    :cond_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    #@29
    move-result-object v4

    #@2a
    .line 808
    .local v4, "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@2d
    move-result-object v5

    #@2e
    .line 810
    .local v5, "publicKey":Ljava/security/PublicKey;
    if-eqz v4, :cond_2

    #@30
    if-eqz v5, :cond_2

    #@32
    .line 811
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v4, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v6

    #@3a
    .line 810
    if-eqz v6, :cond_2

    #@3c
    .line 812
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v6

    #@44
    if-eqz v6, :cond_2

    #@46
    .line 814
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@48
    .line 815
    return v8

    #@49
    .line 821
    :cond_2
    if-eqz v4, :cond_0

    #@4b
    .line 822
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v4, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v6

    #@53
    if-eqz v6, :cond_0

    #@55
    .line 827
    invoke-static {v5}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    #@58
    move-result v6

    #@59
    if-nez v6, :cond_0

    #@5b
    .line 835
    :try_start_0
    iget-object v6, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@5d
    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    if-eqz v6, :cond_3

    #@63
    .line 836
    iget-object v6, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@65
    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {p1, v5, v6}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    #@6c
    .line 855
    :goto_1
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@6e
    .line 856
    return v8

    #@6f
    .line 838
    :cond_3
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@72
    goto :goto_1

    #@73
    .line 840
    :catch_0
    move-exception v3

    #@74
    .line 841
    .local v3, "ike":Ljava/security/InvalidKeyException;
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@76
    if-eqz v6, :cond_0

    #@78
    .line 842
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@7a
    const-string/jumbo v7, "ForwardBuilder.isPathCompleted() invalid DSA key found"

    #@7d
    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@80
    goto :goto_0

    #@81
    .line 846
    .end local v3    # "ike":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v2

    #@82
    .line 847
    .local v2, "e":Ljava/security/GeneralSecurityException;
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@84
    if-eqz v6, :cond_0

    #@86
    .line 848
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@88
    const-string/jumbo v7, "ForwardBuilder.isPathCompleted() unexpected exception"

    #@8b
    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@8e
    .line 850
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    #@91
    goto/16 :goto_0

    #@93
    .line 859
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .end local v4    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "publicKey":Ljava/security/PublicKey;
    :cond_4
    const/4 v6, 0x0

    #@94
    return v6
.end method

.method removeFinalCertFromPath(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 880
    .local p1, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@3
    .line 879
    return-void
.end method

.method verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    .locals 14
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "currentState"    # Lsun/security/provider/certpath/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 660
    .local p3, "certPathList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 661
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "ForwardBuilder.verifyCert(SN: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 662
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@15
    move-result-object v2

    #@16
    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 663
    const-string/jumbo v2, "\n  Issuer: "

    #@21
    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 663
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@28
    move-result-object v2

    #@29
    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 663
    const-string/jumbo v2, ")"

    #@30
    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 664
    const-string/jumbo v2, "\n  Subject: "

    #@37
    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 664
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3e
    move-result-object v2

    #@3f
    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 664
    const-string/jumbo v2, ")"

    #@46
    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@51
    :cond_0
    move-object/from16 v10, p2

    #@53
    .line 667
    check-cast v10, Lsun/security/provider/certpath/ForwardState;

    #@55
    .line 670
    .local v10, "currState":Lsun/security/provider/certpath/ForwardState;
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;

    #@57
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v0, p1, v1}, Lsun/security/provider/certpath/UntrustedChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    #@5e
    .line 676
    if-eqz p3, :cond_3

    #@60
    .line 677
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@63
    move-result-object v9

    #@64
    .local v9, "cpListCert$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@67
    move-result v0

    #@68
    if-eqz v0, :cond_3

    #@6a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6d
    move-result-object v8

    #@6e
    check-cast v8, Ljava/security/cert/X509Certificate;

    #@70
    .line 678
    .local v8, "cpListCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p1, v8}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v0

    #@74
    if-eqz v0, :cond_1

    #@76
    .line 679
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@78
    if-eqz v0, :cond_2

    #@7a
    .line 680
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    #@7c
    const-string/jumbo v1, "loop detected!!"

    #@7f
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@82
    .line 682
    :cond_2
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@84
    const-string/jumbo v1, "loop detected"

    #@87
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v0

    #@8b
    .line 688
    .end local v8    # "cpListCert":Ljava/security/cert/X509Certificate;
    .end local v9    # "cpListCert$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    #@8d
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@90
    move-result v11

    #@91
    .line 691
    .local v11, "isTrustedCert":Z
    if-nez v11, :cond_8

    #@93
    .line 697
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@96
    move-result-object v13

    #@97
    .line 698
    .local v13, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v13, :cond_4

    #@99
    .line 699
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@9c
    move-result-object v13

    #@9d
    .line 701
    :cond_4
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    #@9f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a2
    move-result-object v7

    #@a3
    .local v7, "checker$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@a6
    move-result v0

    #@a7
    if-eqz v0, :cond_5

    #@a9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ac
    move-result-object v6

    #@ad
    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    #@af
    .line 702
    .local v6, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v6, p1, v13}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    #@b2
    goto :goto_0

    #@b3
    .line 711
    .end local v6    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_5
    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@b5
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    #@b8
    move-result-object v0

    #@b9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@bc
    move-result-object v7

    #@bd
    :cond_6
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@c0
    move-result v0

    #@c1
    if-eqz v0, :cond_7

    #@c3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c6
    move-result-object v6

    #@c7
    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    #@c9
    .line 712
    .restart local v6    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v6}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    #@cc
    move-result v0

    #@cd
    if-nez v0, :cond_6

    #@cf
    .line 713
    invoke-virtual {v6}, Ljava/security/cert/PKIXCertPathChecker;->getSupportedExtensions()Ljava/util/Set;

    #@d2
    move-result-object v12

    #@d3
    .line 714
    .local v12, "supportedExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v12, :cond_6

    #@d5
    .line 715
    invoke-interface {v13, v12}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@d8
    goto :goto_1

    #@d9
    .line 724
    .end local v6    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v12    # "supportedExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    #@dc
    move-result v0

    #@dd
    if-nez v0, :cond_8

    #@df
    .line 725
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@e1
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@e4
    move-result-object v0

    #@e5
    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@e8
    .line 726
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@ea
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@ed
    move-result-object v0

    #@ee
    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@f1
    .line 727
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    #@f3
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@f6
    move-result-object v0

    #@f7
    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@fa
    .line 728
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    #@fc
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@ff
    move-result-object v0

    #@100
    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@103
    .line 729
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@105
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@108
    move-result-object v0

    #@109
    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@10c
    .line 730
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    #@10e
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@111
    move-result-object v0

    #@112
    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@115
    .line 731
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@117
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@11a
    move-result-object v0

    #@11b
    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@11e
    .line 732
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@120
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@123
    move-result-object v0

    #@124
    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@127
    .line 733
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@129
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@12c
    move-result-object v0

    #@12d
    invoke-interface {v13, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@130
    .line 735
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    #@133
    move-result v0

    #@134
    if-nez v0, :cond_8

    #@136
    .line 736
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@138
    .line 737
    const-string/jumbo v1, "Unrecognized critical extension(s)"

    #@13b
    .line 738
    sget-object v5, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    #@13d
    .line 737
    const/4 v2, 0x0

    #@13e
    const/4 v3, 0x0

    #@13f
    const/4 v4, -0x1

    #@140
    .line 736
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@143
    throw v0

    #@144
    .line 746
    .end local v7    # "checker$iterator":Ljava/util/Iterator;
    .end local v13    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {v10}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    #@147
    move-result v0

    #@148
    if-eqz v0, :cond_9

    #@14a
    .line 747
    return-void

    #@14b
    .line 751
    :cond_9
    if-nez v11, :cond_b

    #@14d
    .line 753
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@150
    move-result v0

    #@151
    const/4 v1, -0x1

    #@152
    if-ne v0, v1, :cond_a

    #@154
    .line 754
    new-instance v0, Ljava/security/cert/CertificateException;

    #@156
    const-string/jumbo v1, "cert is NOT a CA cert"

    #@159
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@15c
    throw v0

    #@15d
    .line 760
    :cond_a
    invoke-static {p1}, Lsun/security/provider/certpath/KeyChecker;->verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V

    #@160
    .line 774
    :cond_b
    invoke-virtual {v10}, Lsun/security/provider/certpath/ForwardState;->keyParamsNeeded()Z

    #@163
    move-result v0

    #@164
    if-nez v0, :cond_c

    #@166
    .line 775
    iget-object v0, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@168
    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@16b
    move-result-object v0

    #@16c
    if-eqz v0, :cond_d

    #@16e
    .line 776
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    #@170
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@173
    move-result-object v1

    #@174
    .line 777
    iget-object v2, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@176
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@179
    move-result-object v2

    #@17a
    .line 776
    invoke-virtual {v0, v1, v2}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@17d
    .line 658
    :cond_c
    :goto_2
    return-void

    #@17e
    .line 779
    :cond_d
    iget-object v0, v10, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    #@180
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@183
    move-result-object v1

    #@184
    invoke-virtual {v0, v1}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    #@187
    goto :goto_2
.end method
