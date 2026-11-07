.class public Lsun/security/provider/certpath/DistributionPointFetcher;
.super Ljava/lang/Object;
.source "DistributionPointFetcher.java"


# static fields
.field private static final blacklist ALL_REASONS:[Z

.field private static final blacklist debug:Lsun/security/util/Debug;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_12

    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    return-void

    :array_12
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

.method private constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;
    .registers 8
    .param p0, "name"    # Lsun/security/x509/URIName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 230
    .local v0, "uri":Ljava/net/URI;
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_20

    .line 231
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to fetch CRL from DP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 233
    :cond_20
    const/4 v1, 0x0

    .line 235
    .local v1, "ucs":Ljava/security/cert/CertStore;
    const/4 v2, 0x0

    :try_start_22
    new-instance v3, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    invoke-direct {v3, v0}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;-><init>(Ljava/net/URI;)V

    .line 236
    invoke-static {v3}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v3
    :try_end_2b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_2b} :catch_42
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_2b} :catch_42

    .line 243
    .end local v1    # "ucs":Ljava/security/cert/CertStore;
    .local v3, "ucs":Ljava/security/cert/CertStore;
    nop

    .line 245
    invoke-virtual {v3, v2}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v1

    .line 246
    .local v1, "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 247
    return-object v2

    .line 249
    :cond_37
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    return-object v2

    .line 237
    .end local v3    # "ucs":Ljava/security/cert/CertStore;
    .local v1, "ucs":Ljava/security/cert/CertStore;
    :catch_42
    move-exception v3

    .line 239
    .local v3, "e":Ljava/security/GeneralSecurityException;
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_63

    .line 240
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t create URICertStore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 242
    :cond_63
    return-object v2
.end method

.method private static blacklist getCRLs(Ljava/security/cert/X509CRLSelector;Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .registers 30
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
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 152
    .local p8, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p9, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v2

    .line 153
    .local v2, "fullName":Lsun/security/x509/GeneralNames;
    if-nez v2, :cond_4a

    .line 155
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v3

    .line 156
    .local v3, "relativeName":Lsun/security/x509/RDN;
    if-nez v3, :cond_13

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 160
    :cond_13
    :try_start_13
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    move-result-object v0

    .line 161
    .local v0, "crlIssuers":Lsun/security/x509/GeneralNames;
    if-nez v0, :cond_26

    .line 162
    nop

    .line 163
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    check-cast v4, Lsun/security/x509/X500Name;

    invoke-static {v4, v3}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v4

    move-object v2, v4

    .end local v2    # "fullName":Lsun/security/x509/GeneralNames;
    .local v4, "fullName":Lsun/security/x509/GeneralNames;
    goto :goto_43

    .line 166
    .end local v4    # "fullName":Lsun/security/x509/GeneralNames;
    .restart local v2    # "fullName":Lsun/security/x509/GeneralNames;
    :cond_26
    invoke-virtual {v0}, Lsun/security/x509/GeneralNames;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_32

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 169
    :cond_32
    nop

    .line 170
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v4

    invoke-virtual {v4}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    check-cast v4, Lsun/security/x509/X500Name;

    invoke-static {v4, v3}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v4
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_42} :catch_44

    move-object v2, v4

    .line 175
    .end local v0    # "crlIssuers":Lsun/security/x509/GeneralNames;
    :goto_43
    goto :goto_4a

    .line 173
    :catch_44
    move-exception v0

    .line 174
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 177
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v3    # "relativeName":Lsun/security/x509/RDN;
    :cond_4a
    :goto_4a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 178
    .local v3, "possibleCRLs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    const/4 v0, 0x0

    .line 179
    .local v0, "savedCSE":Ljava/security/cert/CertStoreException;
    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v0

    .end local v0    # "savedCSE":Ljava/security/cert/CertStoreException;
    .local v4, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .local v5, "savedCSE":Ljava/security/cert/CertStoreException;
    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 181
    :try_start_5c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralName;

    .line 182
    .local v0, "name":Lsun/security/x509/GeneralName;
    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7f

    .line 183
    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v6

    check-cast v6, Lsun/security/x509/X500Name;

    .line 184
    .local v6, "x500Name":Lsun/security/x509/X500Name;
    nop

    .line 185
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7
    :try_end_74
    .catch Ljava/security/cert/CertStoreException; {:try_start_5c .. :try_end_74} :catch_9a

    move-object/from16 v8, p8

    :try_start_76
    invoke-static {v6, v7, v8}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    .line 184
    invoke-interface {v3, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 187
    nop

    .end local v6    # "x500Name":Lsun/security/x509/X500Name;
    goto :goto_9e

    :cond_7f
    move-object/from16 v8, p8

    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getType()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_9e

    .line 188
    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v6

    check-cast v6, Lsun/security/x509/URIName;

    .line 189
    .local v6, "uriName":Lsun/security/x509/URIName;
    invoke-static {v6}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;

    move-result-object v7

    .line 190
    .local v7, "crl":Ljava/security/cert/X509CRL;
    if-eqz v7, :cond_9e

    .line 191
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catch Ljava/security/cert/CertStoreException; {:try_start_76 .. :try_end_97} :catch_98

    goto :goto_9e

    .line 194
    .end local v0    # "name":Lsun/security/x509/GeneralName;
    .end local v6    # "uriName":Lsun/security/x509/URIName;
    .end local v7    # "crl":Ljava/security/cert/X509CRL;
    :catch_98
    move-exception v0

    goto :goto_9d

    :catch_9a
    move-exception v0

    move-object/from16 v8, p8

    .line 195
    .local v0, "cse":Ljava/security/cert/CertStoreException;
    :goto_9d
    move-object v5, v0

    .line 196
    .end local v0    # "cse":Ljava/security/cert/CertStoreException;
    :cond_9e
    :goto_9e
    goto :goto_56

    .line 179
    :cond_9f
    move-object/from16 v8, p8

    .line 199
    .end local v4    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ab

    if-nez v5, :cond_aa

    goto :goto_ab

    .line 200
    :cond_aa
    throw v5

    .line 203
    :cond_ab
    :goto_ab
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 204
    .local v4, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/security/cert/X509CRL;

    .line 208
    .local v10, "crl":Ljava/security/cert/X509CRL;
    const/4 v0, 0x0

    :try_start_c4
    invoke-virtual {v1, v0}, Ljava/security/cert/X509CRLSelector;->setIssuerNames(Ljava/util/Collection;)V

    .line 209
    invoke-virtual {v1, v10}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    if-eqz v0, :cond_ea

    move-object/from16 v9, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p9

    move-object/from16 v18, p10

    move-object/from16 v17, v8

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v18}, Lsun/security/provider/certpath/DistributionPointFetcher;->verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 212
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_ea} :catch_eb
    .catch Ljava/security/cert/CRLException; {:try_start_c4 .. :try_end_ea} :catch_eb

    .line 220
    :cond_ea
    goto :goto_10f

    .line 214
    :catch_eb
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_10f

    .line 217
    sget-object v7, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception verifying CRL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "crl":Ljava/security/cert/X509CRL;
    :cond_10f
    :goto_10f
    move-object/from16 v8, p8

    goto :goto_b6

    .line 222
    :cond_112
    return-object v4
.end method

.method public static blacklist getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .registers 17
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
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;[Z",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 78
    .local p4, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p6, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .registers 26
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
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;[Z",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 97
    .local p5, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p7, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 98
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_b

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 102
    :cond_b
    :try_start_b
    invoke-static {v1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    move-object v3, v0

    .line 103
    .local v3, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_30

    .line 104
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DistributionPointFetcher.getCRLs: Checking CRLDPs for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 107
    :cond_30
    nop

    .line 108
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;

    move-result-object v0

    .line 109
    .local v0, "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    if-nez v0, :cond_47

    .line 110
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_42

    .line 111
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string v4, "No CRLDP ext"

    invoke-virtual {v2, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 113
    :cond_42
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 115
    :cond_47
    const-string v2, "points"

    .line 116
    invoke-virtual {v0, v2}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v13, v2

    .line 117
    .local v13, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v14, v2

    .line 118
    .local v14, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v15, v2

    .line 119
    .local v15, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/DistributionPoint;>;"
    :goto_59
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    move-object/from16 v5, p6

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 120
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lsun/security/x509/DistributionPoint;

    .line 121
    .local v4, "point":Lsun/security/x509/DistributionPoint;
    move-object/from16 v2, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-static/range {v2 .. v12}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v16

    move-object/from16 v2, v16

    .line 124
    .local v2, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    invoke-interface {v14, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 125
    nop

    .end local v2    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    .end local v4    # "point":Lsun/security/x509/DistributionPoint;
    goto :goto_59

    .line 126
    .end local v15    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/DistributionPoint;>;"
    :cond_8b
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_b1

    .line 127
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CRLs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b1} :catch_b2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b1} :catch_b2

    .line 129
    :cond_b1
    return-object v14

    .line 130
    .end local v0    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .end local v3    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v13    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .end local v14    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    :catch_b2
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;
    .registers 12
    .param p0, "name"    # Lsun/security/x509/X500Name;
    .param p1, "certIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X500Name;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 266
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1c

    .line 267
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to fetch CRL from DP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 269
    :cond_1c
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 270
    .local v0, "xcs":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 271
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    const/4 v2, 0x0

    .line 274
    .local v2, "savedCSE":Ljava/security/cert/CertStoreException;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CertStore;

    .line 276
    .local v4, "store":Ljava/security/cert/CertStore;
    :try_start_41
    invoke-virtual {v4, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/CRL;

    .line 277
    .local v6, "crl":Ljava/security/cert/CRL;
    move-object v7, v6

    check-cast v7, Ljava/security/cert/X509CRL;

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/security/cert/CertStoreException; {:try_start_41 .. :try_end_5b} :catch_5e

    .line 278
    nop

    .end local v6    # "crl":Ljava/security/cert/CRL;
    goto :goto_49

    .line 286
    :cond_5d
    goto :goto_88

    .line 279
    :catch_5e
    move-exception v5

    .line 280
    .local v5, "cse":Ljava/security/cert/CertStoreException;
    sget-object v6, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_7e

    .line 281
    sget-object v6, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while retrieving CRLs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v5}, Ljava/security/cert/CertStoreException;->printStackTrace()V

    .line 285
    :cond_7e
    new-instance v6, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    invoke-virtual {v4}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    move-object v2, v6

    .line 287
    .end local v4    # "store":Ljava/security/cert/CertStore;
    .end local v5    # "cse":Ljava/security/cert/CertStoreException;
    :goto_88
    goto :goto_35

    .line 289
    :cond_89
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_93

    if-nez v2, :cond_92

    goto :goto_93

    .line 290
    :cond_92
    throw v2

    .line 292
    :cond_93
    :goto_93
    return-object v1
.end method

.method private static blacklist getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    .registers 6
    .param p0, "issuer"    # Lsun/security/x509/X500Name;
    .param p1, "rdn"    # Lsun/security/x509/RDN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lsun/security/x509/X500Name;->rdns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 718
    .local v0, "rdns":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v1, Lsun/security/x509/X500Name;

    const/4 v2, 0x0

    new-array v2, v2, [Lsun/security/x509/RDN;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V

    .line 720
    .local v1, "fullName":Lsun/security/x509/X500Name;
    new-instance v2, Lsun/security/x509/GeneralNames;

    invoke-direct {v2}, Lsun/security/x509/GeneralNames;-><init>()V

    .line 721
    .local v2, "fullNames":Lsun/security/x509/GeneralNames;
    new-instance v3, Lsun/security/x509/GeneralName;

    invoke-direct {v3, v1}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    invoke-virtual {v2, v3}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    .line 722
    return-object v2
.end method

.method private static blacklist issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z
    .registers 9
    .param p0, "cert"    # Lsun/security/x509/X509CertImpl;
    .param p1, "crl"    # Lsun/security/x509/X509CRLImpl;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 735
    const/4 v0, 0x0

    .line 737
    .local v0, "matched":Z
    new-instance v1, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-direct {v1}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    .line 741
    .local v1, "issuerSelector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getKeyUsage()[Z

    move-result-object v2

    .line 742
    .local v2, "usages":[Z
    if-eqz v2, :cond_13

    .line 743
    const/4 v3, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 744
    invoke-virtual {v1, v2}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setKeyUsage([Z)V

    .line 748
    :cond_13
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 749
    .local v3, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v3}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 759
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v4

    .line 760
    .local v4, "crlAKID":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    invoke-virtual {v1, v4}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSkiAndSerialNumber(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V

    .line 762
    invoke-virtual {v1, p0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    .line 765
    if-eqz v0, :cond_3a

    if-eqz v4, :cond_2f

    .line 766
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v5

    if-nez v5, :cond_3a

    .line 768
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lsun/security/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/security/GeneralSecurityException; {:try_start_2f .. :try_end_36} :catch_38

    .line 769
    const/4 v0, 0x1

    .line 772
    goto :goto_3a

    .line 770
    :catch_38
    move-exception v5

    .line 771
    .local v5, "e":Ljava/security/GeneralSecurityException;
    const/4 v0, 0x0

    .line 775
    .end local v5    # "e":Ljava/security/GeneralSecurityException;
    :cond_3a
    :goto_3a
    return v0
.end method

.method static blacklist verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z
    .registers 37
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
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List<",
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

    .line 322
    .local p8, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p9, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_4a

    .line 323
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DistributionPointFetcher.verifyCRL: checking revocation status for\n  SN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 325
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n  Subject: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 326
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n  Issuer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 327
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 323
    invoke-virtual {v0, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 330
    :cond_4a
    const/4 v0, 0x0

    .line 331
    .local v0, "indirectCRL":Z
    invoke-static {v2}, Lsun/security/x509/X509CRLImpl;->toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    move-result-object v6

    .line 332
    .local v6, "crlImpl":Lsun/security/x509/X509CRLImpl;
    nop

    .line 333
    invoke-virtual {v6}, Lsun/security/x509/X509CRLImpl;->getIssuingDistributionPointExtension()Lsun/security/x509/IssuingDistributionPointExtension;

    move-result-object v7

    .line 334
    .local v7, "idpExt":Lsun/security/x509/IssuingDistributionPointExtension;
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    check-cast v8, Lsun/security/x509/X500Name;

    .line 335
    .local v8, "certIssuer":Lsun/security/x509/X500Name;
    invoke-virtual {v6}, Lsun/security/x509/X509CRLImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    check-cast v9, Lsun/security/x509/X500Name;

    .line 341
    .local v9, "crlIssuer":Lsun/security/x509/X500Name;
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    move-result-object v10

    .line 342
    .local v10, "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    const/4 v11, 0x0

    .line 343
    .local v11, "pointCrlIssuer":Lsun/security/x509/X500Name;
    const/4 v12, 0x1

    if-eqz v10, :cond_c7

    .line 344
    if-eqz v7, :cond_c2

    .line 346
    const-string v14, "indirect_crl"

    invoke-virtual {v7, v14}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 347
    invoke-virtual {v14, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7f

    move/from16 v16, v0

    const/16 v17, 0x0

    goto :goto_c6

    .line 350
    :cond_7f
    const/4 v14, 0x0

    .line 351
    .local v14, "match":Z
    invoke-virtual {v10}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 352
    .local v15, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_84
    if-nez v14, :cond_a9

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a9

    .line 353
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lsun/security/x509/GeneralName;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v13

    .line 354
    .local v13, "name":Lsun/security/x509/GeneralNameInterface;
    move/from16 v16, v0

    .end local v0    # "indirectCRL":Z
    .local v16, "indirectCRL":Z
    invoke-virtual {v9, v13}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v12, :cond_a6

    .line 355
    move-object v0, v13

    check-cast v0, Lsun/security/x509/X500Name;

    .line 356
    .end local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .local v0, "pointCrlIssuer":Lsun/security/x509/X500Name;
    const/4 v11, 0x1

    move v14, v11

    move-object v11, v0

    .line 358
    .end local v0    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .end local v13    # "name":Lsun/security/x509/GeneralNameInterface;
    .restart local v11    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_a6
    move/from16 v0, v16

    goto :goto_84

    .line 352
    .end local v16    # "indirectCRL":Z
    .local v0, "indirectCRL":Z
    :cond_a9
    move/from16 v16, v0

    const/16 v17, 0x0

    .line 359
    .end local v0    # "indirectCRL":Z
    .end local v15    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v16    # "indirectCRL":Z
    if-nez v14, :cond_b0

    .line 360
    return v17

    .line 365
    :cond_b0
    invoke-static {v1, v6, v5}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 367
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .end local p5    # "prevKey":Ljava/security/PublicKey;
    .local v0, "prevKey":Ljava/security/PublicKey;
    goto :goto_c0

    .line 369
    .end local v0    # "prevKey":Ljava/security/PublicKey;
    .restart local p5    # "prevKey":Ljava/security/PublicKey;
    :cond_bb
    const/4 v0, 0x1

    move/from16 v16, v0

    move-object/from16 v0, p5

    .line 371
    .end local v14    # "match":Z
    .end local p5    # "prevKey":Ljava/security/PublicKey;
    .restart local v0    # "prevKey":Ljava/security/PublicKey;
    :goto_c0
    move-object v14, v0

    goto :goto_129

    .line 344
    .end local v16    # "indirectCRL":Z
    .local v0, "indirectCRL":Z
    .restart local p5    # "prevKey":Ljava/security/PublicKey;
    :cond_c2
    move/from16 v16, v0

    const/16 v17, 0x0

    .line 348
    .end local v0    # "indirectCRL":Z
    .restart local v16    # "indirectCRL":Z
    :goto_c6
    return v17

    .line 371
    .end local v16    # "indirectCRL":Z
    .restart local v0    # "indirectCRL":Z
    :cond_c7
    move/from16 v16, v0

    const/16 v17, 0x0

    .end local v0    # "indirectCRL":Z
    .restart local v16    # "indirectCRL":Z
    invoke-virtual {v9, v8}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    .line 372
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_f7

    .line 373
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "crl issuer does not equal cert issuer.\ncrl issuer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\ncert issuer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 377
    :cond_f7
    return v17

    .line 380
    :cond_f8
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v0

    .line 381
    .local v0, "certAKID":Lsun/security/x509/KeyIdentifier;
    invoke-virtual {v6}, Lsun/security/x509/X509CRLImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v13

    .line 383
    .local v13, "crlAKID":Lsun/security/x509/KeyIdentifier;
    if-eqz v0, :cond_11c

    if-nez v13, :cond_105

    goto :goto_11c

    .line 392
    :cond_105
    invoke-virtual {v0, v13}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_127

    .line 395
    invoke-static {v1, v6, v5}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_116

    .line 397
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    .end local p5    # "prevKey":Ljava/security/PublicKey;
    .local v14, "prevKey":Ljava/security/PublicKey;
    goto :goto_129

    .line 399
    .end local v14    # "prevKey":Ljava/security/PublicKey;
    .restart local p5    # "prevKey":Ljava/security/PublicKey;
    :cond_116
    const/4 v14, 0x1

    move/from16 v16, v14

    move-object/from16 v14, p5

    .end local v16    # "indirectCRL":Z
    .local v14, "indirectCRL":Z
    goto :goto_129

    .line 388
    .end local v14    # "indirectCRL":Z
    .restart local v16    # "indirectCRL":Z
    :cond_11c
    :goto_11c
    invoke-static {v1, v6, v5}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_127

    .line 390
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    .end local p5    # "prevKey":Ljava/security/PublicKey;
    .local v14, "prevKey":Ljava/security/PublicKey;
    goto :goto_129

    .line 404
    .end local v0    # "certAKID":Lsun/security/x509/KeyIdentifier;
    .end local v13    # "crlAKID":Lsun/security/x509/KeyIdentifier;
    .end local v14    # "prevKey":Ljava/security/PublicKey;
    .restart local p5    # "prevKey":Ljava/security/PublicKey;
    :cond_127
    move-object/from16 v14, p5

    .end local p5    # "prevKey":Ljava/security/PublicKey;
    .restart local v14    # "prevKey":Ljava/security/PublicKey;
    :goto_129
    if-nez v16, :cond_12e

    if-nez p4, :cond_12e

    .line 406
    return v17

    .line 409
    :cond_12e
    if-eqz v7, :cond_344

    .line 410
    nop

    .line 411
    const-string v0, "point"

    invoke-virtual {v7, v0}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/DistributionPointName;

    .line 412
    .local v0, "idpPoint":Lsun/security/x509/DistributionPointName;
    if-eqz v0, :cond_2d8

    .line 413
    invoke-virtual {v0}, Lsun/security/x509/DistributionPointName;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v13

    .line 414
    .local v13, "idpNames":Lsun/security/x509/GeneralNames;
    if-nez v13, :cond_17b

    .line 415
    invoke-virtual {v0}, Lsun/security/x509/DistributionPointName;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v15

    .line 416
    .local v15, "relativeName":Lsun/security/x509/RDN;
    if-nez v15, :cond_158

    .line 417
    sget-object v12, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_155

    .line 418
    sget-object v12, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    move-object/from16 p5, v0

    .end local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .local p5, "idpPoint":Lsun/security/x509/DistributionPointName;
    const-string v0, "IDP must be relative or full DN"

    invoke-virtual {v12, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_157

    .line 417
    .end local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :cond_155
    move-object/from16 p5, v0

    .line 420
    .end local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :goto_157
    return v17

    .line 422
    .end local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :cond_158
    move-object/from16 p5, v0

    .end local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_176

    .line 423
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IDP relativeName:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 425
    :cond_176
    invoke-static {v9, v15}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v13

    goto :goto_17d

    .line 414
    .end local v15    # "relativeName":Lsun/security/x509/RDN;
    .end local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :cond_17b
    move-object/from16 p5, v0

    .line 430
    .end local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :goto_17d
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v0

    if-nez v0, :cond_1cc

    .line 431
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v0

    if-eqz v0, :cond_18a

    goto :goto_1cc

    .line 489
    :cond_18a
    const/4 v0, 0x0

    .line 490
    .local v0, "match":Z
    invoke-virtual {v10}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 491
    .local v1, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_18f
    if-nez v0, :cond_1c3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c3

    .line 492
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/security/x509/GeneralName;

    invoke-virtual {v12}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v12

    .line 493
    .local v12, "crlIssuerName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v13}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 494
    .local v15, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_1a5
    if-nez v0, :cond_1be

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1be

    .line 495
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lsun/security/x509/GeneralName;

    move/from16 v20, v0

    .end local v0    # "match":Z
    .local v20, "match":Z
    invoke-virtual/range {v19 .. v19}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 496
    .local v0, "idpName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 497
    .end local v20    # "match":Z
    .local v0, "match":Z
    goto :goto_1a5

    .line 494
    :cond_1be
    move/from16 v20, v0

    .line 498
    .end local v0    # "match":Z
    .end local v12    # "crlIssuerName":Lsun/security/x509/GeneralNameInterface;
    .end local v15    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v20    # "match":Z
    move/from16 v0, v20

    goto :goto_18f

    .line 499
    .end local v1    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v20    # "match":Z
    .restart local v0    # "match":Z
    :cond_1c3
    if-nez v0, :cond_1c6

    .line 500
    return v17

    .line 499
    :cond_1c6
    move-object/from16 v21, v6

    move-object/from16 v23, v8

    goto/16 :goto_2de

    .line 432
    .end local v0    # "match":Z
    :cond_1cc
    :goto_1cc
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v0

    .line 433
    .local v0, "pointNames":Lsun/security/x509/GeneralNames;
    if-nez v0, :cond_225

    .line 434
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v1

    .line 435
    .local v1, "relativeName":Lsun/security/x509/RDN;
    if-nez v1, :cond_1e4

    .line 436
    sget-object v12, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_1e3

    .line 437
    sget-object v12, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string v15, "DP must be relative or full DN"

    invoke-virtual {v12, v15}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 439
    :cond_1e3
    return v17

    .line 441
    :cond_1e4
    sget-object v12, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_203

    .line 442
    sget-object v12, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .local v19, "pointNames":Lsun/security/x509/GeneralNames;
    const-string v0, "DP relativeName:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_205

    .line 441
    .end local v19    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    :cond_203
    move-object/from16 v19, v0

    .line 444
    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v19    # "pointNames":Lsun/security/x509/GeneralNames;
    :goto_205
    if-eqz v16, :cond_220

    .line 445
    invoke-virtual {v10}, Lsun/security/x509/GeneralNames;->size()I

    move-result v0

    const/4 v12, 0x1

    if-eq v0, v12, :cond_21a

    .line 448
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_219

    .line 449
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string v12, "must only be one CRL issuer when relative name present"

    invoke-virtual {v0, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 452
    :cond_219
    return v17

    .line 454
    :cond_21a
    nop

    .line 455
    invoke-static {v11, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v0

    .end local v19    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    goto :goto_227

    .line 457
    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v19    # "pointNames":Lsun/security/x509/GeneralNames;
    :cond_220
    invoke-static {v8, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v0

    .end local v19    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    goto :goto_227

    .line 433
    .end local v1    # "relativeName":Lsun/security/x509/RDN;
    :cond_225
    move-object/from16 v19, v0

    .line 460
    :goto_227
    const/4 v1, 0x0

    .line 461
    .local v1, "match":Z
    invoke-virtual {v13}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 462
    .local v12, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_22c
    if-nez v1, :cond_2c1

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2c1

    .line 463
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lsun/security/x509/GeneralName;

    invoke-virtual {v15}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v15

    .line 464
    .local v15, "idpName":Lsun/security/x509/GeneralNameInterface;
    sget-object v19, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v19, :cond_261

    .line 465
    move-object/from16 v19, v0

    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v19    # "pointNames":Lsun/security/x509/GeneralNames;
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    move/from16 v20, v1

    .end local v1    # "match":Z
    .restart local v20    # "match":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    .end local v6    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .local v21, "crlImpl":Lsun/security/x509/X509CRLImpl;
    const-string v6, "idpName: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_267

    .line 464
    .end local v19    # "pointNames":Lsun/security/x509/GeneralNames;
    .end local v20    # "match":Z
    .end local v21    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .restart local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v1    # "match":Z
    .restart local v6    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    :cond_261
    move-object/from16 v19, v0

    move/from16 v20, v1

    move-object/from16 v21, v6

    .line 467
    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .end local v1    # "match":Z
    .end local v6    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .restart local v19    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v20    # "match":Z
    .restart local v21    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    :goto_267
    invoke-virtual/range {v19 .. v19}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v1, v20

    .line 468
    .end local v20    # "match":Z
    .local v0, "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v1    # "match":Z
    :goto_26d
    if-nez v1, :cond_2b1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b1

    .line 469
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/GeneralName;

    invoke-virtual {v6}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v6

    .line 470
    .local v6, "pointName":Lsun/security/x509/GeneralNameInterface;
    sget-object v20, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v20, :cond_2a2

    .line 471
    move-object/from16 v22, v0

    .end local v0    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .local v22, "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    move/from16 v20, v1

    .end local v1    # "match":Z
    .restart local v20    # "match":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v8

    .end local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .local v23, "certIssuer":Lsun/security/x509/X500Name;
    const-string v8, "pointName: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_2a8

    .line 470
    .end local v20    # "match":Z
    .end local v22    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v23    # "certIssuer":Lsun/security/x509/X500Name;
    .restart local v0    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v1    # "match":Z
    .restart local v8    # "certIssuer":Lsun/security/x509/X500Name;
    :cond_2a2
    move-object/from16 v22, v0

    move/from16 v20, v1

    move-object/from16 v23, v8

    .line 473
    .end local v0    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v1    # "match":Z
    .end local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .restart local v20    # "match":Z
    .restart local v22    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v23    # "certIssuer":Lsun/security/x509/X500Name;
    :goto_2a8
    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 474
    .end local v6    # "pointName":Lsun/security/x509/GeneralNameInterface;
    .end local v20    # "match":Z
    .restart local v1    # "match":Z
    move-object/from16 v0, v22

    move-object/from16 v8, v23

    goto :goto_26d

    .line 468
    .end local v22    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v23    # "certIssuer":Lsun/security/x509/X500Name;
    .restart local v0    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v8    # "certIssuer":Lsun/security/x509/X500Name;
    :cond_2b1
    move-object/from16 v22, v0

    move/from16 v20, v1

    move-object/from16 v23, v8

    .line 475
    .end local v0    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v1    # "match":Z
    .end local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .end local v15    # "idpName":Lsun/security/x509/GeneralNameInterface;
    .restart local v20    # "match":Z
    .restart local v23    # "certIssuer":Lsun/security/x509/X500Name;
    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v6, v21

    move-object/from16 v8, v23

    goto/16 :goto_22c

    .line 462
    .end local v19    # "pointNames":Lsun/security/x509/GeneralNames;
    .end local v20    # "match":Z
    .end local v21    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .end local v23    # "certIssuer":Lsun/security/x509/X500Name;
    .local v0, "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v1    # "match":Z
    .local v6, "crlImpl":Lsun/security/x509/X509CRLImpl;
    .restart local v8    # "certIssuer":Lsun/security/x509/X500Name;
    :cond_2c1
    move-object/from16 v19, v0

    move/from16 v20, v1

    move-object/from16 v21, v6

    move-object/from16 v23, v8

    .line 476
    .end local v0    # "pointNames":Lsun/security/x509/GeneralNames;
    .end local v1    # "match":Z
    .end local v6    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .end local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .end local v12    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v19    # "pointNames":Lsun/security/x509/GeneralNames;
    .restart local v20    # "match":Z
    .restart local v21    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .restart local v23    # "certIssuer":Lsun/security/x509/X500Name;
    if-nez v20, :cond_2d7

    .line 477
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_2d6

    .line 478
    sget-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string v1, "IDP name does not match DP name"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 480
    :cond_2d6
    return v17

    .line 486
    .end local v19    # "pointNames":Lsun/security/x509/GeneralNames;
    .end local v20    # "match":Z
    :cond_2d7
    goto :goto_2de

    .line 412
    .end local v13    # "idpNames":Lsun/security/x509/GeneralNames;
    .end local v21    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .end local v23    # "certIssuer":Lsun/security/x509/X500Name;
    .end local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .local v0, "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v6    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .restart local v8    # "certIssuer":Lsun/security/x509/X500Name;
    :cond_2d8
    move-object/from16 p5, v0

    move-object/from16 v21, v6

    move-object/from16 v23, v8

    .line 507
    .end local v0    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .end local v6    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .end local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .restart local v21    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .restart local v23    # "certIssuer":Lsun/security/x509/X500Name;
    .restart local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :goto_2de
    nop

    .line 508
    const-string v0, "only_user_certs"

    invoke-virtual {v7, v0}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 509
    .local v0, "b":Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, -0x1

    if-eqz v1, :cond_302

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getBasicConstraints()I

    move-result v1

    if-eq v1, v6, :cond_302

    .line 510
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_301

    .line 511
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string v6, "cert must be a EE cert"

    invoke-virtual {v1, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 513
    :cond_301
    return v17

    .line 518
    :cond_302
    nop

    .line 519
    const-string v1, "only_ca_certs"

    invoke-virtual {v7, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    .line 520
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_326

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getBasicConstraints()I

    move-result v1

    if-ne v1, v6, :cond_326

    .line 521
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_325

    .line 522
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string v6, "cert must be a CA cert"

    invoke-virtual {v1, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 524
    :cond_325
    return v17

    .line 529
    :cond_326
    nop

    .line 530
    const-string v1, "only_attribute_certs"

    invoke-virtual {v7, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    .line 531
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_348

    .line 532
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_343

    .line 533
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string v6, "cert must not be an AA cert"

    invoke-virtual {v1, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 535
    :cond_343
    return v17

    .line 409
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v21    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .end local v23    # "certIssuer":Lsun/security/x509/X500Name;
    .end local p5    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v6    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .restart local v8    # "certIssuer":Lsun/security/x509/X500Name;
    :cond_344
    move-object/from16 v21, v6

    move-object/from16 v23, v8

    .line 540
    .end local v6    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .end local v8    # "certIssuer":Lsun/security/x509/X500Name;
    .restart local v21    # "crlImpl":Lsun/security/x509/X509CRLImpl;
    .restart local v23    # "certIssuer":Lsun/security/x509/X500Name;
    :cond_348
    const/16 v0, 0x9

    new-array v0, v0, [Z

    .line 541
    .local v0, "interimReasonsMask":[Z
    const/4 v1, 0x0

    .line 542
    .local v1, "reasons":Lsun/security/x509/ReasonFlags;
    if-eqz v7, :cond_359

    .line 543
    nop

    .line 544
    const-string v6, "reasons"

    invoke-virtual {v7, v6}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lsun/security/x509/ReasonFlags;

    .line 547
    :cond_359
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getReasonFlags()[Z

    move-result-object v6

    .line 548
    .local v6, "pointReasonFlags":[Z
    if-eqz v1, :cond_38e

    .line 549
    if-eqz v6, :cond_381

    .line 552
    invoke-virtual {v1}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    move-result-object v8

    .line 553
    .local v8, "idpReasonFlags":[Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_366
    array-length v13, v0

    if-ge v12, v13, :cond_380

    .line 554
    array-length v13, v8

    if-ge v12, v13, :cond_379

    aget-boolean v13, v8, v12

    if-eqz v13, :cond_379

    array-length v13, v6

    if-ge v12, v13, :cond_379

    aget-boolean v13, v6, v12

    if-eqz v13, :cond_379

    const/4 v13, 0x1

    goto :goto_37b

    :cond_379
    move/from16 v13, v17

    :goto_37b
    aput-boolean v13, v0, v12

    .line 553
    add-int/lit8 v12, v12, 0x1

    goto :goto_366

    .line 558
    .end local v8    # "idpReasonFlags":[Z
    .end local v12    # "i":I
    :cond_380
    goto :goto_3a1

    .line 562
    :cond_381
    invoke-virtual {v1}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    move-result-object v8

    invoke-virtual {v8}, [Z->clone()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Z

    move-object v8, v0

    goto :goto_3a2

    .line 564
    :cond_38e
    if-eqz v7, :cond_392

    if-nez v1, :cond_3a1

    .line 565
    :cond_392
    if-eqz v6, :cond_39d

    .line 567
    invoke-virtual {v6}, [Z->clone()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Z

    move-object v8, v0

    goto :goto_3a2

    .line 570
    :cond_39d
    const/4 v12, 0x1

    invoke-static {v0, v12}, Ljava/util/Arrays;->fill([ZZ)V

    .line 576
    :cond_3a1
    :goto_3a1
    move-object v8, v0

    .end local v0    # "interimReasonsMask":[Z
    .local v8, "interimReasonsMask":[Z
    :goto_3a2
    const/4 v0, 0x0

    .line 577
    .local v0, "oneOrMore":Z
    const/4 v12, 0x0

    move/from16 v25, v12

    move v12, v0

    move/from16 v0, v25

    .local v0, "i":I
    .local v12, "oneOrMore":Z
    :goto_3a9
    array-length v13, v8

    if-ge v0, v13, :cond_3bd

    if-nez v12, :cond_3bd

    .line 578
    aget-boolean v13, v8, v0

    if-eqz v13, :cond_3ba

    array-length v13, v3

    if-ge v0, v13, :cond_3b9

    aget-boolean v13, v3, v0

    if-nez v13, :cond_3ba

    .line 581
    :cond_3b9
    const/4 v12, 0x1

    .line 577
    :cond_3ba
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a9

    .line 584
    .end local v0    # "i":I
    :cond_3bd
    if-nez v12, :cond_3c0

    .line 585
    return v17

    .line 591
    :cond_3c0
    if-eqz v16, :cond_46c

    .line 592
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    move-object v13, v0

    .line 593
    .local v13, "certSel":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v9}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 594
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_508

    move-object v15, v0

    .line 595
    .local v15, "crlSign":[Z
    invoke-virtual {v13, v15}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    .line 607
    nop

    .line 608
    move-object/from16 p5, v1

    .end local v1    # "reasons":Lsun/security/x509/ReasonFlags;
    .local p5, "reasons":Lsun/security/x509/ReasonFlags;
    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v1

    .line 609
    .local v1, "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v1, :cond_403

    .line 610
    invoke-virtual {v1}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->getEncodedKeyIdentifier()[B

    move-result-object v0

    .line 611
    .local v0, "kid":[B
    if-eqz v0, :cond_3eb

    .line 612
    invoke-virtual {v13, v0}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    .line 615
    :cond_3eb
    move-object/from16 v19, v0

    .end local v0    # "kid":[B
    .local v19, "kid":[B
    const-string v0, "serial_number"

    invoke-virtual {v1, v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/SerialNumber;

    .line 617
    .local v0, "asn":Lsun/security/x509/SerialNumber;
    if-eqz v0, :cond_401

    .line 618
    move-object/from16 v20, v0

    .end local v0    # "asn":Lsun/security/x509/SerialNumber;
    .local v20, "asn":Lsun/security/x509/SerialNumber;
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    goto :goto_403

    .line 617
    .end local v20    # "asn":Lsun/security/x509/SerialNumber;
    .restart local v0    # "asn":Lsun/security/x509/SerialNumber;
    :cond_401
    move-object/from16 v20, v0

    .line 628
    .end local v0    # "asn":Lsun/security/x509/SerialNumber;
    .end local v19    # "kid":[B
    :cond_403
    :goto_403
    new-instance v0, Ljava/util/HashSet;

    move-object/from16 v19, v1

    move-object/from16 v1, p8

    .end local v1    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .local v19, "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v20, v0

    .line 630
    .local v20, "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    if-eqz v14, :cond_429

    .line 637
    const/4 v0, 0x0

    if-eqz v4, :cond_419

    .line 638
    new-instance v1, Ljava/security/cert/TrustAnchor;

    invoke-direct {v1, v4, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .local v1, "temporary":Ljava/security/cert/TrustAnchor;
    goto :goto_423

    .line 640
    .end local v1    # "temporary":Ljava/security/cert/TrustAnchor;
    :cond_419
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 641
    .local v1, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v4, Ljava/security/cert/TrustAnchor;

    invoke-direct {v4, v1, v14, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V

    move-object v1, v4

    .line 643
    .local v1, "temporary":Ljava/security/cert/TrustAnchor;
    :goto_423
    move-object/from16 v4, v20

    .end local v20    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local v4, "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_42b

    .line 630
    .end local v1    # "temporary":Ljava/security/cert/TrustAnchor;
    .end local v4    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .restart local v20    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_429
    move-object/from16 v4, v20

    .line 646
    .end local v20    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .restart local v4    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :goto_42b
    const/4 v1, 0x0

    .line 648
    .local v1, "params":Ljava/security/cert/PKIXBuilderParameters;
    :try_start_42c
    new-instance v0, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v0, v4, v13}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_431
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_42c .. :try_end_431} :catch_45f

    move-object v1, v0

    .line 651
    nop

    .line 652
    move-object/from16 v20, v4

    move-object/from16 v4, p9

    .end local v4    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .restart local v20    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {v1, v4}, Ljava/security/cert/PKIXBuilderParameters;->setCertStores(Ljava/util/List;)V

    .line 653
    invoke-virtual {v1, v5}, Ljava/security/cert/PKIXBuilderParameters;->setSigProvider(Ljava/lang/String;)V

    .line 654
    move-object/from16 v4, p10

    invoke-virtual {v1, v4}, Ljava/security/cert/PKIXBuilderParameters;->setDate(Ljava/util/Date;)V

    .line 656
    :try_start_442
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0

    .line 657
    .local v0, "builder":Ljava/security/cert/CertPathBuilder;
    nop

    .line 658
    invoke-virtual {v0, v1}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v22

    check-cast v22, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 659
    .local v22, "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/PKIXCertPathBuilderResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v24
    :try_end_453
    .catch Ljava/security/GeneralSecurityException; {:try_start_442 .. :try_end_453} :catch_456

    move-object/from16 v14, v24

    .line 662
    .end local v0    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v22    # "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    goto :goto_470

    .line 660
    :catch_456
    move-exception v0

    .line 661
    .local v0, "e":Ljava/security/GeneralSecurityException;
    move-object/from16 v22, v1

    .end local v1    # "params":Ljava/security/cert/PKIXBuilderParameters;
    .local v22, "params":Ljava/security/cert/PKIXBuilderParameters;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 649
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v20    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v22    # "params":Ljava/security/cert/PKIXBuilderParameters;
    .restart local v1    # "params":Ljava/security/cert/PKIXBuilderParameters;
    .restart local v4    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :catch_45f
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v4, p10

    .line 650
    .end local v4    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local v0, "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v20    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    move-object/from16 v22, v1

    .end local v1    # "params":Ljava/security/cert/PKIXBuilderParameters;
    .restart local v22    # "params":Ljava/security/cert/PKIXBuilderParameters;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 591
    .end local v0    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .end local v13    # "certSel":Ljava/security/cert/X509CertSelector;
    .end local v15    # "crlSign":[Z
    .end local v19    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v20    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v22    # "params":Ljava/security/cert/PKIXBuilderParameters;
    .end local p5    # "reasons":Lsun/security/x509/ReasonFlags;
    .local v1, "reasons":Lsun/security/x509/ReasonFlags;
    :cond_46c
    move-object/from16 v4, p10

    move-object/from16 p5, v1

    .line 667
    .end local v1    # "reasons":Lsun/security/x509/ReasonFlags;
    .restart local p5    # "reasons":Lsun/security/x509/ReasonFlags;
    :goto_470
    :try_start_470
    invoke-static {v14, v2}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Ljava/security/cert/X509CRL;)V
    :try_end_473
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_470 .. :try_end_473} :catch_4e9

    .line 673
    nop

    .line 677
    :try_start_474
    invoke-virtual {v2, v14, v5}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_477
    .catch Ljava/security/GeneralSecurityException; {:try_start_474 .. :try_end_477} :catch_4dc

    .line 683
    nop

    .line 686
    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 688
    .local v0, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_4c0

    .line 689
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 690
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c0

    .line 691
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_4bf

    .line 692
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unrecognized critical extension(s) in CRL: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 694
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 695
    .local v13, "ext":Ljava/lang/String;
    sget-object v15, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    invoke-virtual {v15, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 696
    .end local v13    # "ext":Ljava/lang/String;
    goto :goto_4ad

    .line 698
    :cond_4bf
    return v17

    .line 703
    :cond_4c0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4c1
    array-length v13, v3

    if-ge v1, v13, :cond_4d9

    .line 704
    aget-boolean v13, v3, v1

    if-nez v13, :cond_4d3

    array-length v13, v8

    if-ge v1, v13, :cond_4d0

    aget-boolean v13, v8, v1

    if-eqz v13, :cond_4d0

    goto :goto_4d3

    :cond_4d0
    move/from16 v13, v17

    goto :goto_4d4

    :cond_4d3
    :goto_4d3
    const/4 v13, 0x1

    :goto_4d4
    aput-boolean v13, v3, v1

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c1

    .line 707
    .end local v1    # "i":I
    :cond_4d9
    const/16 v18, 0x1

    return v18

    .line 678
    .end local v0    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_4dc
    move-exception v0

    .line 679
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_4e8

    .line 680
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string v13, "CRL signature failed to verify"

    invoke-virtual {v1, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 682
    :cond_4e8
    return v17

    .line 668
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_4e9
    move-exception v0

    .line 669
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_506

    .line 670
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CRL signature algorithm check failed: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 672
    :cond_506
    return v17

    nop

    :array_508
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
