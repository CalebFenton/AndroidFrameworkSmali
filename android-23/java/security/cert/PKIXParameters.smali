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

.field private initialPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private policyMappingInhibited:Z

.field private policyQualifiersRejected:Z

.field private revocationEnabled:Z

.field private sigProvider:Ljava/lang/String;

.field private targetCertConstraints:Ljava/security/cert/CertSelector;

.field private trustAnchors:Ljava/util/Set;
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
    .locals 6
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 58
    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    #@8
    .line 60
    iput-boolean v3, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    #@a
    .line 62
    iput-boolean v3, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    #@c
    .line 64
    iput-boolean v3, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    #@e
    .line 68
    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    #@10
    .line 103
    if-nez p1, :cond_0

    #@12
    .line 104
    new-instance v3, Ljava/lang/NullPointerException;

    #@14
    const-string/jumbo v4, "keyStore == null"

    #@17
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v3

    #@1b
    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->size()I

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_1

    #@21
    .line 109
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@23
    const-string/jumbo v4, "keyStore.size() == 0"

    #@26
    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3

    #@2a
    .line 112
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    #@2c
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@2f
    iput-object v3, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    #@31
    .line 113
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    #@34
    move-result-object v2

    #@35
    .local v2, "i":Ljava/util/Enumeration;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_3

    #@3b
    .line 114
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/lang/String;

    #@41
    .line 115
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    #@44
    move-result v3

    #@45
    if-eqz v3, :cond_2

    #@47
    .line 118
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@4a
    move-result-object v1

    #@4b
    .line 121
    .local v1, "c":Ljava/security/cert/Certificate;
    instance-of v3, v1, Ljava/security/cert/X509Certificate;

    #@4d
    if-eqz v3, :cond_2

    #@4f
    .line 122
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    #@51
    new-instance v4, Ljava/security/cert/TrustAnchor;

    #@53
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@55
    .end local v1    # "c":Ljava/security/cert/Certificate;
    invoke-direct {v4, v1, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@58
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_0

    #@5c
    .line 126
    .end local v0    # "alias":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    #@5e
    invoke-direct {p0, v3}, Ljava/security/cert/PKIXParameters;->checkTrustAnchors(Ljava/util/Set;)V

    #@61
    .line 102
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
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 58
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    #@7
    .line 60
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    #@9
    .line 62
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    #@b
    .line 64
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    #@d
    .line 68
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    #@f
    .line 81
    if-nez p1, :cond_0

    #@11
    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v1, "trustAnchors == null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 84
    :cond_0
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;->checkTrustAnchors(Ljava/util/Set;)V

    #@1d
    .line 85
    new-instance v0, Ljava/util/HashSet;

    #@1f
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@22
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    #@24
    .line 80
    return-void
.end method

.method private checkTrustAnchors(Ljava/util/Set;)V
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
    .line 587
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 588
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@8
    const-string/jumbo v1, "trustAnchors.isEmpty()"

    #@b
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 586
    :cond_0
    return-void
.end method


# virtual methods
.method public addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V
    .locals 2
    .param p1, "checker"    # Ljava/security/cert/PKIXCertPathChecker;

    #@0
    .prologue
    .line 240
    if-nez p1, :cond_0

    #@2
    .line 242
    return-void

    #@3
    .line 244
    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 246
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@e
    .line 249
    :cond_1
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@10
    invoke-virtual {p1}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    #@16
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 239
    return-void
.end method

.method public addCertStore(Ljava/security/cert/CertStore;)V
    .locals 1
    .param p1, "store"    # Ljava/security/cert/CertStore;

    #@0
    .prologue
    .line 302
    if-nez p1, :cond_0

    #@2
    .line 304
    return-void

    #@3
    .line 306
    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 308
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@e
    .line 311
    :cond_1
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 301
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 527
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/security/cert/PKIXParameters;

    #@6
    .line 529
    .local v1, "ret":Ljava/security/cert/PKIXParameters;
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 530
    new-instance v2, Ljava/util/ArrayList;

    #@c
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@e
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@11
    iput-object v2, v1, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@13
    .line 532
    :cond_0
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 533
    new-instance v2, Ljava/util/ArrayList;

    #@19
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@1b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1e
    iput-object v2, v1, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 535
    :cond_1
    return-object v1

    #@21
    .line 536
    .end local v1    # "ret":Ljava/security/cert/PKIXParameters;
    :catch_0
    move-exception v0

    #@22
    .line 537
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@24
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@27
    throw v2
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
    .line 187
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 189
    new-instance v3, Ljava/util/ArrayList;

    #@6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@b
    .line 191
    :cond_0
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 195
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@15
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@18
    move-result-object v3

    #@19
    return-object v3

    #@1a
    .line 198
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1f
    .line 199
    .local v2, "modifiableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/PKIXCertPathChecker;>;"
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "certPathChecker$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_2

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    #@31
    .line 200
    .local v0, "certPathChecker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    #@37
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 202
    .end local v0    # "certPathChecker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@3e
    move-result-object v3

    #@3f
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
    .line 259
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 261
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@b
    .line 263
    :cond_0
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 267
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@15
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 271
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    #@1c
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@1e
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@21
    .line 272
    .local v0, "modifiableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/CertStore;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@24
    move-result-object v1

    #@25
    return-object v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 322
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    #@8
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/Date;

    #@e
    goto :goto_0
.end method

.method public getInitialPolicies()Ljava/util/Set;
    .locals 2
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
    .line 368
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 370
    new-instance v1, Ljava/util/HashSet;

    #@6
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@9
    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@b
    .line 372
    :cond_0
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@d
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 376
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@15
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 379
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    #@1c
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@1e
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@21
    .line 380
    .local v0, "modifiableSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@24
    move-result-object v1

    #@25
    return-object v1
.end method

.method public getPolicyQualifiersRejected()Z
    .locals 1

    #@0
    .prologue
    .line 433
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    #@2
    return v0
.end method

.method public getSigProvider()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTargetCertConstraints()Ljava/security/cert/CertSelector;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 503
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    .line 504
    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    #@8
    invoke-interface {v0}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/security/cert/CertSelector;

    #@e
    goto :goto_0
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
    .line 135
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isAnyPolicyInhibited()Z
    .locals 1

    #@0
    .prologue
    .line 164
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    #@2
    return v0
.end method

.method public isExplicitPolicyRequired()Z
    .locals 1

    #@0
    .prologue
    .line 345
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    #@2
    return v0
.end method

.method public isPolicyMappingInhibited()Z
    .locals 1

    #@0
    .prologue
    .line 411
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    #@2
    return v0
.end method

.method public isRevocationEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 456
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    #@2
    return v0
.end method

.method public setAnyPolicyInhibited(Z)V
    .locals 0
    .param p1, "anyPolicyInhibited"    # Z

    #@0
    .prologue
    .line 176
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    #@2
    .line 175
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
    .local p1, "certPathCheckers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    const/4 v3, 0x0

    #@1
    .line 215
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_3

    #@9
    .line 217
    :cond_0
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 218
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 222
    :cond_1
    :goto_0
    return-void

    #@16
    .line 220
    :cond_2
    iput-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@18
    goto :goto_0

    #@19
    .line 225
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1e
    iput-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@20
    .line 226
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .local v1, "certPathChecker$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_4

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    #@30
    .line 227
    .local v0, "certPathChecker":Ljava/security/cert/PKIXCertPathChecker;
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@32
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Ljava/security/cert/PKIXCertPathChecker;

    #@38
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_1

    #@3c
    .line 214
    .end local v0    # "certPathChecker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_4
    return-void
.end method

.method public setCertStores(Ljava/util/List;)V
    .locals 2
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
    .local p1, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    const/4 v1, 0x0

    #@1
    .line 282
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_3

    #@9
    .line 284
    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 288
    :cond_1
    :goto_0
    return-void

    #@16
    .line 286
    :cond_2
    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@18
    goto :goto_0

    #@19
    .line 291
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1e
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@20
    .line 281
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 334
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    #@5
    .line 333
    return-void

    #@6
    .line 334
    :cond_0
    new-instance v0, Ljava/util/Date;

    #@8
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@b
    move-result-wide v2

    #@c
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@f
    goto :goto_0
.end method

.method public setExplicitPolicyRequired(Z)V
    .locals 0
    .param p1, "explicitPolicyRequired"    # Z

    #@0
    .prologue
    .line 357
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    #@2
    .line 356
    return-void
.end method

.method public setInitialPolicies(Ljava/util/Set;)V
    .locals 2
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
    .local p1, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@1
    .line 392
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_3

    #@9
    .line 394
    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@f
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 398
    :cond_1
    :goto_0
    return-void

    #@16
    .line 396
    :cond_2
    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@18
    goto :goto_0

    #@19
    .line 401
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    #@1b
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1e
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@20
    .line 391
    return-void
.end method

.method public setPolicyMappingInhibited(Z)V
    .locals 0
    .param p1, "policyMappingInhibited"    # Z

    #@0
    .prologue
    .line 422
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    #@2
    .line 421
    return-void
.end method

.method public setPolicyQualifiersRejected(Z)V
    .locals 0
    .param p1, "policyQualifiersRejected"    # Z

    #@0
    .prologue
    .line 445
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    #@2
    .line 444
    return-void
.end method

.method public setRevocationEnabled(Z)V
    .locals 0
    .param p1, "revocationEnabled"    # Z

    #@0
    .prologue
    .line 468
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    #@2
    .line 467
    return-void
.end method

.method public setSigProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "sigProvider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 493
    iput-object p1, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    #@2
    .line 492
    return-void
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .locals 1
    .param p1, "targetCertConstraints"    # Ljava/security/cert/CertSelector;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 515
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    #@5
    .line 514
    return-void

    #@6
    .line 516
    :cond_0
    invoke-interface {p1}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/security/cert/CertSelector;

    #@c
    goto :goto_0
.end method

.method public setTrustAnchors(Ljava/util/Set;)V
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
    .line 148
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    if-nez p1, :cond_0

    #@2
    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "trustAnchors == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 151
    :cond_0
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;->checkTrustAnchors(Ljava/util/Set;)V

    #@e
    .line 153
    new-instance v0, Ljava/util/HashSet;

    #@10
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@13
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    #@15
    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "[\n Trust Anchors: "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 549
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d
    .line 550
    const-string/jumbo v1, "\n Revocation Enabled: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 551
    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@18
    .line 552
    const-string/jumbo v1, "\n Explicit Policy Required: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 553
    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@23
    .line 554
    const-string/jumbo v1, "\n Policy Mapping Inhibited: "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 555
    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    .line 556
    const-string/jumbo v1, "\n Any Policy Inhibited: "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 557
    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39
    .line 558
    const-string/jumbo v1, "\n Policy Qualifiers Rejected: "

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 559
    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@44
    .line 560
    const-string/jumbo v1, "\n Initial Policy OIDs: "

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 561
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@4c
    if-eqz v1, :cond_0

    #@4e
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@50
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_3

    #@56
    .line 562
    :cond_0
    const-string/jumbo v1, "any"

    #@59
    .line 561
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 563
    const-string/jumbo v1, "\n Cert Stores: "

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 564
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@64
    if-eqz v1, :cond_1

    #@66
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@68
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_4

    #@6e
    .line 565
    :cond_1
    const-string/jumbo v1, "no"

    #@71
    .line 564
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 566
    const-string/jumbo v1, "\n Validity Date: "

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 567
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    .line 568
    const-string/jumbo v1, "\n Cert Path Checkers: "

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 569
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@87
    if-eqz v1, :cond_2

    #@89
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@8b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@8e
    move-result v1

    #@8f
    if-eqz v1, :cond_5

    #@91
    .line 570
    :cond_2
    const-string/jumbo v1, "no"

    #@94
    .line 569
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 571
    const-string/jumbo v1, "\n Signature Provider: "

    #@9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    .line 572
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 573
    const-string/jumbo v1, "\n Target Certificate Constraints: "

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 574
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    .line 575
    const-string/jumbo v1, "\n]"

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    return-object v1

    #@b8
    .line 562
    :cond_3
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    #@ba
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@bd
    move-result-object v1

    #@be
    goto :goto_0

    #@bf
    .line 565
    :cond_4
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    #@c1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@c4
    move-result-object v1

    #@c5
    goto :goto_1

    #@c6
    .line 570
    :cond_5
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    #@c8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@cb
    move-result-object v1

    #@cc
    goto :goto_2
.end method
