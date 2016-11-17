.class Lsun/security/provider/certpath/PKIX$BuilderParams;
.super Lsun/security/provider/certpath/PKIX$ValidatorParams;
.source "PKIX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/PKIX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderParams"
.end annotation


# instance fields
.field private buildForward:Z

.field private params:Ljava/security/cert/PKIXBuilderParameters;

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

.field private targetSubject:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 1
    .param p1, "params"    # Ljava/security/cert/PKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;-><init>(Ljava/security/cert/PKIXParameters;)V

    #@3
    .line 197
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->buildForward:Z

    #@6
    .line 205
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->checkParams(Ljava/security/cert/PKIXBuilderParameters;)V

    #@9
    .line 202
    return-void
.end method

.method private checkParams(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 3
    .param p1, "params"    # Ljava/security/cert/PKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    #@3
    move-result-object v0

    #@4
    .line 211
    .local v0, "sel":Ljava/security/cert/CertSelector;
    instance-of v1, v0, Ljava/security/cert/X509CertSelector;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 212
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@a
    const-string/jumbo v2, "the targetCertConstraints parameter must be an X509CertSelector"

    #@d
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 216
    :cond_0
    instance-of v1, p1, Lsun/security/provider/certpath/SunCertPathBuilderParameters;

    #@13
    if-eqz v1, :cond_1

    #@15
    move-object v1, p1

    #@16
    .line 218
    nop

    #@17
    nop

    #@18
    invoke-virtual {v1}, Lsun/security/provider/certpath/SunCertPathBuilderParameters;->getBuildForward()Z

    #@1b
    move-result v1

    #@1c
    .line 217
    iput-boolean v1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->buildForward:Z

    #@1e
    .line 220
    :cond_1
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    #@20
    .line 222
    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certStores()Ljava/util/List;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Ljava/security/cert/X509CertSelector;

    #@2a
    .line 221
    invoke-static {v2, v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->getTargetSubject(Ljava/util/List;Ljava/security/cert/X509CertSelector;)Ljavax/security/auth/x500/X500Principal;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject:Ljavax/security/auth/x500/X500Principal;

    #@30
    .line 208
    return-void
.end method

.method private static getTargetSubject(Ljava/util/List;Ljava/security/cert/X509CertSelector;)Ljavax/security/auth/x500/X500Principal;
    .locals 10
    .param p1, "sel"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/security/cert/X509CertSelector;",
            ")",
            "Ljavax/security/auth/x500/X500Principal;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    .local p0, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v5

    #@4
    .line 246
    .local v5, "subject":Ljavax/security/auth/x500/X500Principal;
    if-eqz v5, :cond_0

    #@6
    .line 247
    return-object v5

    #@7
    .line 249
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    #@a
    move-result-object v0

    #@b
    .line 250
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_1

    #@d
    .line 251
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@10
    move-result-object v5

    #@11
    .line 253
    :cond_1
    if-eqz v5, :cond_2

    #@13
    .line 254
    return-object v5

    #@14
    .line 256
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v4

    #@18
    .local v4, "store$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_4

    #@1e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/security/cert/CertStore;

    #@24
    .line 260
    .local v3, "store":Ljava/security/cert/CertStore;
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    #@27
    move-result-object v1

    #@28
    .line 261
    .local v1, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    #@2b
    move-result v7

    #@2c
    if-nez v7, :cond_3

    #@2e
    .line 263
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v7

    #@32
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v6

    #@36
    check-cast v6, Ljava/security/cert/X509Certificate;

    #@38
    .line 264
    .local v6, "xc":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result-object v7

    #@3c
    return-object v7

    #@3d
    .line 266
    .end local v1    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    .end local v6    # "xc":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v2

    #@3e
    .line 268
    .local v2, "e":Ljava/security/cert/CertStoreException;
    invoke-static {}, Lsun/security/provider/certpath/PKIX;->-get0()Lsun/security/util/Debug;

    #@41
    move-result-object v7

    #@42
    if-eqz v7, :cond_3

    #@44
    .line 269
    invoke-static {}, Lsun/security/provider/certpath/PKIX;->-get0()Lsun/security/util/Debug;

    #@47
    move-result-object v7

    #@48
    new-instance v8, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v9, "BuilderParams.getTargetSubjectDN: non-fatal exception retrieving certs: "

    #@50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@5f
    .line 271
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    #@62
    goto :goto_0

    #@63
    .line 275
    .end local v2    # "e":Ljava/security/cert/CertStoreException;
    .end local v3    # "store":Ljava/security/cert/CertStore;
    :cond_4
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    #@65
    .line 276
    const-string/jumbo v8, "Could not determine unique target subject"

    #@68
    .line 275
    invoke-direct {v7, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v7
.end method


# virtual methods
.method buildForward()Z
    .locals 1

    #@0
    .prologue
    .line 233
    iget-boolean v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->buildForward:Z

    #@2
    return v0
.end method

.method certStores()Ljava/util/List;
    .locals 3
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
    const/4 v2, 0x0

    #@1
    .line 225
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 227
    new-instance v0, Ljava/util/ArrayList;

    #@7
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    #@9
    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    #@12
    .line 228
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    #@14
    new-instance v1, Lsun/security/provider/certpath/PKIX$CertStoreComparator;

    #@16
    invoke-direct {v1, v2}, Lsun/security/provider/certpath/PKIX$CertStoreComparator;-><init>(Lsun/security/provider/certpath/PKIX$CertStoreComparator;)V

    #@19
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@1c
    .line 230
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    #@1e
    return-object v0
.end method

.method maxPathLength()I
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    #@2
    invoke-virtual {v0}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method params()Ljava/security/cert/PKIXBuilderParameters;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    #@2
    return-object v0
.end method

.method targetSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method
