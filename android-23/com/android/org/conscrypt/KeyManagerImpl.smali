.class public Lcom/android/org/conscrypt/KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerImpl.java"


# instance fields
.field private final hash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;[C)V
    .locals 7
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "pwd"    # [C

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    #@3
    .line 62
    new-instance v6, Ljava/util/Hashtable;

    #@5
    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v6, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    #@a
    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    #@d
    move-result-object v1

    #@e
    .line 69
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_1

    #@14
    .line 70
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    .line 72
    .local v0, "alias":Ljava/lang/String;
    :try_start_1
    const-class v6, Ljava/security/KeyStore$PrivateKeyEntry;

    #@1c
    invoke-virtual {p1, v0, v6}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_0

    #@22
    .line 74
    new-instance v6, Ljava/security/KeyStore$PasswordProtection;

    #@24
    invoke-direct {v6, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    #@27
    .line 73
    invoke-virtual {p1, v0, v6}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Ljava/security/KeyStore$PrivateKeyEntry;

    #@2d
    .line 75
    .local v5, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    iget-object v6, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    #@2f
    invoke-virtual {v6, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    #@32
    goto :goto_0

    #@33
    .line 77
    .end local v5    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_0
    move-exception v2

    #@34
    .local v2, "e":Ljava/security/KeyStoreException;
    goto :goto_0

    #@35
    .line 66
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v2

    #@36
    .line 67
    .restart local v2    # "e":Ljava/security/KeyStoreException;
    return-void

    #@37
    .line 61
    .end local v2    # "e":Ljava/security/KeyStoreException;
    .restart local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    return-void

    #@38
    .line 79
    .restart local v0    # "alias":Ljava/lang/String;
    :catch_2
    move-exception v4

    #@39
    .local v4, "e":Ljava/security/UnrecoverableEntryException;
    goto :goto_0

    #@3a
    .line 81
    .end local v4    # "e":Ljava/security/UnrecoverableEntryException;
    :catch_3
    move-exception v3

    #@3b
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method

.method private chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 22
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 152
    if-eqz p1, :cond_0

    #@2
    move-object/from16 v0, p1

    #@4
    array-length v0, v0

    #@5
    move/from16 v17, v0

    #@7
    if-nez v17, :cond_1

    #@9
    .line 153
    :cond_0
    const/16 v17, 0x0

    #@b
    return-object v17

    #@c
    .line 155
    :cond_1
    if-nez p2, :cond_4

    #@e
    const/4 v13, 0x0

    #@f
    .line 156
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    #@11
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 157
    .local v10, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    #@18
    move-object/from16 v17, v0

    #@1a
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@1d
    move-result-object v3

    #@1e
    .local v3, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@21
    move-result v17

    #@22
    if-eqz v17, :cond_d

    #@24
    .line 158
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/lang/String;

    #@2a
    .line 159
    .local v2, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    #@2e
    move-object/from16 v17, v0

    #@30
    move-object/from16 v0, v17

    #@32
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v9

    #@36
    check-cast v9, Ljava/security/KeyStore$PrivateKeyEntry;

    #@38
    .line 160
    .local v9, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v9}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    #@3b
    move-result-object v8

    #@3c
    .line 161
    .local v8, "chain":[Ljava/security/cert/Certificate;
    const/16 v17, 0x0

    #@3e
    aget-object v4, v8, v17

    #@40
    .line 162
    .local v4, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@43
    move-result-object v17

    #@44
    invoke-interface/range {v17 .. v17}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    .line 163
    .local v6, "certKeyAlg":Ljava/lang/String;
    instance-of v0, v4, Ljava/security/cert/X509Certificate;

    #@4a
    move/from16 v17, v0

    #@4c
    if-eqz v17, :cond_5

    #@4e
    .line 164
    check-cast v4, Ljava/security/cert/X509Certificate;

    #@50
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    #@53
    move-result-object v17

    #@54
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@56
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    .line 166
    :goto_1
    const/16 v17, 0x0

    #@5c
    move-object/from16 v0, p1

    #@5e
    array-length v0, v0

    #@5f
    move/from16 v19, v0

    #@61
    move/from16 v18, v17

    #@63
    :goto_2
    move/from16 v0, v18

    #@65
    move/from16 v1, v19

    #@67
    if-ge v0, v1, :cond_2

    #@69
    aget-object v14, p1, v18

    #@6b
    .line 167
    .local v14, "keyAlgorithm":Ljava/lang/String;
    if-nez v14, :cond_6

    #@6d
    .line 166
    :cond_3
    :goto_3
    add-int/lit8 v17, v18, 0x1

    #@6f
    move/from16 v18, v17

    #@71
    goto :goto_2

    #@72
    .line 155
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6    # "certKeyAlg":Ljava/lang/String;
    .end local v8    # "chain":[Ljava/security/cert/Certificate;
    .end local v9    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v10    # "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "keyAlgorithm":Ljava/lang/String;
    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@75
    move-result-object v13

    #@76
    .local v13, "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    goto :goto_0

    #@77
    .line 165
    .end local v13    # "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v3    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4    # "cert":Ljava/security/cert/Certificate;
    .restart local v6    # "certKeyAlg":Ljava/lang/String;
    .restart local v8    # "chain":[Ljava/security/cert/Certificate;
    .restart local v9    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local v10    # "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v7, 0x0

    #@78
    .local v7, "certSigAlg":Ljava/lang/String;
    goto :goto_1

    #@79
    .line 172
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    .end local v7    # "certSigAlg":Ljava/lang/String;
    .restart local v14    # "keyAlgorithm":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x5f

    #@7b
    move/from16 v0, v17

    #@7d
    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    #@80
    move-result v11

    #@81
    .line 173
    .local v11, "index":I
    const/16 v17, -0x1

    #@83
    move/from16 v0, v17

    #@85
    if-ne v11, v0, :cond_9

    #@87
    .line 174
    const/4 v15, 0x0

    #@88
    .line 180
    :goto_4
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v17

    #@8c
    if-eqz v17, :cond_3

    #@8e
    .line 190
    if-eqz v15, :cond_7

    #@90
    if-eqz v7, :cond_7

    #@92
    .line 191
    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@95
    move-result v17

    #@96
    if-eqz v17, :cond_3

    #@98
    .line 195
    :cond_7
    if-eqz p2, :cond_8

    #@9a
    move-object/from16 v0, p2

    #@9c
    array-length v0, v0

    #@9d
    move/from16 v17, v0

    #@9f
    if-nez v17, :cond_a

    #@a1
    .line 196
    :cond_8
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a4
    goto :goto_3

    #@a5
    .line 176
    :cond_9
    add-int/lit8 v17, v11, 0x1

    #@a7
    move/from16 v0, v17

    #@a9
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ac
    move-result-object v15

    #@ad
    .line 177
    .local v15, "sigAlgorithm":Ljava/lang/String;
    const/16 v17, 0x0

    #@af
    move/from16 v0, v17

    #@b1
    invoke-virtual {v14, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b4
    move-result-object v14

    #@b5
    goto :goto_4

    #@b6
    .line 200
    .end local v15    # "sigAlgorithm":Ljava/lang/String;
    :cond_a
    const/16 v17, 0x0

    #@b8
    array-length v0, v8

    #@b9
    move/from16 v20, v0

    #@bb
    :goto_5
    move/from16 v0, v17

    #@bd
    move/from16 v1, v20

    #@bf
    if-ge v0, v1, :cond_3

    #@c1
    aget-object v5, v8, v17

    #@c3
    .line 201
    .local v5, "certFromChain":Ljava/security/cert/Certificate;
    instance-of v0, v5, Ljava/security/cert/X509Certificate;

    #@c5
    move/from16 v21, v0

    #@c7
    if-nez v21, :cond_c

    #@c9
    .line 200
    :cond_b
    :goto_6
    add-int/lit8 v17, v17, 0x1

    #@cb
    goto :goto_5

    #@cc
    :cond_c
    move-object/from16 v16, v5

    #@ce
    .line 205
    check-cast v16, Ljava/security/cert/X509Certificate;

    #@d0
    .line 214
    .local v16, "xcertFromChain":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@d3
    move-result-object v12

    #@d4
    .line 215
    .local v12, "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@d7
    move-result v21

    #@d8
    if-eqz v21, :cond_b

    #@da
    .line 216
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@dd
    goto :goto_6

    #@de
    .line 221
    .end local v2    # "alias":Ljava/lang/String;
    .end local v5    # "certFromChain":Ljava/security/cert/Certificate;
    .end local v6    # "certKeyAlg":Ljava/lang/String;
    .end local v8    # "chain":[Ljava/security/cert/Certificate;
    .end local v9    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v11    # "index":I
    .end local v12    # "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    .end local v14    # "keyAlgorithm":Ljava/lang/String;
    .end local v16    # "xcertFromChain":Ljava/security/cert/X509Certificate;
    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    #@e1
    move-result v17

    #@e2
    if-nez v17, :cond_e

    #@e4
    .line 222
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@e7
    move-result v17

    #@e8
    move/from16 v0, v17

    #@ea
    new-array v0, v0, [Ljava/lang/String;

    #@ec
    move-object/from16 v17, v0

    #@ee
    move-object/from16 v0, v17

    #@f0
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f3
    move-result-object v17

    #@f4
    check-cast v17, [Ljava/lang/String;

    #@f6
    return-object v17

    #@f7
    .line 224
    :cond_e
    const/16 v17, 0x0

    #@f9
    return-object v17
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 90
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    const/4 v1, 0x0

    #@9
    aget-object v1, v0, v1

    #@b
    goto :goto_0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 142
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    const/4 v1, 0x0

    #@9
    aget-object v1, v0, v1

    #@b
    goto :goto_0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 4
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 147
    const/4 v2, 0x1

    #@3
    new-array v2, v2, [Ljava/lang/String;

    #@5
    aput-object p1, v2, v3

    #@7
    invoke-direct {p0, v2, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 148
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@d
    :goto_0
    return-object v1

    #@e
    :cond_0
    aget-object v1, v0, v3

    #@10
    goto :goto_0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 4
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 95
    const/4 v2, 0x1

    #@3
    new-array v2, v2, [Ljava/lang/String;

    #@5
    aput-object p1, v2, v3

    #@7
    invoke-direct {p0, v2, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 96
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@d
    :goto_0
    return-object v1

    #@e
    :cond_0
    aget-object v1, v0, v3

    #@10
    goto :goto_0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 101
    if-nez p1, :cond_0

    #@3
    .line 102
    return-object v4

    #@4
    .line 104
    :cond_0
    iget-object v3, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 105
    iget-object v3, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    #@14
    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    #@17
    move-result-object v0

    #@18
    .line 106
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    #@19
    aget-object v3, v0, v3

    #@1b
    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 107
    array-length v3, v0

    #@20
    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    #@22
    .line 108
    .local v2, "xcerts":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@24
    if-ge v1, v3, :cond_1

    #@26
    .line 109
    aget-object v3, v0, v1

    #@28
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@2a
    aput-object v3, v2, v1

    #@2c
    .line 108
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 111
    :cond_1
    return-object v2

    #@30
    .line 114
    .end local v0    # "certs":[Ljava/security/cert/Certificate;
    .end local v1    # "i":I
    .end local v2    # "xcerts":[Ljava/security/cert/X509Certificate;
    :cond_2
    return-object v4
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 120
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-direct {p0, v0, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 130
    if-nez p1, :cond_0

    #@3
    .line 131
    return-object v1

    #@4
    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 134
    iget-object v0, p0, Lcom/android/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    #@14
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 136
    :cond_1
    return-object v1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 125
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-direct {p0, v0, p2}, Lcom/android/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
