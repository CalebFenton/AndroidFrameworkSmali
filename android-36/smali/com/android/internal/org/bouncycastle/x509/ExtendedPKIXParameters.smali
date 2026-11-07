.class public Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
.super Ljava/security/cert/PKIXParameters;
.source "ExtendedPKIXParameters.java"


# static fields
.field public static final blacklist CHAIN_VALIDITY_MODEL:I = 0x1

.field public static final blacklist PKIX_VALIDITY_MODEL:I


# instance fields
.field private blacklist additionalLocationsEnabled:Z

.field private blacklist additionalStores:Ljava/util/List;

.field private blacklist attrCertCheckers:Ljava/util/Set;

.field private blacklist necessaryACAttributes:Ljava/util/Set;

.field private blacklist prohibitedACAttributes:Ljava/util/Set;

.field private blacklist selector:Lcom/android/internal/org/bouncycastle/util/Selector;

.field private blacklist stores:Ljava/util/List;

.field private blacklist trustedACIssuers:Ljava/util/Set;

.field private blacklist useDeltas:Z

.field private blacklist validityModel:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 3
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    .line 174
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    .line 73
    return-void
.end method

.method public static blacklist getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    .registers 4
    .param p0, "pkixParams"    # Ljava/security/cert/PKIXParameters;

    .line 87
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_e

    .line 93
    .local v0, "params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    nop

    .line 94
    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 95
    return-object v0

    .line 89
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_e
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist addAddionalStore(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .registers 2
    .param p1, "store"    # Lcom/android/internal/org/bouncycastle/util/Store;

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lcom/android/internal/org/bouncycastle/util/Store;)V

    .line 307
    return-void
.end method

.method public blacklist addAdditionalStore(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .registers 3
    .param p1, "store"    # Lcom/android/internal/org/bouncycastle/util/Store;

    .line 295
    if-eqz p1, :cond_7

    .line 297
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_7
    return-void
.end method

.method public blacklist addStore(Lcom/android/internal/org/bouncycastle/util/Store;)V
    .registers 3
    .param p1, "store"    # Lcom/android/internal/org/bouncycastle/util/Store;

    .line 272
    if-eqz p1, :cond_7

    .line 274
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_7
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 354
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_e

    .line 360
    .local v0, "params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    nop

    .line 361
    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 362
    return-object v0

    .line 356
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_e
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getAdditionalStores()Ljava/util/List;
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAttrCertCheckers()Ljava/util/Set;
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNecessaryACAttributes()Ljava/util/Set;
    .registers 2

    .line 539
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProhibitedACAttributes()Ljava/util/Set;
    .registers 2

    .line 584
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStores()Ljava/util/List;
    .registers 3

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTargetConstraints()Lcom/android/internal/org/bouncycastle/util/Selector;
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    if-eqz v0, :cond_d

    .line 410
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/util/Selector;

    return-object v0

    .line 414
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTrustedACIssuers()Ljava/util/Set;
    .registers 2

    .line 492
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValidityModel()I
    .registers 2

    .line 203
    iget v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    return v0
.end method

.method public blacklist isAdditionalLocationsEnabled()Z
    .registers 2

    .line 373
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    return v0
.end method

.method public blacklist isUseDeltasEnabled()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    return v0
.end method

.method public blacklist setAdditionalLocationsEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 384
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    .line 385
    return-void
.end method

.method public blacklist setAttrCertCheckers(Ljava/util/Set;)V
    .registers 6
    .param p1, "attrCertCheckers"    # Ljava/util/Set;

    .line 645
    if-nez p1, :cond_8

    .line 647
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 648
    return-void

    .line 650
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 652
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/org/bouncycastle/x509/PKIXAttrCertChecker;

    if-eqz v1, :cond_1b

    goto :goto_c

    .line 654
    :cond_1b
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All elements of set must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/internal/org/bouncycastle/x509/PKIXAttrCertChecker;

    .line 655
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 658
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 659
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 660
    return-void
.end method

.method public whitelist test-api setCertStores(Ljava/util/List;)V
    .registers 4
    .param p1, "stores"    # Ljava/util/List;

    .line 214
    if-eqz p1, :cond_16

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    .local v0, "it":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertStore;

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_6

    .line 222
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_16
    return-void
.end method

.method public blacklist setNecessaryACAttributes(Ljava/util/Set;)V
    .registers 5
    .param p1, "necessaryACAttributes"    # Ljava/util/Set;

    .line 557
    if-nez p1, :cond_8

    .line 559
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 560
    return-void

    .line 562
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1b

    goto :goto_c

    .line 566
    :cond_1b
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of set must be of type String."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_23
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 571
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 572
    return-void
.end method

.method protected blacklist setParams(Ljava/security/cert/PKIXParameters;)V
    .registers 5
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;

    .line 107
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setDate(Ljava/util/Date;)V

    .line 108
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 109
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setCertStores(Ljava/util/List;)V

    .line 110
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setAnyPolicyInhibited(Z)V

    .line 111
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setExplicitPolicyRequired(Z)V

    .line 112
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyMappingInhibited(Z)V

    .line 113
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setRevocationEnabled(Z)V

    .line 114
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    .line 115
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyQualifiersRejected(Z)V

    .line 116
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setSigProvider(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 120
    :try_start_4d
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_af

    .line 126
    nop

    .line 127
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v0, :cond_ae

    .line 129
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 130
    .local v0, "_params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    iget v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    .line 131
    iget-boolean v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    .line 132
    iget-boolean v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    .line 133
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    if-nez v1, :cond_6e

    const/4 v1, 0x0

    goto :goto_76

    .line 134
    :cond_6e
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/util/Selector;

    :goto_76
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    .line 137
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    .line 138
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    .line 139
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    .line 140
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    .line 142
    .end local v0    # "_params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_ae
    return-void

    .line 122
    :catch_af
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setProhibitedACAttributes(Ljava/util/Set;)V
    .registers 5
    .param p1, "prohibitedACAttributes"    # Ljava/util/Set;

    .line 602
    if-nez p1, :cond_8

    .line 604
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 605
    return-void

    .line 607
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 609
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1b

    goto :goto_c

    .line 611
    :cond_1b
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of set must be of type String."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_23
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 616
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 617
    return-void
.end method

.method public blacklist setStores(Ljava/util/List;)V
    .registers 5
    .param p1, "stores"    # Ljava/util/List;

    .line 237
    if-nez p1, :cond_a

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    goto :goto_2c

    .line 243
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/org/bouncycastle/util/Store;

    if-eqz v1, :cond_1d

    goto :goto_e

    .line 247
    :cond_1d
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "All elements of list must be of type com.android.internal.org.bouncycastle.util.Store."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    .line 254
    :goto_2c
    return-void
.end method

.method public whitelist test-api setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .registers 3
    .param p1, "selector"    # Ljava/security/cert/CertSelector;

    .line 468
    invoke-super {p0, p1}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 469
    if-eqz p1, :cond_f

    .line 471
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CertSelector;

    .line 472
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    goto :goto_12

    .line 476
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    .line 478
    :goto_12
    return-void
.end method

.method public blacklist setTargetConstraints(Lcom/android/internal/org/bouncycastle/util/Selector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/internal/org/bouncycastle/util/Selector;

    .line 439
    if-eqz p1, :cond_b

    .line 441
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/util/Selector;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    goto :goto_e

    .line 445
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/internal/org/bouncycastle/util/Selector;

    .line 447
    :goto_e
    return-void
.end method

.method public blacklist setTrustedACIssuers(Ljava/util/Set;)V
    .registers 6
    .param p1, "trustedACIssuers"    # Ljava/util/Set;

    .line 511
    if-nez p1, :cond_8

    .line 513
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 514
    return-void

    .line 516
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 518
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/TrustAnchor;

    if-eqz v1, :cond_1b

    goto :goto_c

    .line 520
    :cond_1b
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All elements of set must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Ljava/security/cert/TrustAnchor;

    .line 521
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 525
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 526
    return-void
.end method

.method public blacklist setUseDeltasEnabled(Z)V
    .registers 2
    .param p1, "useDeltas"    # Z

    .line 193
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    .line 194
    return-void
.end method

.method public blacklist setValidityModel(I)V
    .registers 2
    .param p1, "validityModel"    # I

    .line 346
    iput p1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    .line 347
    return-void
.end method
