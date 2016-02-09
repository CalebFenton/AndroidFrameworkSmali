.class public Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
.super Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
.source "ExtendedPKIXBuilderParameters.java"


# instance fields
.field private excludedCerts:Ljava/util/Set;

.field private maxPathLength:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/android/org/bouncycastle/util/Selector;)V
    .locals 1
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "targetConstraints"    # Lcom/android/org/bouncycastle/util/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V

    #@3
    .line 25
    const/4 v0, 0x5

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    #@6
    .line 27
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    #@a
    .line 88
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setTargetConstraints(Lcom/android/org/bouncycastle/util/Selector;)V

    #@d
    .line 85
    return-void
.end method

.method public static getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .locals 4
    .param p0, "pkixParams"    # Ljava/security/cert/PKIXParameters;

    #@0
    .prologue
    .line 198
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    #@2
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    #@5
    move-result-object v3

    #@6
    .line 200
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Ljava/security/cert/X509CertSelector;

    #@c
    .line 199
    invoke-static {v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    #@f
    move-result-object v2

    #@10
    .line 198
    invoke-direct {v1, v3, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lcom/android/org/bouncycastle/util/Selector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 208
    .local v1, "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    #@16
    .line 209
    return-object v1

    #@17
    .line 204
    .end local v1    # "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :catch_0
    move-exception v0

    #@18
    .line 206
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 167
    const/4 v1, 0x0

    #@1
    .line 170
    .local v1, "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    #@3
    .end local v1    # "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    #@6
    move-result-object v2

    #@7
    .line 171
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;

    #@a
    move-result-object v3

    #@b
    .line 170
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lcom/android/org/bouncycastle/util/Selector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 178
    .local v1, "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    #@11
    .line 179
    return-object v1

    #@12
    .line 174
    .end local v1    # "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :catch_0
    move-exception v0

    #@13
    .line 176
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2
.end method

.method public getExcludedCerts()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMaxPathLength()I
    .locals 1

    #@0
    .prologue
    .line 133
    iget v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    #@2
    return v0
.end method

.method public setExcludedCerts(Ljava/util/Set;)V
    .locals 1
    .param p1, "excludedCerts"    # Ljava/util/Set;

    #@0
    .prologue
    .line 52
    if-nez p1, :cond_0

    #@2
    .line 54
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@4
    .line 50
    :goto_0
    return-void

    #@5
    .line 58
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    #@7
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    #@c
    goto :goto_0
.end method

.method public setMaxPathLength(I)V
    .locals 2
    .param p1, "maxPathLength"    # I

    #@0
    .prologue
    .line 114
    const/4 v0, -0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 116
    new-instance v0, Ljava/security/InvalidParameterException;

    #@5
    const-string/jumbo v1, "The maximum path length parameter can not be less than -1."

    #@8
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 119
    :cond_0
    iput p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    #@e
    .line 112
    return-void
.end method

.method protected setParams(Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;

    #@0
    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    #@3
    .line 146
    instance-of v2, p1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    #@5
    if-eqz v2, :cond_0

    #@7
    move-object v0, p1

    #@8
    .line 148
    check-cast v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    #@a
    .line 149
    .local v0, "_params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    iget v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    #@c
    iput v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    #@e
    .line 150
    new-instance v2, Ljava/util/HashSet;

    #@10
    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    #@12
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@15
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    #@17
    .line 152
    .end local v0    # "_params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :cond_0
    instance-of v2, p1, Ljava/security/cert/PKIXBuilderParameters;

    #@19
    if-eqz v2, :cond_1

    #@1b
    move-object v1, p1

    #@1c
    .line 154
    check-cast v1, Ljava/security/cert/PKIXBuilderParameters;

    #@1e
    .line 155
    .local v1, "_params":Ljava/security/cert/PKIXBuilderParameters;
    invoke-virtual {v1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    #@21
    move-result v2

    #@22
    iput v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    #@24
    .line 143
    .end local v1    # "_params":Ljava/security/cert/PKIXBuilderParameters;
    :cond_1
    return-void
.end method
