.class public Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
.super Ljava/security/cert/PKIXParameters;
.source "ExtendedPKIXParameters.java"


# static fields
.field public static final CHAIN_VALIDITY_MODEL:I = 0x1

.field public static final PKIX_VALIDITY_MODEL:I


# instance fields
.field private additionalLocationsEnabled:Z

.field private additionalStores:Ljava/util/List;

.field private attrCertCheckers:Ljava/util/Set;

.field private necessaryACAttributes:Ljava/util/Set;

.field private prohibitedACAttributes:Ljava/util/Set;

.field private selector:Lcom/android/org/bouncycastle/util/Selector;

.field private stores:Ljava/util/List;

.field private trustedACIssuers:Ljava/util/Set;

.field private useDeltas:Z

.field private validityModel:I


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 64
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    #@4
    .line 170
    iput v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    #@6
    .line 172
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    #@8
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    #@f
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    #@16
    .line 67
    new-instance v0, Ljava/util/HashSet;

    #@18
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    #@1d
    .line 68
    new-instance v0, Ljava/util/HashSet;

    #@1f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    #@24
    .line 69
    new-instance v0, Ljava/util/HashSet;

    #@26
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@29
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    #@2b
    .line 70
    new-instance v0, Ljava/util/HashSet;

    #@2d
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@30
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    #@32
    .line 62
    return-void
.end method

.method public static getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .locals 4
    .param p0, "pkixParams"    # Ljava/security/cert/PKIXParameters;

    #@0
    .prologue
    .line 85
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    #@2
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 92
    .local v1, "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    #@c
    .line 93
    return-object v1

    #@d
    .line 88
    .end local v1    # "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_0
    move-exception v0

    #@e
    .line 90
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2
.end method


# virtual methods
.method public addAddionalStore(Lcom/android/org/bouncycastle/util/Store;)V
    .locals 0
    .param p1, "store"    # Lcom/android/org/bouncycastle/util/Store;

    #@0
    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lcom/android/org/bouncycastle/util/Store;)V

    #@3
    .line 302
    return-void
.end method

.method public addAdditionalStore(Lcom/android/org/bouncycastle/util/Store;)V
    .locals 1
    .param p1, "store"    # Lcom/android/org/bouncycastle/util/Store;

    #@0
    .prologue
    .line 293
    if-eqz p1, :cond_0

    #@2
    .line 295
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7
    .line 291
    :cond_0
    return-void
.end method

.method public addStore(Lcom/android/org/bouncycastle/util/Store;)V
    .locals 1
    .param p1, "store"    # Lcom/android/org/bouncycastle/util/Store;

    #@0
    .prologue
    .line 270
    if-eqz p1, :cond_0

    #@2
    .line 272
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    #@4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7
    .line 268
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 352
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 359
    .local v1, "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    #@c
    .line 360
    return-object v1

    #@d
    .line 355
    .end local v1    # "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_0
    move-exception v0

    #@e
    .line 357
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2
.end method

.method public getAdditionalStores()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAttrCertCheckers()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNecessaryACAttributes()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getProhibitedACAttributes()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStores()Ljava/util/List;
    .locals 2

    #@0
    .prologue
    .line 334
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 406
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 408
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    #@7
    invoke-interface {v0}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/org/bouncycastle/util/Selector;

    #@d
    return-object v0

    #@e
    .line 412
    :cond_0
    return-object v1
.end method

.method public getTrustedACIssuers()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValidityModel()I
    .locals 1

    #@0
    .prologue
    .line 201
    iget v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    #@2
    return v0
.end method

.method public isAdditionalLocationsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    #@2
    return v0
.end method

.method public isUseDeltasEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    #@2
    return v0
.end method

.method public setAdditionalLocationsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    #@2
    .line 380
    return-void
.end method

.method public setAttrCertCheckers(Ljava/util/Set;)V
    .locals 4
    .param p1, "attrCertCheckers"    # Ljava/util/Set;

    #@0
    .prologue
    .line 643
    if-nez p1, :cond_0

    #@2
    .line 645
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    #@4
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@7
    .line 646
    return-void

    #@8
    .line 648
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 650
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    instance-of v1, v1, Lcom/android/org/bouncycastle/x509/PKIXAttrCertChecker;

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 652
    new-instance v1, Ljava/lang/ClassCastException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "All elements of set must be of type "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 653
    const-class v3, Lcom/android/org/bouncycastle/x509/PKIXAttrCertChecker;

    #@2a
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 652
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 653
    const-string/jumbo v3, "."

    #@35
    .line 652
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@40
    throw v1

    #@41
    .line 656
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    #@43
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@46
    .line 657
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    #@48
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@4b
    .line 641
    return-void
.end method

.method public setCertStores(Ljava/util/List;)V
    .locals 2
    .param p1, "stores"    # Ljava/util/List;

    #@0
    .prologue
    .line 212
    if-eqz p1, :cond_0

    #@2
    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 215
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/security/cert/CertStore;

    #@12
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    #@15
    goto :goto_0

    #@16
    .line 210
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setNecessaryACAttributes(Ljava/util/Set;)V
    .locals 3
    .param p1, "necessaryACAttributes"    # Ljava/util/Set;

    #@0
    .prologue
    .line 555
    if-nez p1, :cond_0

    #@2
    .line 557
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    #@4
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@7
    .line 558
    return-void

    #@8
    .line 560
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 562
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    instance-of v1, v1, Ljava/lang/String;

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 564
    new-instance v1, Ljava/lang/ClassCastException;

    #@1c
    const-string/jumbo v2, "All elements of set must be of type String."

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 568
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    #@25
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@28
    .line 569
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    #@2a
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2d
    .line 553
    return-void
.end method

.method protected setParams(Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 105
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setDate(Ljava/util/Date;)V

    #@8
    .line 106
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    #@f
    .line 107
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setCertStores(Ljava/util/List;)V

    #@16
    .line 108
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    #@19
    move-result v3

    #@1a
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setAnyPolicyInhibited(Z)V

    #@1d
    .line 109
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    #@20
    move-result v3

    #@21
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setExplicitPolicyRequired(Z)V

    #@24
    .line 110
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    #@27
    move-result v3

    #@28
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyMappingInhibited(Z)V

    #@2b
    .line 111
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    #@2e
    move-result v3

    #@2f
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setRevocationEnabled(Z)V

    #@32
    .line 112
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    #@39
    .line 113
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    #@3c
    move-result v3

    #@3d
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyQualifiersRejected(Z)V

    #@40
    .line 114
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setSigProvider(Ljava/lang/String;)V

    #@47
    .line 115
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    #@4e
    .line 118
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 125
    instance-of v3, p1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    #@57
    if-eqz v3, :cond_0

    #@59
    move-object v0, p1

    #@5a
    .line 127
    check-cast v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    #@5c
    .line 128
    .local v0, "_params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    iget v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    #@5e
    iput v3, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    #@60
    .line 129
    iget-boolean v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    #@62
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    #@64
    .line 130
    iget-boolean v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    #@66
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    #@68
    .line 131
    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    #@6a
    if-nez v3, :cond_1

    #@6c
    :goto_0
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    #@6e
    .line 133
    new-instance v2, Ljava/util/ArrayList;

    #@70
    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    #@72
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@75
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    #@77
    .line 134
    new-instance v2, Ljava/util/ArrayList;

    #@79
    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    #@7b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7e
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    #@80
    .line 135
    new-instance v2, Ljava/util/HashSet;

    #@82
    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    #@84
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@87
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    #@89
    .line 136
    new-instance v2, Ljava/util/HashSet;

    #@8b
    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    #@8d
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@90
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    #@92
    .line 137
    new-instance v2, Ljava/util/HashSet;

    #@94
    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    #@96
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@99
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    #@9b
    .line 138
    new-instance v2, Ljava/util/HashSet;

    #@9d
    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    #@9f
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@a2
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    #@a4
    .line 103
    .end local v0    # "_params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_0
    return-void

    #@a5
    .line 121
    :catch_0
    move-exception v1

    #@a6
    .line 123
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@a8
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@ab
    move-result-object v3

    #@ac
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@af
    throw v2

    #@b0
    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "_params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_1
    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    #@b2
    invoke-interface {v2}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    #@b5
    move-result-object v2

    #@b6
    check-cast v2, Lcom/android/org/bouncycastle/util/Selector;

    #@b8
    goto :goto_0
.end method

.method public setProhibitedACAttributes(Ljava/util/Set;)V
    .locals 3
    .param p1, "prohibitedACAttributes"    # Ljava/util/Set;

    #@0
    .prologue
    .line 600
    if-nez p1, :cond_0

    #@2
    .line 602
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    #@4
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@7
    .line 603
    return-void

    #@8
    .line 605
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 607
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    instance-of v1, v1, Ljava/lang/String;

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 609
    new-instance v1, Ljava/lang/ClassCastException;

    #@1c
    const-string/jumbo v2, "All elements of set must be of type String."

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 613
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    #@25
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@28
    .line 614
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    #@2a
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2d
    .line 598
    return-void
.end method

.method public setStores(Ljava/util/List;)V
    .locals 3
    .param p1, "stores"    # Ljava/util/List;

    #@0
    .prologue
    .line 235
    if-nez p1, :cond_0

    #@2
    .line 237
    new-instance v1, Ljava/util/ArrayList;

    #@4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@7
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    #@9
    .line 233
    :goto_0
    return-void

    #@a
    .line 241
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    .local v0, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    instance-of v1, v1, Lcom/android/org/bouncycastle/util/Store;

    #@1a
    if-nez v1, :cond_1

    #@1c
    .line 245
    new-instance v1, Ljava/lang/ClassCastException;

    #@1e
    .line 246
    const-string/jumbo v2, "All elements of list must be of type org.bouncycastle.util.Store."

    #@21
    .line 245
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 250
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    #@27
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@2a
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    #@2c
    goto :goto_0
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .locals 1
    .param p1, "selector"    # Ljava/security/cert/CertSelector;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 466
    invoke-super {p0, p1}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    #@4
    .line 467
    if-eqz p1, :cond_0

    #@6
    .line 470
    check-cast p1, Ljava/security/cert/X509CertSelector;

    #@8
    .line 469
    .end local p1    # "selector":Ljava/security/cert/CertSelector;
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    #@e
    .line 464
    :goto_0
    return-void

    #@f
    .line 474
    .restart local p1    # "selector":Ljava/security/cert/CertSelector;
    :cond_0
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    #@11
    goto :goto_0
.end method

.method public setTargetConstraints(Lcom/android/org/bouncycastle/util/Selector;)V
    .locals 1
    .param p1, "selector"    # Lcom/android/org/bouncycastle/util/Selector;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 437
    if-eqz p1, :cond_0

    #@3
    .line 439
    invoke-interface {p1}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/bouncycastle/util/Selector;

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    #@b
    .line 435
    :goto_0
    return-void

    #@c
    .line 443
    :cond_0
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    #@e
    goto :goto_0
.end method

.method public setTrustedACIssuers(Ljava/util/Set;)V
    .locals 4
    .param p1, "trustedACIssuers"    # Ljava/util/Set;

    #@0
    .prologue
    .line 509
    if-nez p1, :cond_0

    #@2
    .line 511
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    #@4
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@7
    .line 512
    return-void

    #@8
    .line 514
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    .local v0, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 516
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    instance-of v1, v1, Ljava/security/cert/TrustAnchor;

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 518
    new-instance v1, Ljava/lang/ClassCastException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "All elements of set must be of type "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 519
    const-class v3, Ljava/security/cert/TrustAnchor;

    #@2a
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 519
    const-string/jumbo v3, "."

    #@35
    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@40
    throw v1

    #@41
    .line 522
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    #@43
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@46
    .line 523
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    #@48
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@4b
    .line 507
    return-void
.end method

.method public setUseDeltasEnabled(Z)V
    .locals 0
    .param p1, "useDeltas"    # Z

    #@0
    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    #@2
    .line 189
    return-void
.end method

.method public setValidityModel(I)V
    .locals 0
    .param p1, "validityModel"    # I

    #@0
    .prologue
    .line 344
    iput p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    #@2
    .line 342
    return-void
.end method
