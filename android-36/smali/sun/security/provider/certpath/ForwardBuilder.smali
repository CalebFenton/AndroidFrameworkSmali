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
.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private blacklist caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

.field private blacklist caTargetSelector:Ljava/security/cert/X509CertSelector;

.field private blacklist eeSelector:Ljava/security/cert/X509CertSelector;

.field private blacklist searchAllCertStores:Z

.field blacklist trustAnchor:Ljava/security/cert/TrustAnchor;

.field private final blacklist trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist trustedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist trustedSubjectDNs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetdebug()Lsun/security/util/Debug;
    .registers 1

    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor blacklist <init>(Lsun/security/provider/certpath/PKIX$BuilderParams;Z)V
    .registers 8
    .param p1, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;
    .param p2, "searchAllCertStores"    # Z

    .line 81
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/Builder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    .line 84
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->trustAnchors()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    .line 87
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 88
    .local v1, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 89
    .local v2, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_4d

    .line 90
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 93
    :cond_4d
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v1    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "trustedCert":Ljava/security/cert/X509Certificate;
    :goto_56
    goto :goto_2c

    .line 96
    :cond_57
    iput-boolean p2, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    .line 97
    return-void
.end method

.method private blacklist getCerts(Lsun/security/x509/AuthorityInfoAccessExtension;Ljava/util/Collection;)Z
    .registers 11
    .param p1, "aiaExt"    # Lsun/security/x509/AuthorityInfoAccessExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/AuthorityInfoAccessExtension;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 359
    .local p2, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    sget-boolean v0, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 360
    return v1

    .line 362
    :cond_6
    invoke-virtual {p1}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    move-result-object v0

    .line 363
    .local v0, "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    if-eqz v0, :cond_4f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_4f

    .line 367
    :cond_13
    const/4 v1, 0x0

    .line 368
    .local v1, "add":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/AccessDescription;

    .line 369
    .local v3, "ad":Lsun/security/x509/AccessDescription;
    invoke-static {v3}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;

    move-result-object v4

    .line 370
    .local v4, "cs":Ljava/security/cert/CertStore;
    if-eqz v4, :cond_4d

    .line 372
    :try_start_2a
    iget-object v5, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    .line 373
    invoke-virtual {v4, v5}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v5

    .line 372
    invoke-interface {p2, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 374
    const/4 v1, 0x1

    .line 375
    iget-boolean v5, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z
    :try_end_39
    .catch Ljava/security/cert/CertStoreException; {:try_start_2a .. :try_end_39} :catch_3e

    if-nez v5, :cond_3d

    .line 376
    const/4 v2, 0x1

    return v2

    .line 384
    :cond_3d
    goto :goto_4d

    .line 379
    :catch_3e
    move-exception v5

    .line 380
    .local v5, "cse":Ljava/security/cert/CertStoreException;
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_4d

    .line 381
    sget-object v6, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string v7, "exception getting certs from CertStore:"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v5}, Ljava/security/cert/CertStoreException;->printStackTrace()V

    .line 386
    .end local v3    # "ad":Lsun/security/x509/AccessDescription;
    .end local v4    # "cs":Ljava/security/cert/CertStore;
    .end local v5    # "cse":Ljava/security/cert/CertStoreException;
    :cond_4d
    :goto_4d
    goto :goto_18

    .line 387
    :cond_4e
    return v1

    .line 364
    .end local v1    # "add":Z
    :cond_4f
    :goto_4f
    return v1
.end method

.method private blacklist getMatchingCACerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V
    .registers 12
    .param p1, "currentState"    # Lsun/security/provider/certpath/ForwardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ForwardState;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "caCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_b

    .line 193
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string v1, "ForwardBuilder.getMatchingCACerts()..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 195
    :cond_b
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    .line 201
    .local v0, "initialSize":I
    const/4 v1, 0x0

    .line 203
    .local v1, "sel":Ljava/security/cert/X509CertSelector;
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 204
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v2}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_20

    .line 206
    return-void

    .line 212
    :cond_20
    sget-object v2, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2b

    .line 213
    sget-object v2, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string v3, "ForwardBuilder.getMatchingCACerts(): the target is a CA"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 217
    :cond_2b
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    if-nez v2, :cond_4a

    .line 218
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    .line 219
    invoke-virtual {v2}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CertSelector;

    iput-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    .line 231
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$BuilderParams;->explicitPolicyRequired()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 232
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 235
    :cond_4a
    iget-object v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->caTargetSelector:Ljava/security/cert/X509CertSelector;

    goto :goto_8a

    .line 238
    :cond_4d
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    if-nez v2, :cond_69

    .line 239
    new-instance v2, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-direct {v2}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    iput-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    .line 251
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$BuilderParams;->explicitPolicyRequired()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 252
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 258
    :cond_69
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v3, p1, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2, v3}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 265
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v3, p1, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    .line 266
    invoke-static {v2, v3}, Lsun/security/provider/certpath/CertPathHelper;->setPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V

    .line 271
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v3, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    .line 272
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    .line 271
    invoke-virtual {v2, v3, v4}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V

    .line 274
    iget-object v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->caSelector:Lsun/security/provider/certpath/AdaptableX509CertSelector;

    .line 283
    :goto_8a
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 285
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_94
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 286
    .local v4, "trustedCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1, v4}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 287
    sget-object v5, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_e6

    .line 288
    sget-object v5, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ForwardBuilder.getMatchingCACerts: found matching trust anchor.\n  SN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 291
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n  Subject: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 293
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n  Issuer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 295
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 297
    :cond_e6
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f1

    iget-boolean v5, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    if-nez v5, :cond_f1

    .line 298
    return-void

    .line 301
    .end local v4    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_f1
    goto :goto_94

    .line 307
    :cond_f2
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$BuilderParams;->date()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 313
    iget v3, p1, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    invoke-virtual {v1, v3}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 322
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v3

    if-nez v3, :cond_118

    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 323
    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    move-result v3

    if-eq v3, v2, :cond_118

    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 324
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    move-result v2

    iget v3, p1, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    if-le v2, v3, :cond_125

    .line 326
    :cond_118
    iget-boolean v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    invoke-virtual {p0, v1, p2, p3, v2}, Lsun/security/provider/certpath/ForwardBuilder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    move-result v2

    if-eqz v2, :cond_125

    iget-boolean v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    if-nez v2, :cond_125

    .line 329
    return-void

    .line 333
    :cond_125
    invoke-virtual {p1}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v2

    if-nez v2, :cond_13a

    sget-boolean v2, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    if-eqz v2, :cond_13a

    .line 335
    iget-object v2, p1, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    .line 336
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    move-result-object v2

    .line 337
    .local v2, "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    if-eqz v2, :cond_13a

    .line 338
    invoke-direct {p0, v2, p3}, Lsun/security/provider/certpath/ForwardBuilder;->getCerts(Lsun/security/x509/AuthorityInfoAccessExtension;Ljava/util/Collection;)Z

    .line 342
    .end local v2    # "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    :cond_13a
    sget-object v2, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_161

    .line 343
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 344
    .local v2, "numCerts":I
    sget-object v3, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ForwardBuilder.getMatchingCACerts: found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CA certs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 347
    .end local v2    # "numCerts":I
    :cond_161
    return-void
.end method

.method private blacklist getMatchingEECerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V
    .registers 6
    .param p1, "currentState"    # Lsun/security/provider/certpath/ForwardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ForwardState;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "eeCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_b

    .line 149
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string v1, "ForwardBuilder.getMatchingEECerts()..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 159
    :cond_b
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    if-nez v0, :cond_3b

    .line 160
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    .line 165
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    iget-object v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 170
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->explicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 171
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    invoke-virtual {p0}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingPolicies()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 176
    :cond_35
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 180
    :cond_3b
    iget-object v0, p0, Lsun/security/provider/certpath/ForwardBuilder;->eeSelector:Ljava/security/cert/X509CertSelector;

    iget-boolean v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->searchAllCertStores:Z

    invoke-virtual {p0, v0, p2, p3, v1}, Lsun/security/provider/certpath/ForwardBuilder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    .line 181
    return-void
.end method


# virtual methods
.method blacklist addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/LinkedList<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 919
    .local p2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 920
    return-void
.end method

.method blacklist getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;
    .registers 7
    .param p1, "currentState"    # Lsun/security/provider/certpath/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection<",
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

    .line 113
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_b

    .line 114
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string v1, "ForwardBuilder.getMatchingCerts()..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 117
    :cond_b
    move-object v0, p1

    check-cast v0, Lsun/security/provider/certpath/ForwardState;

    .line 124
    .local v0, "currState":Lsun/security/provider/certpath/ForwardState;
    new-instance v1, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;

    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedSubjectDNs:Ljava/util/Set;

    iget-object v3, v0, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-direct {v1, v2, v3}, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;-><init>(Ljava/util/Set;Lsun/security/x509/X509CertImpl;)V

    .line 126
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/security/cert/X509Certificate;>;"
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 131
    .local v2, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v0}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 132
    invoke-direct {p0, v0, p2, v2}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingEECerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V

    .line 134
    :cond_25
    invoke-direct {p0, v0, p2, v2}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingCACerts(Lsun/security/provider/certpath/ForwardState;Ljava/util/List;Ljava/util/Collection;)V

    .line 136
    return-object v2
.end method

.method blacklist isPathCompleted(Ljava/security/cert/X509Certificate;)Z
    .registers 11
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v0, "otherAnchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    iget-object v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    .line 841
    .local v2, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 842
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 843
    iput-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 844
    return v3

    .line 849
    :cond_2b
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 850
    .local v4, "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 852
    .local v5, "publicKey":Ljava/security/PublicKey;
    if-eqz v4, :cond_4e

    if-eqz v5, :cond_4e

    .line 853
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 854
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 856
    iput-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 857
    return v3

    .line 861
    :cond_4e
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    .end local v2    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v4    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "publicKey":Ljava/security/PublicKey;
    goto :goto_b

    .line 864
    :cond_52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_56
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    .line 865
    .restart local v2    # "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 866
    .restart local v4    # "principal":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 868
    .restart local v5    # "publicKey":Ljava/security/PublicKey;
    if-eqz v4, :cond_56

    .line 869
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_77

    .line 870
    goto :goto_56

    .line 874
    :cond_77
    invoke-static {v5}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 875
    goto :goto_56

    .line 883
    :cond_7e
    :try_start_7e
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_90

    .line 884
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_93

    .line 886
    :cond_90
    invoke-virtual {p1, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_93
    .catch Ljava/security/InvalidKeyException; {:try_start_7e .. :try_end_93} :catch_a7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7e .. :try_end_93} :catch_97

    .line 901
    :goto_93
    nop

    .line 903
    iput-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 904
    return v3

    .line 894
    :catch_97
    move-exception v6

    .line 895
    .local v6, "e":Ljava/security/GeneralSecurityException;
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_a6

    .line 896
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string v8, "ForwardBuilder.isPathCompleted() unexpected exception"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v6}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 900
    :cond_a6
    goto :goto_56

    .line 888
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    :catch_a7
    move-exception v6

    .line 889
    .local v6, "ike":Ljava/security/InvalidKeyException;
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_b3

    .line 890
    sget-object v7, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string v8, "ForwardBuilder.isPathCompleted() invalid DSA key found"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 893
    :cond_b3
    goto :goto_56

    .line 907
    .end local v2    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v4    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "publicKey":Ljava/security/PublicKey;
    .end local v6    # "ike":Ljava/security/InvalidKeyException;
    :cond_b4
    const/4 v1, 0x0

    return v1
.end method

.method blacklist removeFinalCertFromPath(Ljava/util/LinkedList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 928
    .local p1, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 929
    return-void
.end method

.method blacklist verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    .registers 14
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "currentState"    # Lsun/security/provider/certpath/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 697
    .local p3, "certPathList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_46

    .line 698
    sget-object v0, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ForwardBuilder.verifyCert(SN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 699
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  Issuer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 700
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n  Subject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 704
    :cond_46
    move-object v0, p2

    check-cast v0, Lsun/security/provider/certpath/ForwardState;

    .line 716
    .local v0, "currState":Lsun/security/provider/certpath/ForwardState;
    if-eqz p3, :cond_75

    .line 717
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 718
    .local v2, "cpListCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 719
    sget-object v1, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_6c

    .line 720
    sget-object v1, Lsun/security/provider/certpath/ForwardBuilder;->debug:Lsun/security/util/Debug;

    const-string v3, "loop detected!!"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 722
    :cond_6c
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "loop detected"

    invoke-direct {v1, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 724
    .end local v2    # "cpListCert":Ljava/security/cert/X509Certificate;
    :cond_74
    goto :goto_4f

    .line 728
    :cond_75
    iget-object v1, p0, Lsun/security/provider/certpath/ForwardBuilder;->trustedCerts:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 731
    .local v1, "isTrustedCert":Z
    if-nez v1, :cond_12e

    .line 737
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    .line 738
    .local v2, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_87

    .line 739
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 741
    :cond_87
    iget-object v3, v0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    .line 742
    .local v4, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v4, p1, v2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    .line 743
    .end local v4    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    goto :goto_8d

    .line 751
    :cond_9d
    iget-object v3, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certPathCheckers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    .line 752
    .restart local v4    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v4}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v5

    if-nez v5, :cond_c2

    .line 753
    invoke-virtual {v4}, Ljava/security/cert/PKIXCertPathChecker;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v5

    .line 754
    .local v5, "supportedExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_c2

    .line 755
    invoke-interface {v2, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 758
    .end local v4    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v5    # "supportedExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c2
    goto :goto_a7

    .line 764
    :cond_c3
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12e

    .line 765
    sget-object v3, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 766
    sget-object v3, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 767
    sget-object v3, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 768
    sget-object v3, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 769
    sget-object v3, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 770
    sget-object v3, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 771
    sget-object v3, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 772
    sget-object v3, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 773
    sget-object v3, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 775
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_121

    goto :goto_12e

    .line 776
    :cond_121
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const/4 v8, -0x1

    sget-object v9, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    const-string v5, "Unrecognized critical extension(s)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v4

    .line 786
    .end local v2    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12e
    :goto_12e
    invoke-virtual {v0}, Lsun/security/provider/certpath/ForwardState;->isInitial()Z

    move-result v2

    if-eqz v2, :cond_135

    .line 787
    return-void

    .line 791
    :cond_135
    if-nez v1, :cond_14a

    .line 793
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_142

    .line 800
    invoke-static {p1}, Lsun/security/provider/certpath/KeyChecker;->verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V

    goto :goto_14a

    .line 794
    :cond_142
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "cert is NOT a CA cert"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 814
    :cond_14a
    :goto_14a
    invoke-virtual {v0}, Lsun/security/provider/certpath/ForwardState;->keyParamsNeeded()Z

    move-result v2

    if-nez v2, :cond_171

    .line 816
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_168

    .line 817
    iget-object v2, v0, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    iget-object v4, p0, Lsun/security/provider/certpath/ForwardBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 818
    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$BuilderParams;->sigProvider()Ljava/lang/String;

    move-result-object v4

    .line 817
    invoke-virtual {v2, v3, v4}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_171

    .line 820
    :cond_168
    iget-object v2, v0, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    .line 823
    :cond_171
    :goto_171
    return-void
.end method
