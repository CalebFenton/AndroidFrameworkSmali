.class public Ljava/security/cert/PKIXParameters;
.super Ljava/lang/Object;
.source "PKIXParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# instance fields
.field private anyPolicyInhibited:Z

.field private certPathCheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private certSelector:Ljava/security/cert/CertSelector;

.field private certStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private date:Ljava/util/Date;

.field private explicitPolicyRequired:Z

.field private policyMappingInhibited:Z

.field private policyQualifiersRejected:Z

.field private revocationEnabled:Z

.field private sigProvider:Ljava/lang/String;

.field private unmodInitialPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unmodTrustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 92
    iput-boolean v5, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    #@8
    .line 94
    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    #@a
    .line 95
    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    #@c
    .line 96
    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    #@e
    .line 97
    iput-boolean v5, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    #@10
    .line 144
    if-nez p1, :cond_0

    #@12
    .line 145
    new-instance v4, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v5, "the keystore parameter must be non-null"

    #@17
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v4

    #@1b
    .line 147
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    #@1d
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@20
    .line 148
    .local v3, "hashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    #@23
    move-result-object v1

    #@24
    .line 149
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_2

    #@2a
    .line 150
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/lang/String;

    #@30
    .line 151
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_1

    #@36
    .line 152
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@39
    move-result-object v2

    #@3a
    .line 153
    .local v2, "cert":Ljava/security/cert/Certificate;
    instance-of v4, v2, Ljava/security/cert/X509Certificate;

    #@3c
    if-eqz v4, :cond_1

    #@3e
    .line 154
    new-instance v4, Ljava/security/cert/TrustAnchor;

    #@40
    check-cast v2, Ljava/security/cert/X509Certificate;

    #@42
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    invoke-direct {v4, v2, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@45
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@48
    goto :goto_0

    #@49
    .line 157
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3}, Ljava/security/cert/PKIXParameters;->setTrustAnchors(Ljava/util/Set;)V

    #@4c
    .line 158
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@4f
    move-result-object v4

    #@50
    iput-object v4, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    #@52
    .line 159
    new-instance v4, Ljava/util/ArrayList;

    #@54
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@57
    iput-object v4, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@59
    .line 160
    new-instance v4, Ljava/util/ArrayList;

    #@5b
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5e
    iput-object v4, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@60
    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 92
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    #@7
    .line 94
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    #@9
    .line 95
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    #@b
    .line 96
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    #@d
    .line 97
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    #@f
    .line 120
    invoke-virtual {p0, p1}, Ljava/security/cert/PKIXParameters;->setTrustAnchors(Ljava/util/Set;)V

    #@12
    .line 122
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    #@18
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@1f
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@26
    .line 118
    return-void
.end method


# virtual methods
.method public addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V
    .locals 2
    .param p1, "checker"    # Ljava/security/cert/PKIXCertPathChecker;

    #@0
    .prologue
    .line 589
    if-eqz p1, :cond_0

    #@2
    .line 590
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@4
    invoke-virtual {p1}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    #@a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 588
    :cond_0
    return-void
.end method

.method public addCertStore(Ljava/security/cert/CertStore;)V
    .locals 1
    .param p1, "store"    # Ljava/security/cert/CertStore;

    #@0
    .prologue
    .line 303
    if-eqz p1, :cond_0

    #@2
    .line 304
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7
    .line 302
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 666
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Ljava/security/cert/PKIXParameters;

    #@6
    .line 669
    .local v2, "copy":Ljava/security/cert/PKIXParameters;
    iget-object v4, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 670
    new-instance v4, Ljava/util/ArrayList;

    #@c
    iget-object v5, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@e
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@11
    iput-object v4, v2, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@13
    .line 672
    :cond_0
    iget-object v4, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 674
    new-instance v4, Ljava/util/ArrayList;

    #@19
    iget-object v5, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@1b
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@1e
    move-result v5

    #@1f
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@22
    .line 673
    iput-object v4, v2, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@24
    .line 675
    iget-object v4, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@26
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v1

    #@2a
    .local v1, "checker$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_1

    #@30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    #@36
    .line 676
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    iget-object v5, v2, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@38
    .line 677
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    #@3e
    .line 676
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_0

    #@42
    .line 684
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v1    # "checker$iterator":Ljava/util/Iterator;
    .end local v2    # "copy":Ljava/security/cert/PKIXParameters;
    :catch_0
    move-exception v3

    #@43
    .line 686
    .local v3, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/InternalError;

    #@45
    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@4c
    throw v4

    #@4d
    .line 683
    .end local v3    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v2    # "copy":Ljava/security/cert/PKIXParameters;
    :cond_1
    return-object v2
.end method

.method public getCertPathCheckers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 570
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 571
    .local v2, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "ck$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    #@17
    .line 572
    .local v0, "ck":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    #@1d
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    goto :goto_0

    #@21
    .line 574
    .end local v0    # "ck":Ljava/security/cert/PKIXCertPathChecker;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@24
    move-result-object v3

    #@25
    return-object v3
.end method

.method public getCertStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 319
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    .line 318
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 485
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 486
    return-object v1

    #@6
    .line 488
    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    #@8
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/Date;

    #@e
    return-object v0
.end method

.method public getInitialPolicies()Ljava/util/Set;
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
    .line 228
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getPolicyQualifiersRejected()Z
    .locals 1

    #@0
    .prologue
    .line 471
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    #@2
    return v0
.end method

.method public getSigProvider()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 602
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTargetCertConstraints()Ljava/security/cert/CertSelector;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 631
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 632
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    #@7
    invoke-interface {v0}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/security/cert/CertSelector;

    #@d
    return-object v0

    #@e
    .line 634
    :cond_0
    return-object v1
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public isAnyPolicyInhibited()Z
    .locals 1

    #@0
    .prologue
    .line 426
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    #@2
    return v0
.end method

.method public isExplicitPolicyRequired()Z
    .locals 1

    #@0
    .prologue
    .line 379
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    #@2
    return v0
.end method

.method public isPolicyMappingInhibited()Z
    .locals 1

    #@0
    .prologue
    .line 402
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    #@2
    return v0
.end method

.method public isRevocationEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 355
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    #@2
    return v0
.end method

.method public setAnyPolicyInhibited(Z)V
    .locals 0
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 415
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    #@2
    .line 414
    return-void
.end method

.method public setCertPathCheckers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 546
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    if-eqz p1, :cond_1

    #@2
    .line 548
    new-instance v2, Ljava/util/ArrayList;

    #@4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 549
    .local v2, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "checker$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    #@17
    .line 550
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    #@1d
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    goto :goto_0

    #@21
    .line 552
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_0
    iput-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@23
    .line 545
    .end local v1    # "checker$iterator":Ljava/util/Iterator;
    .end local v2    # "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    :goto_1
    return-void

    #@24
    .line 554
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    #@26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@29
    iput-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@2b
    goto :goto_1
.end method

.method public setCertStores(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 282
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    if-nez p1, :cond_0

    #@2
    .line 283
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7
    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@9
    .line 281
    :goto_0
    return-void

    #@a
    .line 285
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/CertStore;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    instance-of v1, v1, Ljava/security/cert/CertStore;

    #@1a
    if-nez v1, :cond_1

    #@1c
    .line 287
    new-instance v1, Ljava/lang/ClassCastException;

    #@1e
    const-string/jumbo v2, "all elements of list must be of type java.security.cert.CertStore"

    #@21
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 291
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    #@27
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@2a
    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@2c
    goto :goto_0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 503
    if-eqz p1, :cond_0

    #@2
    .line 504
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    #@a
    .line 502
    .end local p1    # "date":Ljava/util/Date;
    :goto_0
    return-void

    #@b
    .line 506
    .restart local p1    # "date":Ljava/util/Date;
    :cond_0
    const/4 p1, 0x0

    #@c
    .local p1, "date":Ljava/util/Date;
    goto :goto_0
.end method

.method public setExplicitPolicyRequired(Z)V
    .locals 0
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 367
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    #@2
    .line 366
    return-void
.end method

.method public setInitialPolicies(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 251
    .local p1, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    #@2
    .line 252
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 253
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    .line 252
    if-eqz v1, :cond_1

    #@c
    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    instance-of v1, v1, Ljava/lang/String;

    #@12
    if-nez v1, :cond_0

    #@14
    .line 255
    new-instance v1, Ljava/lang/ClassCastException;

    #@16
    const-string/jumbo v2, "all elements of set must be of type java.lang.String"

    #@19
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 259
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    #@1f
    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@22
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@25
    move-result-object v1

    #@26
    .line 258
    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    #@28
    .line 250
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    return-void

    #@29
    .line 261
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    #@2f
    goto :goto_0
.end method

.method public setPolicyMappingInhibited(Z)V
    .locals 0
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 391
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    #@2
    .line 390
    return-void
.end method

.method public setPolicyQualifiersRejected(Z)V
    .locals 0
    .param p1, "qualifiersRejected"    # Z

    #@0
    .prologue
    .line 453
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    #@2
    .line 452
    return-void
.end method

.method public setRevocationEnabled(Z)V
    .locals 0
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 341
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    #@2
    .line 340
    return-void
.end method

.method public setSigProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "sigProvider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 615
    iput-object p1, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    #@2
    .line 614
    return-void
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .locals 1
    .param p1, "selector"    # Ljava/security/cert/CertSelector;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 652
    if-eqz p1, :cond_0

    #@3
    .line 653
    invoke-interface {p1}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/security/cert/CertSelector;

    #@9
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    #@b
    .line 651
    :goto_0
    return-void

    #@c
    .line 655
    :cond_0
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    #@e
    goto :goto_0
.end method

.method public setTrustAnchors(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    if-nez p1, :cond_0

    #@2
    .line 196
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "the trustAnchors parameters must be non-null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 199
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 200
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@13
    const-string/jumbo v2, "the trustAnchors parameter must be non-empty"

    #@16
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 203
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v0

    #@1e
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/TrustAnchor;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    instance-of v1, v1, Ljava/security/cert/TrustAnchor;

    #@2a
    if-nez v1, :cond_2

    #@2c
    .line 205
    new-instance v1, Ljava/lang/ClassCastException;

    #@2e
    const-string/jumbo v2, "all elements of set must be of type java.security.cert.TrustAnchor"

    #@31
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 210
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    #@37
    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@3a
    .line 209
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@3d
    move-result-object v1

    #@3e
    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    #@40
    .line 193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 696
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 697
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "[\n"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 700
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "  Trust Anchors: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->unmodTrustAnchors:Ljava/util/Set;

    #@1d
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 702
    const-string/jumbo v2, "\n"

    #@28
    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 706
    :cond_0
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 707
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    #@39
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_4

    #@3f
    .line 708
    const-string/jumbo v1, "  Initial Policy OIDs: any\n"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@45
    .line 716
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "  Validity Date: "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    #@53
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v2, "\n"

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@69
    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v2, "  Signature Provider: "

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    #@77
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    const-string/jumbo v2, "\n"

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8d
    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v2, "  Default Revocation Enabled: "

    #@95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    iget-boolean v2, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    #@9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    const-string/jumbo v2, "\n"

    #@a2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ad
    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v2, "  Explicit Policy Required: "

    #@b5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v1

    #@b9
    iget-boolean v2, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    #@bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@be
    move-result-object v1

    #@bf
    const-string/jumbo v2, "\n"

    #@c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v1

    #@c6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v1

    #@ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cd
    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v2, "  Policy Mapping Inhibited: "

    #@d5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v1

    #@d9
    iget-boolean v2, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    #@db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    const-string/jumbo v2, "\n"

    #@e2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v1

    #@e6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ed
    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v2, "  Any Policy Inhibited: "

    #@f5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v1

    #@f9
    iget-boolean v2, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    #@fb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v1

    #@ff
    const-string/jumbo v2, "\n"

    #@102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v1

    #@106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10d
    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v2, "  Policy Qualifiers Rejected: "

    #@115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    iget-boolean v2, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    #@11b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v1

    #@11f
    const-string/jumbo v2, "\n"

    #@122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v1

    #@126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v1

    #@12a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12d
    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    const-string/jumbo v2, "  Target Cert Constraints: "

    #@135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v1

    #@139
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certSelector:Ljava/security/cert/CertSelector;

    #@13b
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@13e
    move-result-object v2

    #@13f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v1

    #@143
    const-string/jumbo v2, "\n"

    #@146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v1

    #@14a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v1

    #@14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@151
    .line 728
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@153
    if-eqz v1, :cond_2

    #@155
    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    #@157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    const-string/jumbo v2, "  Certification Path Checkers: ["

    #@15d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v1

    #@161
    .line 730
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@163
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@166
    move-result-object v2

    #@167
    .line 729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v1

    #@16b
    .line 730
    const-string/jumbo v2, "]\n"

    #@16e
    .line 729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v1

    #@172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v1

    #@176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@179
    .line 731
    :cond_2
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@17b
    if-eqz v1, :cond_3

    #@17d
    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    #@17f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@182
    const-string/jumbo v2, "  CertStores: ["

    #@185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v1

    #@189
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@18b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@18e
    move-result-object v2

    #@18f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v1

    #@193
    const-string/jumbo v2, "]\n"

    #@196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v1

    #@19a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19d
    move-result-object v1

    #@19e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a1
    .line 733
    :cond_3
    const-string/jumbo v1, "]"

    #@1a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a7
    .line 734
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v1

    #@1ab
    return-object v1

    #@1ac
    .line 710
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    #@1ae
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b1
    const-string/jumbo v2, "  Initial Policy OIDs: ["

    #@1b4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v1

    #@1b8
    .line 711
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->unmodInitialPolicies:Ljava/util/Set;

    #@1ba
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1bd
    move-result-object v2

    #@1be
    .line 710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v1

    #@1c2
    .line 711
    const-string/jumbo v2, "]\n"

    #@1c5
    .line 710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v1

    #@1c9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v1

    #@1cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d0
    goto/16 :goto_0
.end method
