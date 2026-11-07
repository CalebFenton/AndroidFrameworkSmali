.class public Ljava/security/cert/PKIXBuilderParameters;
.super Ljava/security/cert/PKIXParameters;
.source "PKIXBuilderParameters.java"


# instance fields
.field private greylist-max-o maxPathLength:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V
    .registers 4
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "targetConstraints"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    .line 80
    const/4 v0, 0x5

    iput v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    .line 131
    invoke-virtual {p0, p2}, Ljava/security/cert/PKIXBuilderParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 132
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    .registers 4
    .param p2, "targetConstraints"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/security/cert/CertSelector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 104
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 80
    const/4 v0, 0x5

    iput v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    .line 105
    invoke-virtual {p0, p2}, Ljava/security/cert/PKIXBuilderParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 106
    return-void
.end method


# virtual methods
.method public whitelist test-api getMaxPathLength()I
    .registers 2

    .line 183
    iget v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    return v0
.end method

.method public whitelist test-api setMaxPathLength(I)V
    .registers 4
    .param p1, "maxPathLength"    # I

    .line 165
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    .line 169
    iput p1, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    .line 170
    return-void

    .line 166
    :cond_6
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "the maximum path length parameter can not be less than -1"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-super {p0}, Ljava/security/cert/PKIXParameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Maximum Path Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
