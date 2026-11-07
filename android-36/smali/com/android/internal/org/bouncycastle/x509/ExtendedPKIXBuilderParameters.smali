.class public Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
.super Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
.source "ExtendedPKIXBuilderParameters.java"


# instance fields
.field private blacklist excludedCerts:Ljava/util/Set;

.field private blacklist maxPathLength:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/util/Selector;)V
    .registers 4
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "targetConstraints"    # Lcom/android/internal/org/bouncycastle/util/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V

    .line 27
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 29
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setTargetConstraints(Lcom/android/internal/org/bouncycastle/util/Selector;)V

    .line 91
    return-void
.end method

.method public static blacklist getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    .registers 4
    .param p0, "pkixParams"    # Ljava/security/cert/PKIXParameters;

    .line 200
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 201
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CertSelector;

    .line 202
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/util/Selector;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_18

    .line 209
    .local v0, "params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    nop

    .line 210
    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 211
    return-object v0

    .line 205
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :catch_18
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 169
    const/4 v0, 0x0

    .line 172
    .local v0, "params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :try_start_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/util/Selector;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/util/Selector;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_13

    .line 179
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .local v1, "params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    nop

    .line 180
    invoke-virtual {v1, p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 181
    return-object v1

    .line 175
    .end local v1    # "params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .restart local v0    # "params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :catch_13
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getExcludedCerts()Ljava/util/Set;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMaxPathLength()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    return v0
.end method

.method public blacklist setExcludedCerts(Ljava/util/Set;)V
    .registers 3
    .param p1, "excludedCerts"    # Ljava/util/Set;

    .line 54
    if-nez p1, :cond_5

    .line 56
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_c

    .line 60
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 62
    :goto_c
    return-void
.end method

.method public blacklist setMaxPathLength(I)V
    .registers 4
    .param p1, "maxPathLength"    # I

    .line 116
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    .line 121
    iput p1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 122
    return-void

    .line 118
    :cond_6
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The maximum path length parameter can not be less than -1."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist setParams(Ljava/security/cert/PKIXParameters;)V
    .registers 5
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;

    .line 147
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 148
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v0, :cond_17

    .line 150
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 151
    .local v0, "_params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    iget v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 152
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 154
    .end local v0    # "_params":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :cond_17
    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_24

    .line 156
    move-object v0, p1

    check-cast v0, Ljava/security/cert/PKIXBuilderParameters;

    .line 157
    .local v0, "_params":Ljava/security/cert/PKIXBuilderParameters;
    invoke-virtual {v0}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 159
    .end local v0    # "_params":Ljava/security/cert/PKIXBuilderParameters;
    :cond_24
    return-void
.end method
