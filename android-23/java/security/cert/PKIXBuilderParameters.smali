.class public Ljava/security/cert/PKIXBuilderParameters;
.super Ljava/security/cert/PKIXParameters;
.source "PKIXBuilderParameters.java"


# instance fields
.field private maxPathLength:I


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "targetConstraints"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    #@3
    .line 39
    const/4 v0, 0x5

    #@4
    iput v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    #@6
    .line 81
    invoke-super {p0, p2}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    #@9
    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    .locals 1
    .param p2, "targetConstraints"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
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

    #@0
    .prologue
    .line 58
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    #@3
    .line 39
    const/4 v0, 0x5

    #@4
    iput v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    #@6
    .line 59
    invoke-super {p0, p2}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    #@9
    .line 57
    return-void
.end method


# virtual methods
.method public getMaxPathLength()I
    .locals 1

    #@0
    .prologue
    .line 94
    iget v0, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    #@2
    return v0
.end method

.method public setMaxPathLength(I)V
    .locals 2
    .param p1, "maxPathLength"    # I

    #@0
    .prologue
    .line 109
    const/4 v0, -0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 110
    new-instance v0, Ljava/security/InvalidParameterException;

    #@5
    const-string/jumbo v1, "maxPathLength < -1"

    #@8
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 112
    :cond_0
    iput p1, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    #@e
    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "[\n"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 124
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/security/cert/PKIXParameters;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 125
    const-string/jumbo v1, " Max Path Length: "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 126
    iget v1, p0, Ljava/security/cert/PKIXBuilderParameters;->maxPathLength:I

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    .line 127
    const-string/jumbo v1, "\n]"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method
