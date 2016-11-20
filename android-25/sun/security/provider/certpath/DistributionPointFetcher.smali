.class public Lsun/security/provider/certpath/DistributionPointFetcher;
.super Ljava/lang/Object;
.source "DistributionPointFetcher.java"


# static fields
.field private static final ALL_REASONS:[Z

.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 55
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@9
    .line 58
    const/16 v0, 0x9

    #@b
    new-array v0, v0, [Z

    #@d
    fill-array-data v0, :array_0

    #@10
    .line 57
    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    #@12
    .line 53
    return-void

    #@13
    .line 58
    nop

    #@14
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;
    .locals 8
    .param p0, "name"    # Lsun/security/x509/URIName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 230
    invoke-virtual {p0}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    #@4
    move-result-object v3

    #@5
    .line 231
    .local v3, "uri":Ljava/net/URI;
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 232
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@b
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "Trying to fetch CRL from DP "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@22
    .line 234
    :cond_0
    const/4 v2, 0x0

    #@23
    .line 237
    .local v2, "ucs":Ljava/security/cert/CertStore;
    :try_start_0
    new-instance v4, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    #@25
    invoke-direct {v4, v3}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;-><init>(Ljava/net/URI;)V

    #@28
    .line 236
    invoke-static {v4}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v2

    #@2c
    .line 246
    .local v2, "ucs":Ljava/security/cert/CertStore;
    invoke-virtual {v2, v7}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    #@2f
    move-result-object v0

    #@30
    .line 247
    .local v0, "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_2

    #@36
    .line 248
    return-object v7

    #@37
    .line 239
    .end local v0    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    .local v2, "ucs":Ljava/security/cert/CertStore;
    :catch_0
    move-exception v1

    #@38
    .line 240
    .local v1, "e":Ljava/security/GeneralSecurityException;
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@3a
    if-eqz v4, :cond_1

    #@3c
    .line 241
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@3e
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v6, "Can\'t create URICertStore: "

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@59
    .line 243
    :cond_1
    return-object v7

    #@5a
    .line 250
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .restart local v0    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    .local v2, "ucs":Ljava/security/cert/CertStore;
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@5d
    move-result-object v4

    #@5e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v4

    #@62
    check-cast v4, Ljava/security/cert/X509CRL;

    #@64
    return-object v4
.end method

.method private static getCRLs(Ljava/security/cert/X509CRLSelector;Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .locals 27
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "certImpl"    # Lsun/security/x509/X509CertImpl;
    .param p2, "point"    # Lsun/security/x509/DistributionPoint;
    .param p3, "reasonsMask"    # [Z
    .param p4, "signFlag"    # Z
    .param p5, "prevKey"    # Ljava/security/PublicKey;
    .param p6, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p7, "provider"    # Ljava/lang/String;
    .param p10, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Lsun/security/x509/X509CertImpl;",
            "Lsun/security/x509/DistributionPoint;",
            "[ZZ",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    .local p8, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p9, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    #@3
    move-result-object v18

    #@4
    .line 154
    .local v18, "fullName":Lsun/security/x509/GeneralNames;
    if-nez v18, :cond_1

    #@6
    .line 156
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    #@9
    move-result-object v22

    #@a
    .line 157
    .local v22, "relativeName":Lsun/security/x509/RDN;
    if-nez v22, :cond_0

    #@c
    .line 158
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 161
    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    #@14
    move-result-object v14

    #@15
    .line 162
    .local v14, "crlIssuers":Lsun/security/x509/GeneralNames;
    if-nez v14, :cond_3

    #@17
    .line 164
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Lsun/security/x509/X500Name;

    #@1d
    .line 163
    move-object/from16 v0, v22

    #@1f
    invoke-static {v2, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@22
    move-result-object v18

    #@23
    .line 178
    .end local v14    # "crlIssuers":Lsun/security/x509/GeneralNames;
    .end local v22    # "relativeName":Lsun/security/x509/RDN;
    :cond_1
    :goto_0
    new-instance v21, Ljava/util/ArrayList;

    #@25
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    #@28
    .line 179
    .local v21, "possibleCRLs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    const/16 v23, 0x0

    #@2a
    .line 180
    .local v23, "savedCSE":Ljava/security/cert/CertStoreException;
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v24

    #@2e
    .end local v23    # "savedCSE":Ljava/security/cert/CertStoreException;
    .local v24, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_2
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_6

    #@34
    .line 182
    :try_start_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v20

    #@38
    check-cast v20, Lsun/security/x509/GeneralName;

    #@3a
    .line 183
    .local v20, "name":Lsun/security/x509/GeneralName;
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getType()I

    #@3d
    move-result v2

    #@3e
    const/4 v3, 0x4

    #@3f
    if-ne v2, v3, :cond_5

    #@41
    .line 184
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@44
    move-result-object v26

    #@45
    check-cast v26, Lsun/security/x509/X500Name;

    #@47
    .line 186
    .local v26, "x500Name":Lsun/security/x509/X500Name;
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@4a
    move-result-object v2

    #@4b
    move-object/from16 v0, v26

    #@4d
    move-object/from16 v1, p8

    #@4f
    invoke-static {v0, v2, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;

    #@52
    move-result-object v2

    #@53
    .line 185
    move-object/from16 v0, v21

    #@55
    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_0

    #@58
    goto :goto_1

    #@59
    .line 195
    .end local v20    # "name":Lsun/security/x509/GeneralName;
    .end local v26    # "x500Name":Lsun/security/x509/X500Name;
    :catch_0
    move-exception v16

    #@5a
    .line 196
    .local v16, "cse":Ljava/security/cert/CertStoreException;
    move-object/from16 v23, v16

    #@5c
    .local v23, "savedCSE":Ljava/security/cert/CertStoreException;
    goto :goto_1

    #@5d
    .line 167
    .end local v16    # "cse":Ljava/security/cert/CertStoreException;
    .end local v21    # "possibleCRLs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    .end local v23    # "savedCSE":Ljava/security/cert/CertStoreException;
    .end local v24    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v14    # "crlIssuers":Lsun/security/x509/GeneralNames;
    .restart local v22    # "relativeName":Lsun/security/x509/RDN;
    :cond_3
    :try_start_2
    invoke-virtual {v14}, Lsun/security/x509/GeneralNames;->size()I

    #@60
    move-result v2

    #@61
    const/4 v3, 0x1

    #@62
    if-eq v2, v3, :cond_4

    #@64
    .line 168
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@67
    move-result-object v2

    #@68
    return-object v2

    #@69
    .line 171
    :cond_4
    const/4 v2, 0x0

    #@6a
    invoke-virtual {v14, v2}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@71
    move-result-object v2

    #@72
    check-cast v2, Lsun/security/x509/X500Name;

    #@74
    .line 170
    move-object/from16 v0, v22

    #@76
    invoke-static {v2, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@79
    move-result-object v18

    #@7a
    goto :goto_0

    #@7b
    .line 174
    .end local v14    # "crlIssuers":Lsun/security/x509/GeneralNames;
    :catch_1
    move-exception v19

    #@7c
    .line 175
    .local v19, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@7f
    move-result-object v2

    #@80
    return-object v2

    #@81
    .line 188
    .end local v19    # "ioe":Ljava/io/IOException;
    .end local v22    # "relativeName":Lsun/security/x509/RDN;
    .restart local v20    # "name":Lsun/security/x509/GeneralName;
    .restart local v21    # "possibleCRLs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    .restart local v24    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_5
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getType()I

    #@84
    move-result v2

    #@85
    const/4 v3, 0x6

    #@86
    if-ne v2, v3, :cond_2

    #@88
    .line 189
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@8b
    move-result-object v25

    #@8c
    check-cast v25, Lsun/security/x509/URIName;

    #@8e
    .line 190
    .local v25, "uriName":Lsun/security/x509/URIName;
    invoke-static/range {v25 .. v25}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;

    #@91
    move-result-object v4

    #@92
    .line 191
    .local v4, "crl":Ljava/security/cert/X509CRL;
    if-eqz v4, :cond_2

    #@94
    .line 192
    move-object/from16 v0, v21

    #@96
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/security/cert/CertStoreException; {:try_start_3 .. :try_end_3} :catch_0

    #@99
    goto :goto_1

    #@9a
    .line 200
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v20    # "name":Lsun/security/x509/GeneralName;
    .end local v25    # "uriName":Lsun/security/x509/URIName;
    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->isEmpty()Z

    #@9d
    move-result v2

    #@9e
    if-eqz v2, :cond_7

    #@a0
    if-eqz v23, :cond_7

    #@a2
    .line 201
    throw v23

    #@a3
    .line 204
    :cond_7
    new-instance v15, Ljava/util/ArrayList;

    #@a5
    const/4 v2, 0x2

    #@a6
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@a9
    .line 205
    .local v15, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ac
    move-result-object v13

    #@ad
    .local v13, "crl$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@b0
    move-result v2

    #@b1
    if-eqz v2, :cond_9

    #@b3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b6
    move-result-object v4

    #@b7
    check-cast v4, Ljava/security/cert/X509CRL;

    #@b9
    .line 209
    .restart local v4    # "crl":Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    #@ba
    :try_start_4
    move-object/from16 v0, p0

    #@bc
    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setIssuerNames(Ljava/util/Collection;)V

    #@bf
    .line 210
    move-object/from16 v0, p0

    #@c1
    invoke-virtual {v0, v4}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    #@c4
    move-result v2

    #@c5
    if-eqz v2, :cond_8

    #@c7
    move-object/from16 v2, p1

    #@c9
    move-object/from16 v3, p2

    #@cb
    move-object/from16 v5, p3

    #@cd
    move/from16 v6, p4

    #@cf
    move-object/from16 v7, p5

    #@d1
    move-object/from16 v8, p6

    #@d3
    move-object/from16 v9, p7

    #@d5
    move-object/from16 v10, p9

    #@d7
    move-object/from16 v11, p8

    #@d9
    move-object/from16 v12, p10

    #@db
    invoke-static/range {v2 .. v12}, Lsun/security/provider/certpath/DistributionPointFetcher;->verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z

    #@de
    move-result v2

    #@df
    if-eqz v2, :cond_8

    #@e1
    .line 213
    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_4 .. :try_end_4} :catch_2

    #@e4
    goto :goto_2

    #@e5
    .line 215
    :catch_2
    move-exception v17

    #@e6
    .line 217
    .local v17, "e":Ljava/lang/Exception;
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@e8
    if-eqz v2, :cond_8

    #@ea
    .line 218
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@ec
    new-instance v3, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string/jumbo v5, "Exception verifying CRL: "

    #@f4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@fb
    move-result-object v5

    #@fc
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v3

    #@100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v3

    #@104
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@107
    .line 219
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    #@10a
    goto :goto_2

    #@10b
    .line 223
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_9
    return-object v15
.end method

.method public static getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .locals 9
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "signFlag"    # Z
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "provider"    # Ljava/lang/String;
    .param p5, "reasonsMask"    # [Z
    .param p7, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Z",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;[Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    .local p4, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p6, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v4, p3

    #@5
    move-object v5, p4

    #@6
    move-object v6, p5

    #@7
    move-object v7, p6

    #@8
    move-object/from16 v8, p7

    #@a
    invoke-static/range {v0 .. v8}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .locals 19
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "signFlag"    # Z
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "provider"    # Ljava/lang/String;
    .param p6, "reasonsMask"    # [Z
    .param p8, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Z",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;[Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    .local p5, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p7, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    #@3
    move-result-object v12

    #@4
    .line 99
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    if-nez v12, :cond_0

    #@6
    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 103
    :cond_0
    :try_start_0
    invoke-static {v12}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@e
    move-result-object v2

    #@f
    .line 104
    .local v2, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 105
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "DistributionPointFetcher.getCRLs: Checking CRLDPs for "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    .line 106
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@24
    move-result-object v5

    #@25
    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@30
    .line 109
    :cond_1
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;

    #@33
    move-result-object v15

    #@34
    .line 110
    .local v15, "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    if-nez v15, :cond_3

    #@36
    .line 111
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@38
    if-eqz v1, :cond_2

    #@3a
    .line 112
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@3c
    const-string/jumbo v4, "No CRLDP ext"

    #@3f
    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@42
    .line 114
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@45
    move-result-object v1

    #@46
    return-object v1

    #@47
    .line 117
    :cond_3
    const-string/jumbo v1, "points"

    #@4a
    invoke-virtual {v15, v1}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    #@4d
    move-result-object v16

    #@4e
    .line 118
    .local v16, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    new-instance v17, Ljava/util/HashSet;

    #@50
    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    #@53
    .line 119
    .local v17, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v18

    #@57
    .line 120
    .local v18, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/DistributionPoint;>;"
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_4

    #@5d
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    #@5f
    move-object/from16 v0, p6

    #@61
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@64
    move-result v1

    #@65
    if-eqz v1, :cond_6

    #@67
    .line 127
    :cond_4
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@69
    if-eqz v1, :cond_5

    #@6b
    .line 128
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@6d
    new-instance v4, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v5, "Returning "

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    #@7c
    move-result v5

    #@7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    const-string/jumbo v5, " CRLs"

    #@84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@8f
    .line 130
    :cond_5
    return-object v17

    #@90
    .line 121
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@93
    move-result-object v3

    #@94
    check-cast v3, Lsun/security/x509/DistributionPoint;

    #@96
    .local v3, "point":Lsun/security/x509/DistributionPoint;
    move-object/from16 v1, p0

    #@98
    move-object/from16 v4, p6

    #@9a
    move/from16 v5, p1

    #@9c
    move-object/from16 v6, p2

    #@9e
    move-object/from16 v7, p3

    #@a0
    move-object/from16 v8, p4

    #@a2
    move-object/from16 v9, p5

    #@a4
    move-object/from16 v10, p7

    #@a6
    move-object/from16 v11, p8

    #@a8
    .line 122
    invoke-static/range {v1 .. v11}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    #@ab
    move-result-object v13

    #@ac
    .line 125
    .local v13, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    move-object/from16 v0, v17

    #@ae
    invoke-interface {v0, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b1
    goto :goto_0

    #@b2
    .line 131
    .end local v2    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v3    # "point":Lsun/security/x509/DistributionPoint;
    .end local v13    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    .end local v15    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .end local v16    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .end local v17    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    .end local v18    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/DistributionPoint;>;"
    :catch_0
    move-exception v14

    #@b3
    .line 132
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@b6
    move-result-object v1

    #@b7
    return-object v1
.end method

.method private static getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;
    .locals 11
    .param p0, "name"    # Lsun/security/x509/X500Name;
    .param p1, "certIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X500Name;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@2
    if-eqz v8, :cond_0

    #@4
    .line 268
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@6
    new-instance v9, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v10, "Trying to fetch CRL from DP "

    #@e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v9

    #@12
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v9

    #@16
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v9

    #@1a
    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1d
    .line 270
    :cond_0
    new-instance v7, Ljava/security/cert/X509CRLSelector;

    #@1f
    invoke-direct {v7}, Ljava/security/cert/X509CRLSelector;-><init>()V

    #@22
    .line 271
    .local v7, "xcs":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v7, v8}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    #@29
    .line 272
    invoke-virtual {v7, p1}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    #@2c
    .line 273
    new-instance v2, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@31
    .line 274
    .local v2, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    const/4 v4, 0x0

    #@32
    .line 275
    .local v4, "savedCSE":Ljava/security/cert/CertStoreException;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v6

    #@36
    .end local v4    # "savedCSE":Ljava/security/cert/CertStoreException;
    .local v6, "store$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v8

    #@3a
    if-eqz v8, :cond_3

    #@3c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v5

    #@40
    check-cast v5, Ljava/security/cert/CertStore;

    #@42
    .line 277
    .local v5, "store":Ljava/security/cert/CertStore;
    :try_start_0
    invoke-virtual {v5, v7}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    #@45
    move-result-object v8

    #@46
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v1

    #@4a
    .local v1, "crl$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v8

    #@4e
    if-eqz v8, :cond_1

    #@50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Ljava/security/cert/CRL;

    #@56
    .line 278
    .local v0, "crl":Ljava/security/cert/CRL;
    check-cast v0, Ljava/security/cert/X509CRL;

    #@58
    .end local v0    # "crl":Ljava/security/cert/CRL;
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    goto :goto_1

    #@5c
    .line 280
    .end local v1    # "crl$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    #@5d
    .line 281
    .local v3, "cse":Ljava/security/cert/CertStoreException;
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@5f
    if-eqz v8, :cond_2

    #@61
    .line 282
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@63
    new-instance v9, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v10, "Exception while retrieving CRLs: "

    #@6b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v9

    #@77
    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@7a
    .line 284
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    #@7d
    .line 286
    :cond_2
    new-instance v4, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    #@7f
    invoke-virtual {v5}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    #@82
    move-result-object v8

    #@83
    invoke-direct {v4, v8, v3}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    #@86
    .local v4, "savedCSE":Ljava/security/cert/CertStoreException;
    goto :goto_0

    #@87
    .line 290
    .end local v3    # "cse":Ljava/security/cert/CertStoreException;
    .end local v4    # "savedCSE":Ljava/security/cert/CertStoreException;
    .end local v5    # "store":Ljava/security/cert/CertStore;
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    #@8a
    move-result v8

    #@8b
    if-eqz v8, :cond_4

    #@8d
    if-eqz v4, :cond_4

    #@8f
    .line 291
    throw v4

    #@90
    .line 293
    :cond_4
    return-object v2
.end method

.method private static getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    .locals 4
    .param p0, "issuer"    # Lsun/security/x509/X500Name;
    .param p1, "rdn"    # Lsun/security/x509/RDN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 711
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->rdns()Ljava/util/List;

    #@5
    move-result-object v3

    #@6
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@9
    .line 712
    .local v2, "rdns":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c
    .line 713
    new-instance v0, Lsun/security/x509/X500Name;

    #@e
    const/4 v3, 0x0

    #@f
    new-array v3, v3, [Lsun/security/x509/RDN;

    #@11
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, [Lsun/security/x509/RDN;

    #@17
    invoke-direct {v0, v3}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V

    #@1a
    .line 714
    .local v0, "fullName":Lsun/security/x509/X500Name;
    new-instance v1, Lsun/security/x509/GeneralNames;

    #@1c
    invoke-direct {v1}, Lsun/security/x509/GeneralNames;-><init>()V

    #@1f
    .line 715
    .local v1, "fullNames":Lsun/security/x509/GeneralNames;
    new-instance v3, Lsun/security/x509/GeneralName;

    #@21
    invoke-direct {v3, v0}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    #@24
    invoke-virtual {v1, v3}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    #@27
    .line 716
    return-object v1
.end method

.method private static issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z
    .locals 8
    .param p0, "cert"    # Lsun/security/x509/X509CertImpl;
    .param p1, "crl"    # Lsun/security/x509/X509CRLImpl;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 729
    const/4 v4, 0x0

    #@1
    .line 732
    .local v4, "matched":Z
    new-instance v3, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    #@3
    invoke-direct {v3}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    #@6
    .line 735
    .local v3, "issuerSelector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getKeyUsage()[Z

    #@9
    move-result-object v5

    #@a
    .line 736
    .local v5, "usages":[Z
    if-eqz v5, :cond_0

    #@c
    .line 737
    const/4 v6, 0x1

    #@d
    const/4 v7, 0x6

    #@e
    aput-boolean v6, v5, v7

    #@10
    .line 738
    invoke-virtual {v3, v5}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    #@13
    .line 742
    :cond_0
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@16
    move-result-object v1

    #@17
    .line 743
    .local v1, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v3, v1}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    #@1a
    .line 753
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    #@1d
    move-result-object v0

    #@1e
    .line 754
    .local v0, "crlAKID":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_1

    #@20
    .line 755
    invoke-virtual {v3, v0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->parseAuthorityKeyIdentifierExtension(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V

    #@23
    .line 758
    :cond_1
    invoke-virtual {v3, p0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@26
    move-result v4

    #@27
    .line 761
    .local v4, "matched":Z
    if-eqz v4, :cond_3

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 762
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    #@2e
    move-result-object v6

    #@2f
    if-nez v6, :cond_3

    #@31
    .line 764
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {p1, v6, p2}, Lsun/security/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 765
    const/4 v4, 0x1

    #@39
    .line 771
    .end local v4    # "matched":Z
    :cond_3
    :goto_0
    return v4

    #@3a
    .line 766
    .restart local v4    # "matched":Z
    :catch_0
    move-exception v2

    #@3b
    .line 767
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const/4 v4, 0x0

    #@3c
    .local v4, "matched":Z
    goto :goto_0
.end method

.method static verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z
    .locals 53
    .param p0, "certImpl"    # Lsun/security/x509/X509CertImpl;
    .param p1, "point"    # Lsun/security/x509/DistributionPoint;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .param p3, "reasonsMask"    # [Z
    .param p4, "signFlag"    # Z
    .param p5, "prevKey"    # Ljava/security/PublicKey;
    .param p6, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p7, "provider"    # Ljava/lang/String;
    .param p10, "validity"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X509CertImpl;",
            "Lsun/security/x509/DistributionPoint;",
            "Ljava/security/cert/X509CRL;",
            "[ZZ",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 323
    .local p8, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p9, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    const/16 v30, 0x0

    #@2
    .line 324
    .local v30, "indirectCRL":Z
    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CRLImpl;->toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    #@5
    move-result-object v14

    #@6
    .line 326
    .local v14, "crlImpl":Lsun/security/x509/X509CRLImpl;
    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getIssuingDistributionPointExtension()Lsun/security/x509/IssuingDistributionPointExtension;

    #@9
    move-result-object v25

    #@a
    .line 327
    .local v25, "idpExt":Lsun/security/x509/IssuingDistributionPointExtension;
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    #@d
    move-result-object v10

    #@e
    check-cast v10, Lsun/security/x509/X500Name;

    #@10
    .line 328
    .local v10, "certIssuer":Lsun/security/x509/X500Name;
    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getIssuerDN()Ljava/security/Principal;

    #@13
    move-result-object v15

    #@14
    check-cast v15, Lsun/security/x509/X500Name;

    #@16
    .line 334
    .local v15, "crlIssuer":Lsun/security/x509/X500Name;
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    #@19
    move-result-object v39

    #@1a
    .line 335
    .local v39, "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    const/16 v38, 0x0

    #@1c
    .line 336
    .local v38, "pointCrlIssuer":Lsun/security/x509/X500Name;
    if-eqz v39, :cond_9

    #@1e
    .line 337
    if-eqz v25, :cond_0

    #@20
    .line 339
    const-string/jumbo v50, "indirect_crl"

    #@23
    .line 338
    move-object/from16 v0, v25

    #@25
    move-object/from16 v1, v50

    #@27
    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@2a
    move-result-object v50

    #@2b
    check-cast v50, Ljava/lang/Boolean;

    #@2d
    .line 340
    sget-object v51, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2f
    .line 338
    invoke-virtual/range {v50 .. v51}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v50

    #@33
    .line 337
    if-eqz v50, :cond_1

    #@35
    .line 341
    :cond_0
    const/16 v50, 0x0

    #@37
    return v50

    #@38
    .line 343
    :cond_1
    const/16 v32, 0x0

    #@3a
    .line 344
    .local v32, "match":Z
    invoke-virtual/range {v39 .. v39}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    #@3d
    move-result-object v47

    #@3e
    .line 345
    .end local v38    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .local v47, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_2
    :goto_0
    if-nez v32, :cond_3

    #@40
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v50

    #@44
    .line 344
    if-eqz v50, :cond_3

    #@46
    .line 346
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v50

    #@4a
    check-cast v50, Lsun/security/x509/GeneralName;

    #@4c
    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@4f
    move-result-object v33

    #@50
    .line 347
    .local v33, "name":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v33

    #@52
    invoke-virtual {v15, v0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v50

    #@56
    if-eqz v50, :cond_2

    #@58
    move-object/from16 v38, v33

    #@5a
    .line 348
    check-cast v38, Lsun/security/x509/X500Name;

    #@5c
    .line 349
    .local v38, "pointCrlIssuer":Lsun/security/x509/X500Name;
    const/16 v32, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 352
    .end local v33    # "name":Lsun/security/x509/GeneralNameInterface;
    .end local v38    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_3
    if-nez v32, :cond_4

    #@61
    .line 353
    const/16 v50, 0x0

    #@63
    return v50

    #@64
    .line 358
    :cond_4
    move-object/from16 v0, p0

    #@66
    move-object/from16 v1, p7

    #@68
    invoke-static {v0, v14, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    #@6b
    move-result v50

    #@6c
    if-eqz v50, :cond_8

    #@6e
    .line 360
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    #@71
    move-result-object p5

    #@72
    .line 395
    .end local v32    # "match":Z
    .end local v47    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_5
    :goto_1
    if-nez v30, :cond_6

    #@74
    if-eqz p4, :cond_f

    #@76
    .line 400
    :cond_6
    if-eqz v25, :cond_29

    #@78
    .line 402
    const-string/jumbo v50, "point"

    #@7b
    move-object/from16 v0, v25

    #@7d
    move-object/from16 v1, v50

    #@7f
    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@82
    move-result-object v28

    #@83
    .line 401
    check-cast v28, Lsun/security/x509/DistributionPointName;

    #@85
    .line 403
    .local v28, "idpPoint":Lsun/security/x509/DistributionPointName;
    if-eqz v28, :cond_23

    #@87
    .line 404
    invoke-virtual/range {v28 .. v28}, Lsun/security/x509/DistributionPointName;->getFullName()Lsun/security/x509/GeneralNames;

    #@8a
    move-result-object v27

    #@8b
    .line 405
    .local v27, "idpNames":Lsun/security/x509/GeneralNames;
    if-nez v27, :cond_12

    #@8d
    .line 406
    invoke-virtual/range {v28 .. v28}, Lsun/security/x509/DistributionPointName;->getRelativeName()Lsun/security/x509/RDN;

    #@90
    move-result-object v45

    #@91
    .line 407
    .local v45, "relativeName":Lsun/security/x509/RDN;
    if-nez v45, :cond_10

    #@93
    .line 408
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@95
    if-eqz v50, :cond_7

    #@97
    .line 409
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@99
    const-string/jumbo v51, "IDP must be relative or full DN"

    #@9c
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@9f
    .line 411
    :cond_7
    const/16 v50, 0x0

    #@a1
    return v50

    #@a2
    .line 362
    .end local v27    # "idpNames":Lsun/security/x509/GeneralNames;
    .end local v28    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .end local v45    # "relativeName":Lsun/security/x509/RDN;
    .restart local v32    # "match":Z
    .restart local v47    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_8
    const/16 v30, 0x1

    #@a4
    goto :goto_1

    #@a5
    .line 364
    .end local v32    # "match":Z
    .end local v47    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .local v38, "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_9
    invoke-virtual {v15, v10}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v50

    #@a9
    if-nez v50, :cond_b

    #@ab
    .line 365
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@ad
    if-eqz v50, :cond_a

    #@af
    .line 366
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@b1
    const-string/jumbo v51, "crl issuer does not equal cert issuer"

    #@b4
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@b7
    .line 368
    :cond_a
    const/16 v50, 0x0

    #@b9
    return v50

    #@ba
    .line 371
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    #@bd
    move-result-object v9

    #@be
    .line 372
    .local v9, "certAKID":Lsun/security/x509/KeyIdentifier;
    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    #@c1
    move-result-object v13

    #@c2
    .line 374
    .local v13, "crlAKID":Lsun/security/x509/KeyIdentifier;
    if-eqz v9, :cond_c

    #@c4
    if-nez v13, :cond_d

    #@c6
    .line 379
    :cond_c
    move-object/from16 v0, p0

    #@c8
    move-object/from16 v1, p7

    #@ca
    invoke-static {v0, v14, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    #@cd
    move-result v50

    #@ce
    if-eqz v50, :cond_5

    #@d0
    .line 381
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    #@d3
    move-result-object p5

    #@d4
    goto :goto_1

    #@d5
    .line 383
    :cond_d
    invoke-virtual {v9, v13}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result v50

    #@d9
    if-nez v50, :cond_5

    #@db
    .line 386
    move-object/from16 v0, p0

    #@dd
    move-object/from16 v1, p7

    #@df
    invoke-static {v0, v14, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    #@e2
    move-result v50

    #@e3
    if-eqz v50, :cond_e

    #@e5
    .line 388
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    #@e8
    move-result-object p5

    #@e9
    goto :goto_1

    #@ea
    .line 390
    :cond_e
    const/16 v30, 0x1

    #@ec
    goto :goto_1

    #@ed
    .line 397
    .end local v9    # "certAKID":Lsun/security/x509/KeyIdentifier;
    .end local v13    # "crlAKID":Lsun/security/x509/KeyIdentifier;
    .end local v38    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_f
    const/16 v50, 0x0

    #@ef
    return v50

    #@f0
    .line 413
    .restart local v27    # "idpNames":Lsun/security/x509/GeneralNames;
    .restart local v28    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v45    # "relativeName":Lsun/security/x509/RDN;
    :cond_10
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@f2
    if-eqz v50, :cond_11

    #@f4
    .line 414
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@f6
    new-instance v51, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v52, "IDP relativeName:"

    #@fe
    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v51

    #@102
    move-object/from16 v0, v51

    #@104
    move-object/from16 v1, v45

    #@106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v51

    #@10a
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v51

    #@10e
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@111
    .line 416
    :cond_11
    move-object/from16 v0, v45

    #@113
    invoke-static {v15, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    #@116
    move-result-object v27

    #@117
    .line 421
    .end local v45    # "relativeName":Lsun/security/x509/RDN;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    #@11a
    move-result-object v50

    #@11b
    if-nez v50, :cond_13

    #@11d
    .line 422
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    #@120
    move-result-object v50

    #@121
    if-eqz v50, :cond_20

    #@123
    .line 423
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    #@126
    move-result-object v41

    #@127
    .line 424
    .local v41, "pointNames":Lsun/security/x509/GeneralNames;
    if-nez v41, :cond_19

    #@129
    .line 425
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    #@12c
    move-result-object v45

    #@12d
    .line 426
    .restart local v45    # "relativeName":Lsun/security/x509/RDN;
    if-nez v45, :cond_15

    #@12f
    .line 427
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@131
    if-eqz v50, :cond_14

    #@133
    .line 428
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@135
    const-string/jumbo v51, "DP must be relative or full DN"

    #@138
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@13b
    .line 430
    :cond_14
    const/16 v50, 0x0

    #@13d
    return v50

    #@13e
    .line 432
    :cond_15
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@140
    if-eqz v50, :cond_16

    #@142
    .line 433
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@144
    new-instance v51, Ljava/lang/StringBuilder;

    #@146
    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v52, "DP relativeName:"

    #@14c
    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v51

    #@150
    move-object/from16 v0, v51

    #@152
    move-object/from16 v1, v45

    #@154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v51

    #@158
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v51

    #@15c
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@15f
    .line 435
    :cond_16
    if-eqz v30, :cond_1d

    #@161
    .line 436
    invoke-virtual/range {v39 .. v39}, Lsun/security/x509/GeneralNames;->size()I

    #@164
    move-result v50

    #@165
    const/16 v51, 0x1

    #@167
    move/from16 v0, v50

    #@169
    move/from16 v1, v51

    #@16b
    if-eq v0, v1, :cond_18

    #@16d
    .line 439
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@16f
    if-eqz v50, :cond_17

    #@171
    .line 440
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@173
    const-string/jumbo v51, "must only be one CRL issuer when relative name present"

    #@176
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@179
    .line 443
    :cond_17
    const/16 v50, 0x0

    #@17b
    return v50

    #@17c
    .line 445
    :cond_18
    move-object/from16 v0, v38

    #@17e
    move-object/from16 v1, v45

    #@180
    invoke-static {v0, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    #@183
    move-result-object v41

    #@184
    .line 451
    .end local v45    # "relativeName":Lsun/security/x509/RDN;
    :cond_19
    :goto_2
    const/16 v32, 0x0

    #@186
    .line 452
    .restart local v32    # "match":Z
    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    #@189
    move-result-object v23

    #@18a
    .line 453
    .end local v32    # "match":Z
    .local v23, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_1a
    if-nez v32, :cond_1e

    #@18c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@18f
    move-result v50

    #@190
    .line 452
    if-eqz v50, :cond_1e

    #@192
    .line 454
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@195
    move-result-object v50

    #@196
    check-cast v50, Lsun/security/x509/GeneralName;

    #@198
    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@19b
    move-result-object v26

    #@19c
    .line 455
    .local v26, "idpName":Lsun/security/x509/GeneralNameInterface;
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@19e
    if-eqz v50, :cond_1b

    #@1a0
    .line 456
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@1a2
    new-instance v51, Ljava/lang/StringBuilder;

    #@1a4
    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    #@1a7
    const-string/jumbo v52, "idpName: "

    #@1aa
    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v51

    #@1ae
    move-object/from16 v0, v51

    #@1b0
    move-object/from16 v1, v26

    #@1b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v51

    #@1b6
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b9
    move-result-object v51

    #@1ba
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1bd
    .line 458
    :cond_1b
    invoke-virtual/range {v41 .. v41}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    #@1c0
    move-result-object v36

    #@1c1
    .line 459
    .local v36, "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_3
    if-nez v32, :cond_1a

    #@1c3
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    #@1c6
    move-result v50

    #@1c7
    .line 458
    if-eqz v50, :cond_1a

    #@1c9
    .line 460
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1cc
    move-result-object v50

    #@1cd
    check-cast v50, Lsun/security/x509/GeneralName;

    #@1cf
    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@1d2
    move-result-object v40

    #@1d3
    .line 461
    .local v40, "pointName":Lsun/security/x509/GeneralNameInterface;
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@1d5
    if-eqz v50, :cond_1c

    #@1d7
    .line 462
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@1d9
    new-instance v51, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    const-string/jumbo v52, "pointName: "

    #@1e1
    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v51

    #@1e5
    move-object/from16 v0, v51

    #@1e7
    move-object/from16 v1, v40

    #@1e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v51

    #@1ed
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f0
    move-result-object v51

    #@1f1
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1f4
    .line 464
    :cond_1c
    move-object/from16 v0, v26

    #@1f6
    move-object/from16 v1, v40

    #@1f8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1fb
    move-result v32

    #@1fc
    .local v32, "match":Z
    goto :goto_3

    #@1fd
    .line 448
    .end local v23    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v26    # "idpName":Lsun/security/x509/GeneralNameInterface;
    .end local v32    # "match":Z
    .end local v36    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v40    # "pointName":Lsun/security/x509/GeneralNameInterface;
    .restart local v45    # "relativeName":Lsun/security/x509/RDN;
    :cond_1d
    move-object/from16 v0, v45

    #@1ff
    invoke-static {v10, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    #@202
    move-result-object v41

    #@203
    goto :goto_2

    #@204
    .line 467
    .end local v45    # "relativeName":Lsun/security/x509/RDN;
    .restart local v23    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_1e
    if-nez v32, :cond_23

    #@206
    .line 468
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@208
    if-eqz v50, :cond_1f

    #@20a
    .line 469
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@20c
    const-string/jumbo v51, "IDP name does not match DP name"

    #@20f
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@212
    .line 471
    :cond_1f
    const/16 v50, 0x0

    #@214
    return v50

    #@215
    .line 480
    .end local v23    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v41    # "pointNames":Lsun/security/x509/GeneralNames;
    :cond_20
    const/16 v32, 0x0

    #@217
    .line 481
    .local v32, "match":Z
    invoke-virtual/range {v39 .. v39}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    #@21a
    move-result-object v47

    #@21b
    .line 482
    .end local v32    # "match":Z
    .restart local v47    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_21
    if-nez v32, :cond_22

    #@21d
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    #@220
    move-result v50

    #@221
    .line 481
    if-eqz v50, :cond_22

    #@223
    .line 483
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@226
    move-result-object v50

    #@227
    check-cast v50, Lsun/security/x509/GeneralName;

    #@229
    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@22c
    move-result-object v16

    #@22d
    .line 484
    .local v16, "crlIssuerName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    #@230
    move-result-object v23

    #@231
    .line 485
    .restart local v23    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_4
    if-nez v32, :cond_21

    #@233
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@236
    move-result v50

    #@237
    .line 484
    if-eqz v50, :cond_21

    #@239
    .line 486
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23c
    move-result-object v50

    #@23d
    check-cast v50, Lsun/security/x509/GeneralName;

    #@23f
    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@242
    move-result-object v26

    #@243
    .line 487
    .restart local v26    # "idpName":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v16

    #@245
    move-object/from16 v1, v26

    #@247
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@24a
    move-result v32

    #@24b
    .local v32, "match":Z
    goto :goto_4

    #@24c
    .line 490
    .end local v16    # "crlIssuerName":Lsun/security/x509/GeneralNameInterface;
    .end local v23    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v26    # "idpName":Lsun/security/x509/GeneralNameInterface;
    .end local v32    # "match":Z
    :cond_22
    if-nez v32, :cond_23

    #@24e
    .line 491
    const/16 v50, 0x0

    #@250
    return v50

    #@251
    .line 499
    .end local v27    # "idpNames":Lsun/security/x509/GeneralNames;
    .end local v47    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_23
    const-string/jumbo v50, "only_user_certs"

    #@254
    move-object/from16 v0, v25

    #@256
    move-object/from16 v1, v50

    #@258
    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@25b
    move-result-object v7

    #@25c
    .line 498
    check-cast v7, Ljava/lang/Boolean;

    #@25e
    .line 500
    .local v7, "b":Ljava/lang/Boolean;
    sget-object v50, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@260
    move-object/from16 v0, v50

    #@262
    invoke-virtual {v7, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    #@265
    move-result v50

    #@266
    if-eqz v50, :cond_25

    #@268
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getBasicConstraints()I

    #@26b
    move-result v50

    #@26c
    const/16 v51, -0x1

    #@26e
    move/from16 v0, v50

    #@270
    move/from16 v1, v51

    #@272
    if-eq v0, v1, :cond_25

    #@274
    .line 501
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@276
    if-eqz v50, :cond_24

    #@278
    .line 502
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@27a
    const-string/jumbo v51, "cert must be a EE cert"

    #@27d
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@280
    .line 504
    :cond_24
    const/16 v50, 0x0

    #@282
    return v50

    #@283
    .line 510
    :cond_25
    const-string/jumbo v50, "only_ca_certs"

    #@286
    move-object/from16 v0, v25

    #@288
    move-object/from16 v1, v50

    #@28a
    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@28d
    move-result-object v7

    #@28e
    .line 509
    .end local v7    # "b":Ljava/lang/Boolean;
    check-cast v7, Ljava/lang/Boolean;

    #@290
    .line 511
    .restart local v7    # "b":Ljava/lang/Boolean;
    sget-object v50, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@292
    move-object/from16 v0, v50

    #@294
    invoke-virtual {v7, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    #@297
    move-result v50

    #@298
    if-eqz v50, :cond_27

    #@29a
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getBasicConstraints()I

    #@29d
    move-result v50

    #@29e
    const/16 v51, -0x1

    #@2a0
    move/from16 v0, v50

    #@2a2
    move/from16 v1, v51

    #@2a4
    if-ne v0, v1, :cond_27

    #@2a6
    .line 512
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@2a8
    if-eqz v50, :cond_26

    #@2aa
    .line 513
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@2ac
    const-string/jumbo v51, "cert must be a CA cert"

    #@2af
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2b2
    .line 515
    :cond_26
    const/16 v50, 0x0

    #@2b4
    return v50

    #@2b5
    .line 521
    :cond_27
    const-string/jumbo v50, "only_attribute_certs"

    #@2b8
    .line 520
    move-object/from16 v0, v25

    #@2ba
    move-object/from16 v1, v50

    #@2bc
    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@2bf
    move-result-object v7

    #@2c0
    .end local v7    # "b":Ljava/lang/Boolean;
    check-cast v7, Ljava/lang/Boolean;

    #@2c2
    .line 522
    .restart local v7    # "b":Ljava/lang/Boolean;
    sget-object v50, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@2c4
    move-object/from16 v0, v50

    #@2c6
    invoke-virtual {v7, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    #@2c9
    move-result v50

    #@2ca
    if-eqz v50, :cond_29

    #@2cc
    .line 523
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@2ce
    if-eqz v50, :cond_28

    #@2d0
    .line 524
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@2d2
    const-string/jumbo v51, "cert must not be an AA cert"

    #@2d5
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2d8
    .line 526
    :cond_28
    const/16 v50, 0x0

    #@2da
    return v50

    #@2db
    .line 531
    .end local v7    # "b":Ljava/lang/Boolean;
    .end local v28    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :cond_29
    const/16 v50, 0x9

    #@2dd
    move/from16 v0, v50

    #@2df
    new-array v0, v0, [Z

    #@2e1
    move-object/from16 v31, v0

    #@2e3
    .line 532
    .local v31, "interimReasonsMask":[Z
    const/16 v44, 0x0

    #@2e5
    .line 533
    .local v44, "reasons":Lsun/security/x509/ReasonFlags;
    if-eqz v25, :cond_2a

    #@2e7
    .line 535
    const-string/jumbo v50, "reasons"

    #@2ea
    move-object/from16 v0, v25

    #@2ec
    move-object/from16 v1, v50

    #@2ee
    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@2f1
    move-result-object v44

    #@2f2
    .line 534
    .end local v44    # "reasons":Lsun/security/x509/ReasonFlags;
    check-cast v44, Lsun/security/x509/ReasonFlags;

    #@2f4
    .line 538
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getReasonFlags()[Z

    #@2f7
    move-result-object v42

    #@2f8
    .line 539
    .local v42, "pointReasonFlags":[Z
    if-eqz v44, :cond_2f

    #@2fa
    .line 540
    if-eqz v42, :cond_2c

    #@2fc
    .line 543
    invoke-virtual/range {v44 .. v44}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    #@2ff
    move-result-object v29

    #@300
    .line 544
    .local v29, "idpReasonFlags":[Z
    const/16 v22, 0x0

    #@302
    .local v22, "i":I
    :goto_5
    move-object/from16 v0, v29

    #@304
    array-length v0, v0

    #@305
    move/from16 v50, v0

    #@307
    move/from16 v0, v22

    #@309
    move/from16 v1, v50

    #@30b
    if-ge v0, v1, :cond_2d

    #@30d
    .line 545
    aget-boolean v50, v29, v22

    #@30f
    if-eqz v50, :cond_2b

    #@311
    aget-boolean v50, v42, v22

    #@313
    if-eqz v50, :cond_2b

    #@315
    .line 546
    const/16 v50, 0x1

    #@317
    aput-boolean v50, v31, v22

    #@319
    .line 544
    :cond_2b
    add-int/lit8 v22, v22, 0x1

    #@31b
    goto :goto_5

    #@31c
    .line 553
    .end local v22    # "i":I
    .end local v29    # "idpReasonFlags":[Z
    :cond_2c
    invoke-virtual/range {v44 .. v44}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    #@31f
    move-result-object v50

    #@320
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@323
    move-result-object v31

    #@324
    .end local v31    # "interimReasonsMask":[Z
    check-cast v31, [Z

    #@326
    .line 568
    .restart local v31    # "interimReasonsMask":[Z
    :cond_2d
    :goto_6
    const/16 v35, 0x0

    #@328
    .line 569
    .local v35, "oneOrMore":Z
    const/16 v22, 0x0

    #@32a
    .restart local v22    # "i":I
    :goto_7
    move-object/from16 v0, v31

    #@32c
    array-length v0, v0

    #@32d
    move/from16 v50, v0

    #@32f
    move/from16 v0, v22

    #@331
    move/from16 v1, v50

    #@333
    if-ge v0, v1, :cond_2e

    #@335
    if-eqz v35, :cond_32

    #@337
    .line 574
    :cond_2e
    if-nez v35, :cond_34

    #@339
    .line 575
    const/16 v50, 0x0

    #@33b
    return v50

    #@33c
    .line 555
    .end local v22    # "i":I
    .end local v35    # "oneOrMore":Z
    :cond_2f
    if-eqz v25, :cond_30

    #@33e
    if-nez v44, :cond_2d

    #@340
    .line 556
    :cond_30
    if-eqz v42, :cond_31

    #@342
    .line 558
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@345
    move-result-object v31

    #@346
    .end local v31    # "interimReasonsMask":[Z
    check-cast v31, [Z

    #@348
    .restart local v31    # "interimReasonsMask":[Z
    goto :goto_6

    #@349
    .line 561
    :cond_31
    const/16 v50, 0x9

    #@34b
    move/from16 v0, v50

    #@34d
    new-array v0, v0, [Z

    #@34f
    move-object/from16 v31, v0

    #@351
    .line 562
    const/16 v50, 0x1

    #@353
    move-object/from16 v0, v31

    #@355
    move/from16 v1, v50

    #@357
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    #@35a
    goto :goto_6

    #@35b
    .line 570
    .restart local v22    # "i":I
    .restart local v35    # "oneOrMore":Z
    :cond_32
    aget-boolean v50, p3, v22

    #@35d
    if-nez v50, :cond_33

    #@35f
    aget-boolean v50, v31, v22

    #@361
    if-eqz v50, :cond_33

    #@363
    .line 571
    const/16 v35, 0x1

    #@365
    .line 569
    :cond_33
    add-int/lit8 v22, v22, 0x1

    #@367
    goto :goto_7

    #@368
    .line 581
    :cond_34
    if-eqz v30, :cond_38

    #@36a
    .line 582
    new-instance v11, Ljava/security/cert/X509CertSelector;

    #@36c
    invoke-direct {v11}, Ljava/security/cert/X509CertSelector;-><init>()V

    #@36f
    .line 583
    .local v11, "certSel":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v15}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@372
    move-result-object v50

    #@373
    move-object/from16 v0, v50

    #@375
    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    #@378
    .line 584
    const/16 v50, 0x7

    #@37a
    move/from16 v0, v50

    #@37c
    new-array v0, v0, [Z

    #@37e
    move-object/from16 v17, v0

    #@380
    .local v17, "crlSign":[Z
    fill-array-data v17, :array_0

    #@383
    .line 585
    move-object/from16 v0, v17

    #@385
    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    #@388
    .line 598
    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    #@38b
    move-result-object v5

    #@38c
    .line 599
    .local v5, "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v5, :cond_36

    #@38e
    .line 601
    const-string/jumbo v50, "key_id"

    #@391
    .line 600
    move-object/from16 v0, v50

    #@393
    invoke-virtual {v5, v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@396
    move-result-object v4

    #@397
    check-cast v4, Lsun/security/x509/KeyIdentifier;

    #@399
    .line 602
    .local v4, "akid":Lsun/security/x509/KeyIdentifier;
    if-eqz v4, :cond_35

    #@39b
    .line 603
    new-instance v18, Lsun/security/util/DerOutputStream;

    #@39d
    invoke-direct/range {v18 .. v18}, Lsun/security/util/DerOutputStream;-><init>()V

    #@3a0
    .line 604
    .local v18, "derout":Lsun/security/util/DerOutputStream;
    invoke-virtual {v4}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    #@3a3
    move-result-object v50

    #@3a4
    move-object/from16 v0, v18

    #@3a6
    move-object/from16 v1, v50

    #@3a8
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@3ab
    .line 605
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@3ae
    move-result-object v50

    #@3af
    move-object/from16 v0, v50

    #@3b1
    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    #@3b4
    .line 609
    .end local v18    # "derout":Lsun/security/util/DerOutputStream;
    :cond_35
    const-string/jumbo v50, "serial_number"

    #@3b7
    .line 608
    move-object/from16 v0, v50

    #@3b9
    invoke-virtual {v5, v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3bc
    move-result-object v6

    #@3bd
    check-cast v6, Lsun/security/x509/SerialNumber;

    #@3bf
    .line 610
    .local v6, "asn":Lsun/security/x509/SerialNumber;
    if-eqz v6, :cond_36

    #@3c1
    .line 611
    invoke-virtual {v6}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    #@3c4
    move-result-object v50

    #@3c5
    move-object/from16 v0, v50

    #@3c7
    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    #@3ca
    .line 621
    .end local v4    # "akid":Lsun/security/x509/KeyIdentifier;
    .end local v6    # "asn":Lsun/security/x509/SerialNumber;
    :cond_36
    new-instance v34, Ljava/util/HashSet;

    #@3cc
    move-object/from16 v0, v34

    #@3ce
    move-object/from16 v1, p8

    #@3d0
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@3d3
    .line 623
    .local v34, "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    if-eqz p5, :cond_37

    #@3d5
    .line 630
    if-eqz p6, :cond_39

    #@3d7
    .line 631
    new-instance v48, Ljava/security/cert/TrustAnchor;

    #@3d9
    const/16 v50, 0x0

    #@3db
    move-object/from16 v0, v48

    #@3dd
    move-object/from16 v1, p6

    #@3df
    move-object/from16 v2, v50

    #@3e1
    invoke-direct {v0, v1, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@3e4
    .line 636
    .local v48, "temporary":Ljava/security/cert/TrustAnchor;
    :goto_8
    move-object/from16 v0, v34

    #@3e6
    move-object/from16 v1, v48

    #@3e8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3eb
    .line 639
    .end local v48    # "temporary":Ljava/security/cert/TrustAnchor;
    :cond_37
    const/16 v37, 0x0

    #@3ed
    .line 641
    .local v37, "params":Ljava/security/cert/PKIXBuilderParameters;
    :try_start_0
    new-instance v37, Ljava/security/cert/PKIXBuilderParameters;

    #@3ef
    .end local v37    # "params":Ljava/security/cert/PKIXBuilderParameters;
    move-object/from16 v0, v37

    #@3f1
    move-object/from16 v1, v34

    #@3f3
    invoke-direct {v0, v1, v11}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f6
    .line 645
    .local v37, "params":Ljava/security/cert/PKIXBuilderParameters;
    move-object/from16 v0, v37

    #@3f8
    move-object/from16 v1, p9

    #@3fa
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setCertStores(Ljava/util/List;)V

    #@3fd
    .line 646
    move-object/from16 v0, v37

    #@3ff
    move-object/from16 v1, p7

    #@401
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setSigProvider(Ljava/lang/String;)V

    #@404
    .line 647
    move-object/from16 v0, v37

    #@406
    move-object/from16 v1, p10

    #@408
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    #@40b
    .line 649
    :try_start_1
    const-string/jumbo v50, "PKIX"

    #@40e
    invoke-static/range {v50 .. v50}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    #@411
    move-result-object v8

    #@412
    .line 651
    .local v8, "builder":Ljava/security/cert/CertPathBuilder;
    move-object/from16 v0, v37

    #@414
    invoke-virtual {v8, v0}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    #@417
    move-result-object v46

    #@418
    check-cast v46, Ljava/security/cert/PKIXCertPathBuilderResult;

    #@41a
    .line 652
    .local v46, "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    invoke-virtual/range {v46 .. v46}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@41d
    move-result-object p5

    #@41e
    .line 660
    .end local v5    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v8    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v11    # "certSel":Ljava/security/cert/X509CertSelector;
    .end local v17    # "crlSign":[Z
    .end local v34    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v37    # "params":Ljava/security/cert/PKIXBuilderParameters;
    .end local v46    # "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    :cond_38
    :try_start_2
    move-object/from16 v0, p5

    #@420
    move-object/from16 v1, p2

    #@422
    invoke-static {v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Ljava/security/cert/X509CRL;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    #@425
    .line 670
    :try_start_3
    move-object/from16 v0, p2

    #@427
    move-object/from16 v1, p5

    #@429
    move-object/from16 v2, p7

    #@42b
    invoke-virtual {v0, v1, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    #@42e
    .line 679
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@431
    move-result-object v49

    #@432
    .line 681
    .local v49, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v49, :cond_3d

    #@434
    .line 682
    sget-object v50, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    #@436
    invoke-virtual/range {v50 .. v50}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@439
    move-result-object v50

    #@43a
    invoke-interface/range {v49 .. v50}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@43d
    .line 683
    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->isEmpty()Z

    #@440
    move-result v50

    #@441
    if-nez v50, :cond_3d

    #@443
    .line 684
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@445
    if-eqz v50, :cond_3c

    #@447
    .line 685
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@449
    new-instance v51, Ljava/lang/StringBuilder;

    #@44b
    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    #@44e
    const-string/jumbo v52, "Unrecognized critical extension(s) in CRL: "

    #@451
    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@454
    move-result-object v51

    #@455
    move-object/from16 v0, v51

    #@457
    move-object/from16 v1, v49

    #@459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45c
    move-result-object v51

    #@45d
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@460
    move-result-object v51

    #@461
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@464
    .line 687
    invoke-interface/range {v49 .. v49}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@467
    move-result-object v21

    #@468
    .local v21, "ext$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@46b
    move-result v50

    #@46c
    if-eqz v50, :cond_3c

    #@46e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@471
    move-result-object v20

    #@472
    check-cast v20, Ljava/lang/String;

    #@474
    .line 688
    .local v20, "ext":Ljava/lang/String;
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@476
    move-object/from16 v0, v50

    #@478
    move-object/from16 v1, v20

    #@47a
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@47d
    goto :goto_9

    #@47e
    .line 633
    .end local v20    # "ext":Ljava/lang/String;
    .end local v21    # "ext$iterator":Ljava/util/Iterator;
    .end local v49    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .restart local v11    # "certSel":Ljava/security/cert/X509CertSelector;
    .restart local v17    # "crlSign":[Z
    .restart local v34    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@481
    move-result-object v43

    #@482
    .line 634
    .local v43, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v48, Ljava/security/cert/TrustAnchor;

    #@484
    const/16 v50, 0x0

    #@486
    move-object/from16 v0, v48

    #@488
    move-object/from16 v1, v43

    #@48a
    move-object/from16 v2, p5

    #@48c
    move-object/from16 v3, v50

    #@48e
    invoke-direct {v0, v1, v2, v3}, Ljava/security/cert/TrustAnchor;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V

    #@491
    .restart local v48    # "temporary":Ljava/security/cert/TrustAnchor;
    goto/16 :goto_8

    #@493
    .line 642
    .end local v43    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v48    # "temporary":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v24

    #@494
    .line 643
    .local v24, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v50, Ljava/security/cert/CRLException;

    #@496
    move-object/from16 v0, v50

    #@498
    move-object/from16 v1, v24

    #@49a
    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    #@49d
    throw v50

    #@49e
    .line 653
    .end local v24    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v37    # "params":Ljava/security/cert/PKIXBuilderParameters;
    :catch_1
    move-exception v19

    #@49f
    .line 654
    .local v19, "e":Ljava/security/GeneralSecurityException;
    new-instance v50, Ljava/security/cert/CRLException;

    #@4a1
    move-object/from16 v0, v50

    #@4a3
    move-object/from16 v1, v19

    #@4a5
    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    #@4a8
    throw v50

    #@4a9
    .line 661
    .end local v5    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v11    # "certSel":Ljava/security/cert/X509CertSelector;
    .end local v17    # "crlSign":[Z
    .end local v19    # "e":Ljava/security/GeneralSecurityException;
    .end local v34    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v37    # "params":Ljava/security/cert/PKIXBuilderParameters;
    :catch_2
    move-exception v12

    #@4aa
    .line 662
    .local v12, "cpve":Ljava/security/cert/CertPathValidatorException;
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@4ac
    if-eqz v50, :cond_3a

    #@4ae
    .line 663
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@4b0
    new-instance v51, Ljava/lang/StringBuilder;

    #@4b2
    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    #@4b5
    const-string/jumbo v52, "CRL signature algorithm check failed: "

    #@4b8
    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bb
    move-result-object v51

    #@4bc
    move-object/from16 v0, v51

    #@4be
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c1
    move-result-object v51

    #@4c2
    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c5
    move-result-object v51

    #@4c6
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@4c9
    .line 665
    :cond_3a
    const/16 v50, 0x0

    #@4cb
    return v50

    #@4cc
    .line 671
    .end local v12    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :catch_3
    move-exception v19

    #@4cd
    .line 672
    .restart local v19    # "e":Ljava/security/GeneralSecurityException;
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@4cf
    if-eqz v50, :cond_3b

    #@4d1
    .line 673
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    #@4d3
    const-string/jumbo v51, "CRL signature failed to verify"

    #@4d6
    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@4d9
    .line 675
    :cond_3b
    const/16 v50, 0x0

    #@4db
    return v50

    #@4dc
    .line 691
    .end local v19    # "e":Ljava/security/GeneralSecurityException;
    .restart local v49    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3c
    const/16 v50, 0x0

    #@4de
    return v50

    #@4df
    .line 696
    :cond_3d
    const/16 v22, 0x0

    #@4e1
    :goto_a
    move-object/from16 v0, v31

    #@4e3
    array-length v0, v0

    #@4e4
    move/from16 v50, v0

    #@4e6
    move/from16 v0, v22

    #@4e8
    move/from16 v1, v50

    #@4ea
    if-ge v0, v1, :cond_3f

    #@4ec
    .line 697
    aget-boolean v50, p3, v22

    #@4ee
    if-nez v50, :cond_3e

    #@4f0
    aget-boolean v50, v31, v22

    #@4f2
    if-eqz v50, :cond_3e

    #@4f4
    .line 698
    const/16 v50, 0x1

    #@4f6
    aput-boolean v50, p3, v22

    #@4f8
    .line 696
    :cond_3e
    add-int/lit8 v22, v22, 0x1

    #@4fa
    goto :goto_a

    #@4fb
    .line 701
    :cond_3f
    const/16 v50, 0x1

    #@4fd
    return v50

    #@4fe
    .line 584
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method
