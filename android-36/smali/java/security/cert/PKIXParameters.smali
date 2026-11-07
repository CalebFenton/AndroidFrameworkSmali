.class public Ljava/security/cert/PKIXParameters;
.super Ljava/lang/Object;
.source "PKIXParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# instance fields
.field private greylist-max-o anyPolicyInhibited:Z

.field private greylist-max-o certPathCheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o certSelector:Ljava/security/cert/CertSelector;

.field private greylist-max-o certStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o date:Ljava/util/Date;

.field private greylist-max-o explicitPolicyRequired:Z

.field private greylist-max-o policyMappingInhibited:Z

.field private greylist-max-o policyQualifiersRejected:Z

.field private greylist-max-o revocationEnabled:Z

.field private greylist-max-o sigProvider:Ljava/lang/String;

.field private greylist-max-o unmodInitialPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o unmodTrustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/KeyStore;)V
    .registers 9
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    .line 95
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    .line 96
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    .line 97
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    .line 144
    if-eqz p1, :cond_59

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v0, "hashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 149
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 150
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, "alias":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 152
    invoke-virtual {p1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 153
    .local v3, "cert":Ljava/security/cert/Certificate;
    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_40

    .line 154
    new-instance v4, Ljava/security/cert/TrustAnchor;

    move-object v5, v3

    check-cast v5, Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    :cond_40
    goto :goto_1a

    .line 157
    :cond_41
    invoke-virtual {p0, v0}, Ljava/security/cert/PKIXParameters;->setTrustAnchors(Ljava/util/Set;)V

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 161
    return-void

    .line 145
    .end local v0    # "hashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the keystore parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 119
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    .line 95
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    .line 96
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    .line 97
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    .line 120
    invoke-virtual {p0, p1}, Ljava/security/cert/PKIXParameters;->setTrustAnchors(Ljava/util/Set;)V

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 125
    return-void
.end method


# virtual methods
.method public whitelist test-api addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V
    .registers 4
    .param p1, "checker"    # Ljava/security/cert/PKIXCertPathChecker;

    .line 588
    if-eqz p1, :cond_d

    .line 589
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-virtual {p1}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_d
    return-void
.end method

.method public whitelist test-api addCertStore(Ljava/security/cert/CertStore;)V
    .registers 3
    .param p1, "store"    # Ljava/security/cert/CertStore;

    .line 303
    if-eqz p1, :cond_7

    .line 304
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_7
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 6

    .line 665
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    .line 668
    .local v0, "copy":Ljava/security/cert/PKIXParameters;
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-eqz v1, :cond_13

    .line 669
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 671
    :cond_13
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-eqz v1, :cond_43

    .line 672
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 673
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 674
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXCertPathChecker;

    .line 675
    .local v2, "checker":Ljava/security/cert/PKIXCertPathChecker;
    iget-object v3, v0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 676
    invoke-virtual {v2}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    .line 675
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_41} :catch_44

    .line 677
    nop

    .end local v2    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    goto :goto_2a

    .line 682
    :cond_43
    return-object v0

    .line 683
    .end local v0    # "copy":Ljava/security/cert/PKIXParameters;
    :catch_44
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getCertPathCheckers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v0, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXCertPathChecker;

    .line 571
    .local v2, "ck":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v2}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v2    # "ck":Ljava/security/cert/PKIXCertPathChecker;
    goto :goto_b

    .line 573
    :cond_21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getCertStores()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 319
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 318
    return-object v0
.end method

.method public whitelist test-api getDate()Ljava/util/Date;
    .registers 2

    .line 485
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    if-nez v0, :cond_6

    .line 486
    const/4 v0, 0x0

    return-object v0

    .line 488
    :cond_6
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getInitialPolicies()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api getPolicyQualifiersRejected()Z
    .registers 2

    .line 471
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    return v0
.end method

.method public whitelist test-api getSigProvider()Ljava/lang/String;
    .registers 2

    .line 601
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getTargetCertConstraints()Ljava/security/cert/CertSelector;
    .registers 2

    .line 630
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    if-eqz v0, :cond_d

    .line 631
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    invoke-interface {v0}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertSelector;

    return-object v0

    .line 633
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getTrustAnchors()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api isAnyPolicyInhibited()Z
    .registers 2

    .line 426
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    return v0
.end method

.method public whitelist test-api isExplicitPolicyRequired()Z
    .registers 2

    .line 379
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    return v0
.end method

.method public whitelist test-api isPolicyMappingInhibited()Z
    .registers 2

    .line 402
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    return v0
.end method

.method public whitelist test-api isRevocationEnabled()Z
    .registers 2

    .line 355
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    return v0
.end method

.method public whitelist test-api setAnyPolicyInhibited(Z)V
    .registers 2
    .param p1, "val"    # Z

    .line 415
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    .line 416
    return-void
.end method

.method public whitelist test-api setCertPathCheckers(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;)V"
        }
    .end annotation

    .line 546
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    if-eqz p1, :cond_24

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v0, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXCertPathChecker;

    .line 549
    .local v2, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v2}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v2    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    goto :goto_b

    .line 551
    :cond_21
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 552
    .end local v0    # "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    goto :goto_2b

    .line 553
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 555
    :goto_2b
    return-void
.end method

.method public whitelist test-api setCertStores(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    if-nez p1, :cond_a

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    goto :goto_2c

    .line 285
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/CertStore;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertStore;

    if-eqz v1, :cond_1d

    goto :goto_e

    .line 287
    :cond_1d
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "all elements of list must be of type java.security.cert.CertStore"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/CertStore;>;"
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 293
    :goto_2c
    return-void
.end method

.method public whitelist test-api setDate(Ljava/util/Date;)V
    .registers 3
    .param p1, "date"    # Ljava/util/Date;

    .line 503
    if-eqz p1, :cond_b

    .line 504
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    goto :goto_c

    .line 506
    :cond_b
    const/4 p1, 0x0

    .line 507
    :goto_c
    return-void
.end method

.method public whitelist test-api setExplicitPolicyRequired(Z)V
    .registers 2
    .param p1, "val"    # Z

    .line 367
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    .line 368
    return-void
.end method

.method public whitelist test-api setInitialPolicies(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p1, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_29

    .line 252
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 253
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_15

    goto :goto_6

    .line 255
    :cond_15
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "all elements of set must be of type java.lang.String"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 259
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    goto :goto_2f

    .line 261
    :cond_29
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    .line 262
    :goto_2f
    return-void
.end method

.method public whitelist test-api setPolicyMappingInhibited(Z)V
    .registers 2
    .param p1, "val"    # Z

    .line 391
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    .line 392
    return-void
.end method

.method public whitelist test-api setPolicyQualifiersRejected(Z)V
    .registers 2
    .param p1, "qualifiersRejected"    # Z

    .line 453
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    .line 454
    return-void
.end method

.method public whitelist test-api setRevocationEnabled(Z)V
    .registers 2
    .param p1, "val"    # Z

    .line 341
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    .line 342
    return-void
.end method

.method public whitelist test-api setSigProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "sigProvider"    # Ljava/lang/String;

    .line 614
    iput-object p1, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public whitelist test-api setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .registers 3
    .param p1, "selector"    # Ljava/security/cert/CertSelector;

    .line 651
    if-eqz p1, :cond_b

    .line 652
    invoke-interface {p1}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertSelector;

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    goto :goto_e

    .line 654
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    .line 655
    :goto_e
    return-void
.end method

.method public whitelist test-api setTrustAnchors(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 195
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    if-eqz p1, :cond_37

    .line 199
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 203
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/TrustAnchor;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/TrustAnchor;

    if-eqz v1, :cond_1b

    goto :goto_c

    .line 205
    :cond_1b
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "all elements of set must be of type java.security.cert.TrustAnchor"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/TrustAnchor;>;"
    :cond_23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 210
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    .line 211
    return-void

    .line 200
    :cond_2f
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "the trustAnchors parameter must be non-empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the trustAnchors parameters must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 696
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    const-string v2, "\n"

    if-eqz v1, :cond_30

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Trust Anchors: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :cond_30
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    const-string v3, "]\n"

    if-eqz v1, :cond_64

    .line 706
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 707
    const-string v1, "  Initial Policy OIDs: any\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 709
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Initial Policy OIDs: ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    .line 710
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    :cond_64
    :goto_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Validity Date: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Signature Provider: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Default Revocation Enabled: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Explicit Policy Required: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Policy Mapping Inhibited: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Any Policy Inhibited: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Policy Qualifiers Rejected: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Target Cert Constraints: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-eqz v1, :cond_174

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Certification Path Checkers: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 729
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_174
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-eqz v1, :cond_198

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  CertStores: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_198
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
