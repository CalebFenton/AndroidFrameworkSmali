.class Lsun/security/provider/certpath/PKIX$ValidatorParams;
.super Ljava/lang/Object;
.source "PKIX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/PKIX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValidatorParams"
.end annotation


# instance fields
.field private anchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private certPath:Ljava/security/cert/CertPath;

.field private certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private checkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private constraints:Ljava/security/cert/CertSelector;

.field private date:Ljava/util/Date;

.field private gotConstraints:Z

.field private gotDate:Z

.field private final params:Ljava/security/cert/PKIXParameters;

.field private policies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 2
    .param p1, "cp"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-direct {p0, p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;-><init>(Ljava/security/cert/PKIXParameters;)V

    #@3
    .line 94
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    const-string/jumbo v1, "X.509"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "X509"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 98
    :cond_0
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    #@1f
    .line 91
    return-void

    #@20
    .line 95
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@22
    const-string/jumbo v1, "inappropriate CertPath type specified, must be X.509 or X509"

    #@25
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0
.end method

.method constructor <init>(Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 104
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    #@9
    .line 107
    iget-object v2, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    #@b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/security/cert/TrustAnchor;

    #@1b
    .line 108
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getNameConstraints()[B

    #@1e
    move-result-object v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 109
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@23
    .line 110
    const-string/jumbo v3, "name constraints in trust anchor not supported"

    #@26
    .line 109
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 113
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_1
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@2c
    .line 102
    return-void
.end method


# virtual methods
.method anyPolicyInhibited()Z
    .locals 1

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method certPath()Ljava/security/cert/CertPath;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    #@2
    return-object v0
.end method

.method certPathCheckers()Ljava/util/List;
    .locals 1
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
    .line 140
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->checkers:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 141
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@6
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->checkers:Ljava/util/List;

    #@c
    .line 142
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->checkers:Ljava/util/List;

    #@e
    return-object v0
.end method

.method certStores()Ljava/util/List;
    .locals 1
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
    .line 145
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->stores:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 146
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@6
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->stores:Ljava/util/List;

    #@c
    .line 147
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->stores:Ljava/util/List;

    #@e
    return-object v0
.end method

.method certificates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 124
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 125
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    #@e
    .line 137
    :cond_0
    :goto_0
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    #@10
    return-object v1

    #@11
    .line 131
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    #@13
    .line 132
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    #@15
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@18
    move-result-object v1

    #@19
    .line 131
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1c
    .line 133
    .local v0, "xc":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@1f
    .line 134
    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    #@21
    goto :goto_0
.end method

.method date()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotDate:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 151
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@6
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    #@c
    .line 152
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    #@e
    if-nez v0, :cond_0

    #@10
    .line 153
    new-instance v0, Ljava/util/Date;

    #@12
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@15
    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    #@17
    .line 154
    :cond_0
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotDate:Z

    #@1a
    .line 156
    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    #@1c
    return-object v0
.end method

.method explicitPolicyRequired()Z
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getPKIXParameters()Ljava/security/cert/PKIXParameters;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@2
    return-object v0
.end method

.method initialPolicies()Ljava/util/Set;
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
    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 160
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@6
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    #@c
    .line 161
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    #@e
    return-object v0
.end method

.method policyMappingInhibited()Z
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method policyQualifiersRejected()Z
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method revocationEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method setCertPath(Ljava/security/cert/CertPath;)V
    .locals 0
    .param p1, "cp"    # Ljava/security/cert/CertPath;

    #@0
    .prologue
    .line 121
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    #@2
    .line 120
    return-void
.end method

.method sigProvider()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method targetCertConstraints()Ljava/security/cert/CertSelector;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotConstraints:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 165
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    #@6
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->constraints:Ljava/security/cert/CertSelector;

    #@c
    .line 166
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotConstraints:Z

    #@f
    .line 168
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->constraints:Ljava/security/cert/CertSelector;

    #@11
    return-object v0
.end method

.method trustAnchors()Ljava/util/Set;
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
    .line 171
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    #@2
    return-object v0
.end method
