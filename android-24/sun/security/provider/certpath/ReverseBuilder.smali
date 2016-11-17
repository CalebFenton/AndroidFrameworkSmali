.class Lsun/security/provider/certpath/ReverseBuilder;
.super Lsun/security/provider/certpath/Builder;
.source "ReverseBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;
    }
.end annotation


# instance fields
.field private debug:Lsun/security/util/Debug;

.field private final initPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V
    .locals 3
    .param p1, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@0
    .prologue
    .line 84
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/Builder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    #@3
    .line 74
    const-string/jumbo v1, "certpath"

    #@6
    invoke-static {v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@c
    .line 86
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    #@f
    move-result-object v0

    #@10
    .line 87
    .local v0, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    #@12
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@15
    iput-object v1, p0, Lsun/security/provider/certpath/ReverseBuilder;->initPolicies:Ljava/util/Set;

    #@17
    .line 88
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 91
    iget-object v1, p0, Lsun/security/provider/certpath/ReverseBuilder;->initPolicies:Ljava/util/Set;

    #@1f
    const-string/jumbo v2, "2.5.29.32.0"

    #@22
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@25
    .line 83
    :goto_0
    return-void

    #@26
    .line 93
    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/ReverseBuilder;->initPolicies:Ljava/util/Set;

    #@28
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2b
    goto :goto_0
.end method

.method private getMatchingCACerts(Lsun/security/provider/certpath/ReverseState;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .param p1, "currentState"    # Lsun/security/provider/certpath/ReverseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ReverseState;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CertStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x0

    #@2
    .line 203
    new-instance v2, Ljava/security/cert/X509CertSelector;

    #@4
    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@7
    .line 208
    .local v2, "sel":Ljava/security/cert/X509CertSelector;
    iget-object v4, p1, Lsun/security/provider/certpath/ReverseState;->subjectDN:Ljavax/security/auth/x500/X500Principal;

    #@9
    invoke-virtual {v2, v4}, Ljava/security/cert/X509CertSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V

    #@c
    .line 213
    iget-object v4, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@e
    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v2, v4}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    #@15
    .line 220
    iget-object v4, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    #@17
    invoke-virtual {v4}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    #@1a
    move-result-object v3

    #@1b
    .line 221
    .local v3, "subject":[B
    if-eqz v3, :cond_3

    #@1d
    .line 222
    invoke-virtual {v2, v6, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(I[B)V

    #@20
    .line 234
    :cond_0
    :goto_0
    iget v4, p1, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    #@22
    if-nez v4, :cond_1

    #@24
    .line 235
    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v2, v4}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    #@2b
    .line 251
    :cond_1
    invoke-virtual {v2, v5}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    #@2e
    .line 254
    new-instance v1, Ljava/util/ArrayList;

    #@30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@33
    .line 255
    .local v1, "reverseCerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x1

    #@34
    invoke-virtual {p0, v2, p2, v1, v4}, Lsun/security/provider/certpath/Builder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    #@37
    .line 258
    new-instance v4, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;

    #@39
    invoke-direct {v4, p0}, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;-><init>(Lsun/security/provider/certpath/ReverseBuilder;)V

    #@3c
    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@3f
    .line 260
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@41
    if-eqz v4, :cond_2

    #@43
    .line 261
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@45
    new-instance v5, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v6, "ReverseBuilder.getMatchingCACerts got "

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    .line 262
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@54
    move-result v6

    #@55
    .line 261
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    .line 262
    const-string/jumbo v6, " certs."

    #@5c
    .line 261
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@67
    .line 263
    :cond_2
    return-object v1

    #@68
    .line 224
    .end local v1    # "reverseCerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    :cond_3
    iget-object v4, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    #@6a
    invoke-virtual {v4}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    #@6d
    move-result-object v0

    #@6e
    .line 225
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    #@70
    .line 227
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@77
    move-result-object v4

    #@78
    .line 226
    invoke-virtual {v2, v6, v4}, Ljava/security/cert/X509CertSelector;->addPathToName(I[B)V

    #@7b
    goto :goto_0
.end method

.method private getMatchingEECerts(Lsun/security/provider/certpath/ReverseState;Ljava/util/List;)Ljava/util/Collection;
    .locals 5
    .param p1, "currentState"    # Lsun/security/provider/certpath/ReverseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/ReverseState;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    iget-object v2, p0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    #@2
    invoke-virtual {v2}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/security/cert/X509CertSelector;

    #@8
    .line 151
    .local v1, "sel":Ljava/security/cert/X509CertSelector;
    iget-object v2, p1, Lsun/security/provider/certpath/ReverseState;->subjectDN:Ljavax/security/auth/x500/X500Principal;

    #@a
    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V

    #@d
    .line 156
    iget-object v2, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@f
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    #@16
    .line 161
    iget v2, p1, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 162
    invoke-virtual {p0}, Lsun/security/provider/certpath/Builder;->getMatchingPolicies()Ljava/util/Set;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    #@21
    .line 178
    :cond_0
    const/4 v2, -0x2

    #@22
    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    #@25
    .line 181
    new-instance v0, Ljava/util/HashSet;

    #@27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@2a
    .line 182
    .local v0, "eeCerts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x1

    #@2b
    invoke-virtual {p0, v1, p2, v0, v2}, Lsun/security/provider/certpath/Builder;->addMatchingCerts(Ljava/security/cert/X509CertSelector;Ljava/util/Collection;Ljava/util/Collection;Z)Z

    #@2e
    .line 184
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@30
    if-eqz v2, :cond_1

    #@32
    .line 185
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@34
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v4, "ReverseBuilder.getMatchingEECerts got "

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    .line 186
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    #@43
    move-result v4

    #@44
    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    .line 186
    const-string/jumbo v4, " certs."

    #@4b
    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@56
    .line 188
    :cond_1
    return-object v0
.end method


# virtual methods
.method addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 540
    .local p2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@3
    .line 539
    return-void
.end method

.method getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .param p1, "currState"    # Lsun/security/provider/certpath/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    move-object v1, p1

    #@1
    .line 111
    check-cast v1, Lsun/security/provider/certpath/ReverseState;

    #@3
    .line 113
    .local v1, "currentState":Lsun/security/provider/certpath/ReverseState;
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 114
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@9
    const-string/jumbo v3, "In ReverseBuilder.getMatchingCerts."

    #@c
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@f
    .line 125
    :cond_0
    invoke-direct {p0, v1, p2}, Lsun/security/provider/certpath/ReverseBuilder;->getMatchingEECerts(Lsun/security/provider/certpath/ReverseState;Ljava/util/List;)Ljava/util/Collection;

    #@12
    move-result-object v0

    #@13
    .line 126
    .local v0, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v1, p2}, Lsun/security/provider/certpath/ReverseBuilder;->getMatchingCACerts(Lsun/security/provider/certpath/ReverseState;Ljava/util/List;)Ljava/util/Collection;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@1a
    .line 128
    return-object v0
.end method

.method isPathCompleted(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 529
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@6
    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject()Ljavax/security/auth/x500/X500Principal;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method removeFinalCertFromPath(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 549
    .local p1, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    #@3
    .line 548
    return-void
.end method

.method verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    .locals 25
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "currState"    # Lsun/security/provider/certpath/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Lsun/security/provider/certpath/State;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    .local p3, "certPathList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 347
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "ReverseBuilder.verifyCert(SN: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 348
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@19
    move-result-object v4

    #@1a
    invoke-static {v4}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    .line 349
    const-string/jumbo v4, "\n  Subject: "

    #@25
    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 349
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@2c
    move-result-object v4

    #@2d
    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 349
    const-string/jumbo v4, ")"

    #@34
    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3f
    :cond_0
    move-object/from16 v19, p2

    #@41
    .line 352
    check-cast v19, Lsun/security/provider/certpath/ReverseState;

    #@43
    .line 355
    .local v19, "currentState":Lsun/security/provider/certpath/ReverseState;
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/ReverseState;->isInitial()Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_1

    #@49
    .line 356
    return-void

    #@4a
    .line 360
    :cond_1
    move-object/from16 v0, v19

    #@4c
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;

    #@4e
    .line 361
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@51
    move-result-object v3

    #@52
    .line 360
    move-object/from16 v0, p1

    #@54
    invoke-virtual {v2, v0, v3}, Lsun/security/provider/certpath/UntrustedChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    #@57
    .line 373
    if-eqz p3, :cond_2

    #@59
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_3

    #@5f
    .line 401
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@62
    move-result-object v2

    #@63
    move-object/from16 v0, p0

    #@65
    iget-object v3, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@67
    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject()Ljavax/security/auth/x500/X500Principal;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v10

    #@6f
    .line 404
    .local v10, "finalCert":Z
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@72
    move-result v2

    #@73
    const/4 v3, -0x1

    #@74
    if-eq v2, v3, :cond_a

    #@76
    const/4 v13, 0x1

    #@77
    .line 407
    .local v13, "caCert":Z
    :goto_0
    if-nez v10, :cond_12

    #@79
    .line 410
    if-nez v13, :cond_b

    #@7b
    .line 411
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@7d
    const-string/jumbo v3, "cert is NOT a CA cert"

    #@80
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@83
    throw v2

    #@84
    .line 374
    .end local v10    # "finalCert":Z
    .end local v13    # "caCert":Z
    :cond_3
    new-instance v23, Ljava/util/ArrayList;

    #@86
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    #@89
    .line 375
    .local v23, "reverseCertList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8c
    move-result-object v12

    #@8d
    .local v12, "c$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@90
    move-result v2

    #@91
    if-eqz v2, :cond_4

    #@93
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@96
    move-result-object v11

    #@97
    check-cast v11, Ljava/security/cert/X509Certificate;

    #@99
    .line 376
    .local v11, "c":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    #@9a
    move-object/from16 v0, v23

    #@9c
    invoke-interface {v0, v2, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@9f
    goto :goto_1

    #@a0
    .line 379
    .end local v11    # "c":Ljava/security/cert/X509Certificate;
    :cond_4
    const/16 v21, 0x0

    #@a2
    .line 380
    .local v21, "policyMappingFound":Z
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a5
    move-result-object v17

    #@a6
    .local v17, "cpListCert$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@a9
    move-result v2

    #@aa
    if-eqz v2, :cond_2

    #@ac
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@af
    move-result-object v16

    #@b0
    check-cast v16, Ljava/security/cert/X509Certificate;

    #@b2
    .line 381
    .local v16, "cpListCert":Ljava/security/cert/X509Certificate;
    invoke-static/range {v16 .. v16}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@b5
    move-result-object v18

    #@b6
    .line 383
    .local v18, "cpListCertImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;

    #@b9
    move-result-object v22

    #@ba
    .line 384
    .local v22, "policyMappingsExt":Lsun/security/x509/PolicyMappingsExtension;
    if-eqz v22, :cond_6

    #@bc
    .line 385
    const/16 v21, 0x1

    #@be
    .line 387
    :cond_6
    move-object/from16 v0, p0

    #@c0
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@c2
    if-eqz v2, :cond_7

    #@c4
    .line 388
    move-object/from16 v0, p0

    #@c6
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@c8
    new-instance v3, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const-string/jumbo v4, "policyMappingFound = "

    #@d0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v3

    #@d4
    move/from16 v0, v21

    #@d6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v3

    #@da
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@e1
    .line 389
    :cond_7
    move-object/from16 v0, p1

    #@e3
    move-object/from16 v1, v16

    #@e5
    invoke-virtual {v0, v1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    #@e8
    move-result v2

    #@e9
    if-eqz v2, :cond_5

    #@eb
    .line 390
    move-object/from16 v0, p0

    #@ed
    iget-object v2, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@ef
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    #@f2
    move-result v2

    #@f3
    if-nez v2, :cond_8

    #@f5
    .line 391
    if-nez v21, :cond_5

    #@f7
    .line 392
    :cond_8
    move-object/from16 v0, p0

    #@f9
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@fb
    if-eqz v2, :cond_9

    #@fd
    .line 393
    move-object/from16 v0, p0

    #@ff
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseBuilder;->debug:Lsun/security/util/Debug;

    #@101
    const-string/jumbo v3, "loop detected!!"

    #@104
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@107
    .line 394
    :cond_9
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@109
    const-string/jumbo v3, "loop detected"

    #@10c
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@10f
    throw v2

    #@110
    .line 404
    .end local v12    # "c$iterator":Ljava/util/Iterator;
    .end local v16    # "cpListCert":Ljava/security/cert/X509Certificate;
    .end local v17    # "cpListCert$iterator":Ljava/util/Iterator;
    .end local v18    # "cpListCertImpl":Lsun/security/x509/X509CertImpl;
    .end local v21    # "policyMappingFound":Z
    .end local v22    # "policyMappingsExt":Lsun/security/x509/PolicyMappingsExtension;
    .end local v23    # "reverseCertList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v10    # "finalCert":Z
    :cond_a
    const/4 v13, 0x0

    #@111
    .restart local v13    # "caCert":Z
    goto/16 :goto_0

    #@113
    .line 416
    :cond_b
    move-object/from16 v0, v19

    #@115
    iget v2, v0, Lsun/security/provider/certpath/ReverseState;->remainingCACerts:I

    #@117
    if-gtz v2, :cond_c

    #@119
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@11c
    move-result v2

    #@11d
    if-eqz v2, :cond_11

    #@11f
    .line 425
    :cond_c
    invoke-static/range {p1 .. p1}, Lsun/security/provider/certpath/KeyChecker;->verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V

    #@122
    .line 442
    :cond_d
    move-object/from16 v0, p0

    #@124
    iget-object v2, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@126
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->revocationEnabled()Z

    #@129
    move-result v2

    #@12a
    if-eqz v2, :cond_e

    #@12c
    move-object/from16 v0, v19

    #@12e
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->revChecker:Lsun/security/provider/certpath/RevocationChecker;

    #@130
    if-eqz v2, :cond_e

    #@132
    .line 443
    move-object/from16 v0, v19

    #@134
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->revChecker:Lsun/security/provider/certpath/RevocationChecker;

    #@136
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@139
    move-result-object v3

    #@13a
    move-object/from16 v0, p1

    #@13c
    invoke-virtual {v2, v0, v3}, Lsun/security/provider/certpath/RevocationChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    #@13f
    .line 447
    :cond_e
    if-nez v10, :cond_13

    #@141
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@144
    move-result v2

    #@145
    if-eqz v2, :cond_13

    #@147
    .line 464
    :cond_f
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@14a
    move-result-object v9

    #@14b
    .line 466
    .local v9, "certImpl":Lsun/security/x509/X509CertImpl;
    move-object/from16 v0, v19

    #@14d
    iget v2, v0, Lsun/security/provider/certpath/ReverseState;->certIndex:I

    #@14f
    move-object/from16 v0, p0

    #@151
    iget-object v3, v0, Lsun/security/provider/certpath/ReverseBuilder;->initPolicies:Ljava/util/Set;

    #@153
    .line 467
    move-object/from16 v0, v19

    #@155
    iget v4, v0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    #@157
    move-object/from16 v0, v19

    #@159
    iget v5, v0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    #@15b
    .line 468
    move-object/from16 v0, v19

    #@15d
    iget v6, v0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    #@15f
    .line 469
    move-object/from16 v0, p0

    #@161
    iget-object v7, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@163
    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyQualifiersRejected()Z

    #@166
    move-result v7

    #@167
    move-object/from16 v0, v19

    #@169
    iget-object v8, v0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@16b
    .line 465
    invoke-static/range {v2 .. v10}, Lsun/security/provider/certpath/PolicyChecker;->processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;

    #@16e
    move-result-object v2

    #@16f
    move-object/from16 v0, v19

    #@171
    iput-object v2, v0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@173
    .line 475
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@176
    move-result-object v24

    #@177
    .line 476
    .local v24, "unresolvedCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v24, :cond_10

    #@179
    .line 477
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@17c
    move-result-object v24

    #@17d
    .line 483
    :cond_10
    move-object/from16 v0, v19

    #@17f
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->algorithmChecker:Lsun/security/provider/certpath/AlgorithmChecker;

    #@181
    move-object/from16 v0, p1

    #@183
    move-object/from16 v1, v24

    #@185
    invoke-virtual {v2, v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    #@188
    .line 485
    move-object/from16 v0, v19

    #@18a
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    #@18c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18f
    move-result-object v15

    #@190
    .local v15, "checker$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@193
    move-result v2

    #@194
    if-eqz v2, :cond_14

    #@196
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@199
    move-result-object v14

    #@19a
    check-cast v14, Ljava/security/cert/PKIXCertPathChecker;

    #@19c
    .line 486
    .local v14, "checker":Ljava/security/cert/PKIXCertPathChecker;
    move-object/from16 v0, p1

    #@19e
    move-object/from16 v1, v24

    #@1a0
    invoke-virtual {v14, v0, v1}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    #@1a3
    goto :goto_2

    #@1a4
    .line 417
    .end local v9    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v14    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v15    # "checker$iterator":Ljava/util/Iterator;
    .end local v24    # "unresolvedCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@1a6
    .line 418
    const-string/jumbo v3, "pathLenConstraint violated, path too long"

    #@1a9
    .line 419
    sget-object v7, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    #@1ab
    .line 418
    const/4 v4, 0x0

    #@1ac
    .line 419
    const/4 v5, 0x0

    #@1ad
    const/4 v6, -0x1

    #@1ae
    .line 417
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@1b1
    throw v2

    #@1b2
    .line 433
    :cond_12
    move-object/from16 v0, p0

    #@1b4
    iget-object v2, v0, Lsun/security/provider/certpath/Builder;->targetCertConstraints:Ljava/security/cert/X509CertSelector;

    #@1b6
    move-object/from16 v0, p1

    #@1b8
    invoke-virtual {v2, v0}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@1bb
    move-result v2

    #@1bc
    if-nez v2, :cond_d

    #@1be
    .line 434
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@1c0
    const-string/jumbo v3, "target certificate constraints check failed"

    #@1c3
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@1c6
    throw v2

    #@1c7
    .line 448
    :cond_13
    move-object/from16 v0, v19

    #@1c9
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@1cb
    if-eqz v2, :cond_f

    #@1cd
    .line 450
    :try_start_0
    move-object/from16 v0, v19

    #@1cf
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@1d1
    move-object/from16 v0, p1

    #@1d3
    invoke-virtual {v2, v0}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    #@1d6
    move-result v2

    #@1d7
    if-nez v2, :cond_f

    #@1d9
    .line 451
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@1db
    .line 452
    const-string/jumbo v3, "name constraints check failed"

    #@1de
    .line 453
    sget-object v7, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    #@1e0
    .line 452
    const/4 v4, 0x0

    #@1e1
    const/4 v5, 0x0

    #@1e2
    const/4 v6, -0x1

    #@1e3
    .line 451
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@1e6
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e7
    .line 455
    :catch_0
    move-exception v20

    #@1e8
    .line 456
    .local v20, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@1ea
    move-object/from16 v0, v20

    #@1ec
    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@1ef
    throw v2

    #@1f0
    .line 493
    .end local v20    # "ioe":Ljava/io/IOException;
    .restart local v9    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v15    # "checker$iterator":Ljava/util/Iterator;
    .restart local v24    # "unresolvedCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    #@1f3
    move-result v2

    #@1f4
    if-nez v2, :cond_15

    #@1f6
    .line 494
    sget-object v2, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@1f8
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v2

    #@1fc
    move-object/from16 v0, v24

    #@1fe
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@201
    .line 495
    sget-object v2, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@203
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@206
    move-result-object v2

    #@207
    move-object/from16 v0, v24

    #@209
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@20c
    .line 496
    sget-object v2, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    #@20e
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@211
    move-result-object v2

    #@212
    move-object/from16 v0, v24

    #@214
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@217
    .line 497
    sget-object v2, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    #@219
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@21c
    move-result-object v2

    #@21d
    move-object/from16 v0, v24

    #@21f
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@222
    .line 498
    sget-object v2, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@224
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@227
    move-result-object v2

    #@228
    move-object/from16 v0, v24

    #@22a
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@22d
    .line 499
    sget-object v2, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    #@22f
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@232
    move-result-object v2

    #@233
    move-object/from16 v0, v24

    #@235
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@238
    .line 500
    sget-object v2, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@23a
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@23d
    move-result-object v2

    #@23e
    move-object/from16 v0, v24

    #@240
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@243
    .line 501
    sget-object v2, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@245
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@248
    move-result-object v2

    #@249
    move-object/from16 v0, v24

    #@24b
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@24e
    .line 502
    sget-object v2, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@250
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@253
    move-result-object v2

    #@254
    move-object/from16 v0, v24

    #@256
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@259
    .line 504
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    #@25c
    move-result v2

    #@25d
    if-nez v2, :cond_15

    #@25f
    .line 505
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@261
    .line 506
    const-string/jumbo v3, "Unrecognized critical extension(s)"

    #@264
    .line 507
    sget-object v7, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    #@266
    .line 506
    const/4 v4, 0x0

    #@267
    const/4 v5, 0x0

    #@268
    const/4 v6, -0x1

    #@269
    .line 505
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@26c
    throw v2

    #@26d
    .line 513
    :cond_15
    move-object/from16 v0, p0

    #@26f
    iget-object v2, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@271
    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@274
    move-result-object v2

    #@275
    if-eqz v2, :cond_16

    #@277
    .line 514
    move-object/from16 v0, v19

    #@279
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    #@27b
    move-object/from16 v0, p0

    #@27d
    iget-object v3, v0, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@27f
    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    #@282
    move-result-object v3

    #@283
    move-object/from16 v0, p1

    #@285
    invoke-virtual {v0, v2, v3}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    #@288
    .line 344
    :goto_3
    return-void

    #@289
    .line 516
    :cond_16
    move-object/from16 v0, v19

    #@28b
    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    #@28d
    move-object/from16 v0, p1

    #@28f
    invoke-virtual {v0, v2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    #@292
    goto :goto_3
.end method
