.class public Lsun/security/provider/certpath/SunCertPathBuilderParameters;
.super Ljava/security/cert/PKIXBuilderParameters;
.source "SunCertPathBuilderParameters.java"


# instance fields
.field private buildForward:Z


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V
    .locals 1
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "targetConstraints"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V

    #@4
    .line 51
    iput-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->buildForward:Z

    #@6
    .line 93
    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->setBuildForward(Z)V

    #@9
    .line 90
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
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v0, 0x1

    #@1
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V

    #@4
    .line 51
    iput-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->buildForward:Z

    #@6
    .line 71
    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->setBuildForward(Z)V

    #@9
    .line 68
    return-void
.end method


# virtual methods
.method public getBuildForward()Z
    .locals 1

    #@0
    .prologue
    .line 102
    iget-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->buildForward:Z

    #@2
    return v0
.end method

.method public setBuildForward(Z)V
    .locals 0
    .param p1, "buildForward"    # Z

    #@0
    .prologue
    .line 114
    iput-boolean p1, p0, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->buildForward:Z

    #@2
    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[\n"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 126
    invoke-super {p0}, Ljava/security/cert/PKIXBuilderParameters;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 127
    const-string/jumbo v1, "  Build Forward Flag: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-boolean v2, p0, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->buildForward:Z

    #@1b
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, "\n"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 128
    const-string/jumbo v1, "]\n"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1
.end method
