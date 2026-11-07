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
.field private blacklist params:Ljava/security/cert/PKIXBuilderParameters;

.field private blacklist stores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist targetSubject:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method constructor blacklist <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .registers 2
    .param p1, "params"    # Ljava/security/cert/PKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 203
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->checkParams(Ljava/security/cert/PKIXBuilderParameters;)V

    .line 204
    return-void
.end method

.method private blacklist checkParams(Ljava/security/cert/PKIXBuilderParameters;)V
    .registers 5
    .param p1, "params"    # Ljava/security/cert/PKIXBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    .line 209
    .local v0, "sel":Ljava/security/cert/CertSelector;
    instance-of v1, v0, Ljava/security/cert/X509CertSelector;

    if-eqz v1, :cond_1c

    .line 214
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    .line 215
    nop

    .line 216
    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certStores()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CertSelector;

    .line 215
    invoke-static {v1, v2}, Lsun/security/provider/certpath/PKIX$BuilderParams;->getTargetSubject(Ljava/util/List;Ljava/security/cert/X509CertSelector;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject:Ljavax/security/auth/x500/X500Principal;

    .line 217
    return-void

    .line 210
    :cond_1c
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "the targetCertConstraints parameter must be an X509CertSelector"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getTargetSubject(Ljava/util/List;Ljava/security/cert/X509CertSelector;)Ljavax/security/auth/x500/X500Principal;
    .registers 10
    .param p1, "sel"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 238
    .local p0, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 239
    .local v0, "subject":Ljavax/security/auth/x500/X500Principal;
    if-eqz v0, :cond_7

    .line 240
    return-object v0

    .line 242
    :cond_7
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 243
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_11

    .line 244
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 246
    :cond_11
    if-eqz v0, :cond_14

    .line 247
    return-object v0

    .line 249
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertStore;

    .line 251
    .local v3, "store":Ljava/security/cert/CertStore;
    nop

    .line 253
    :try_start_25
    invoke-virtual {v3, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v4

    .line 254
    .local v4, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3f

    .line 255
    nop

    .line 256
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 257
    .local v5, "xc":Ljava/security/cert/X509Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2
    :try_end_3e
    .catch Ljava/security/cert/CertStoreException; {:try_start_25 .. :try_end_3e} :catch_40

    return-object v2

    .line 266
    .end local v4    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    .end local v5    # "xc":Ljava/security/cert/X509Certificate;
    :cond_3f
    goto :goto_64

    .line 259
    :catch_40
    move-exception v4

    .line 261
    .local v4, "e":Ljava/security/cert/CertStoreException;
    invoke-static {}, Lsun/security/provider/certpath/PKIX;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v5

    if-eqz v5, :cond_64

    .line 262
    invoke-static {}, Lsun/security/provider/certpath/PKIX;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BuilderParams.getTargetSubjectDN: non-fatal exception retrieving certs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v4}, Ljava/security/cert/CertStoreException;->printStackTrace()V

    .line 267
    .end local v3    # "store":Ljava/security/cert/CertStore;
    .end local v4    # "e":Ljava/security/cert/CertStoreException;
    :cond_64
    :goto_64
    goto :goto_18

    .line 268
    :cond_65
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Could not determine unique target subject"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method blacklist certStores()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    if-nez v0, :cond_1c

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    .line 222
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    new-instance v1, Lsun/security/provider/certpath/PKIX$CertStoreComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lsun/security/provider/certpath/PKIX$CertStoreComparator;-><init>(Lsun/security/provider/certpath/PKIX-IA;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 224
    :cond_1c
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->stores:Ljava/util/List;

    return-object v0
.end method

.method blacklist maxPathLength()I
    .registers 2

    .line 226
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v0

    return v0
.end method

.method blacklist params()Ljava/security/cert/PKIXBuilderParameters;
    .registers 2

    .line 227
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->params:Ljava/security/cert/PKIXBuilderParameters;

    return-object v0
.end method

.method blacklist targetSubject()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 228
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method
