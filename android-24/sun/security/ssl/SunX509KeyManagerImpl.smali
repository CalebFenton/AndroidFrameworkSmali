.class final Lsun/security/ssl/SunX509KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SunX509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    }
.end annotation


# static fields
.field private static final STRING0:[Ljava/lang/String;

.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private credentialsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;",
            ">;"
        }
    .end annotation
.end field

.field private serverAliasCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "ssl"

    #@3
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@9
    .line 72
    const/4 v0, 0x0

    #@a
    new-array v0, v0, [Ljava/lang/String;

    #@c
    sput-object v0, Lsun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    #@e
    .line 68
    return-void
.end method

.method constructor <init>(Ljava/security/KeyStore;[C)V
    .locals 11
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 116
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    #@4
    .line 119
    new-instance v7, Ljava/util/HashMap;

    #@6
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v7, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    #@b
    .line 120
    new-instance v7, Ljava/util/HashMap;

    #@d
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@10
    iput-object v7, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    #@12
    .line 121
    if-nez p1, :cond_0

    #@14
    .line 122
    return-void

    #@15
    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    #@18
    move-result-object v1

    #@19
    .line 126
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1c
    move-result v7

    #@1d
    .line 125
    if-eqz v7, :cond_4

    #@1f
    .line 127
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/String;

    #@25
    .line 128
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_1

    #@2b
    .line 131
    invoke-virtual {p1, v0, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    #@2e
    move-result-object v5

    #@2f
    .line 132
    .local v5, "key":Ljava/security/Key;
    instance-of v7, v5, Ljava/security/PrivateKey;

    #@31
    if-eqz v7, :cond_1

    #@33
    .line 135
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    #@36
    move-result-object v2

    #@37
    .line 136
    .local v2, "certs":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_1

    #@39
    array-length v7, v2

    #@3a
    if-eqz v7, :cond_1

    #@3c
    .line 137
    aget-object v7, v2, v10

    #@3e
    instance-of v7, v7, Ljava/security/cert/X509Certificate;

    #@40
    if-eqz v7, :cond_1

    #@42
    .line 140
    instance-of v7, v2, [Ljava/security/cert/X509Certificate;

    #@44
    if-nez v7, :cond_2

    #@46
    .line 141
    array-length v7, v2

    #@47
    new-array v6, v7, [Ljava/security/cert/X509Certificate;

    #@49
    .line 142
    .local v6, "tmp":[Ljava/security/cert/Certificate;
    array-length v7, v2

    #@4a
    invoke-static {v2, v10, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4d
    .line 143
    move-object v2, v6

    #@4e
    .line 146
    .end local v6    # "tmp":[Ljava/security/cert/Certificate;
    :cond_2
    new-instance v3, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    #@50
    check-cast v5, Ljava/security/PrivateKey;

    #@52
    .end local v5    # "key":Ljava/security/Key;
    move-object v7, v2

    #@53
    .line 147
    nop

    #@54
    nop

    #@55
    .line 146
    invoke-direct {v3, v5, v7}, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    #@58
    .line 148
    .local v3, "cred":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    iget-object v7, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    #@5a
    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 149
    sget-object v7, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@5f
    if-eqz v7, :cond_1

    #@61
    const-string/jumbo v7, "keymanager"

    #@64
    invoke-static {v7}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@67
    move-result v7

    #@68
    if-eqz v7, :cond_1

    #@6a
    .line 150
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6c
    const-string/jumbo v8, "***"

    #@6f
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@72
    .line 151
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@74
    new-instance v8, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v9, "found key for : "

    #@7c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v8

    #@80
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8b
    .line 152
    const/4 v4, 0x0

    #@8c
    .local v4, "i":I
    :goto_1
    array-length v7, v2

    #@8d
    if-ge v4, v7, :cond_3

    #@8f
    .line 153
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@91
    new-instance v8, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v9, "chain ["

    #@99
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v8

    #@a1
    const-string/jumbo v9, "] = "

    #@a4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    .line 154
    aget-object v9, v2, v4

    #@aa
    .line 153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v8

    #@ae
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v8

    #@b2
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b5
    .line 152
    add-int/lit8 v4, v4, 0x1

    #@b7
    goto :goto_1

    #@b8
    .line 156
    :cond_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ba
    const-string/jumbo v8, "***"

    #@bd
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c0
    goto/16 :goto_0

    #@c2
    .line 117
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "cred":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method private static convertPrincipals([Ljava/security/Principal;)[Ljavax/security/auth/x500/X500Principal;
    .locals 6
    .param p0, "principals"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 400
    new-instance v2, Ljava/util/ArrayList;

    #@2
    array-length v4, p0

    #@3
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 401
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v4, p0

    #@8
    if-ge v1, v4, :cond_1

    #@a
    .line 402
    aget-object v3, p0, v1

    #@c
    .line 403
    .local v3, "p":Ljava/security/Principal;
    instance-of v4, v3, Ljavax/security/auth/x500/X500Principal;

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 404
    nop

    #@11
    nop

    #@12
    .end local v3    # "p":Ljava/security/Principal;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    .line 401
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 407
    .restart local v3    # "p":Ljava/security/Principal;
    :cond_0
    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    #@1a
    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    #@21
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    goto :goto_1

    #@25
    .line 408
    :catch_0
    move-exception v0

    #@26
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    #@27
    .line 413
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "p":Ljava/security/Principal;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@2a
    move-result v4

    #@2b
    new-array v4, v4, [Ljavax/security/auth/x500/X500Principal;

    #@2d
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, [Ljavax/security/auth/x500/X500Principal;

    #@33
    return-object v4
.end method

.method private getAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 18
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 319
    if-nez p1, :cond_0

    #@2
    .line 320
    const/4 v15, 0x0

    #@3
    return-object v15

    #@4
    .line 322
    :cond_0
    if-nez p2, :cond_1

    #@6
    .line 323
    const/4 v15, 0x0

    #@7
    new-array v0, v15, [Ljavax/security/auth/x500/X500Principal;

    #@9
    move-object/from16 p2, v0

    #@b
    .line 325
    :cond_1
    move-object/from16 v0, p2

    #@d
    instance-of v15, v0, [Ljavax/security/auth/x500/X500Principal;

    #@f
    if-nez v15, :cond_2

    #@11
    .line 327
    invoke-static/range {p2 .. p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->convertPrincipals([Ljava/security/Principal;)[Ljavax/security/auth/x500/X500Principal;

    #@14
    move-result-object p2

    #@15
    .line 330
    :cond_2
    const-string/jumbo v15, "_"

    #@18
    move-object/from16 v0, p1

    #@1a
    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1d
    move-result v15

    #@1e
    if-eqz v15, :cond_5

    #@20
    .line 331
    const-string/jumbo v15, "_"

    #@23
    move-object/from16 v0, p1

    #@25
    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@28
    move-result v10

    #@29
    .line 332
    .local v10, "k":I
    add-int/lit8 v15, v10, 0x1

    #@2b
    move-object/from16 v0, p1

    #@2d
    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@30
    move-result-object v13

    #@31
    .line 333
    .local v13, "sigType":Ljava/lang/String;
    const/4 v15, 0x0

    #@32
    move-object/from16 v0, p1

    #@34
    invoke-virtual {v0, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object p1

    #@38
    .end local v10    # "k":I
    .end local v13    # "sigType":Ljava/lang/String;
    :goto_0
    move-object/from16 v14, p2

    #@3a
    .line 338
    nop

    #@3b
    nop

    #@3c
    .line 340
    .local v14, "x500Issuers":[Ljavax/security/auth/x500/X500Principal;
    new-instance v3, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@41
    .line 343
    .local v3, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@43
    iget-object v15, v0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    #@45
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@48
    move-result-object v15

    #@49
    .line 342
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v8

    #@4d
    .local v8, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v15

    #@51
    if-eqz v15, :cond_9

    #@53
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v7

    #@57
    check-cast v7, Ljava/util/Map$Entry;

    #@59
    .line 345
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, Ljava/lang/String;

    #@5f
    .line 346
    .local v1, "alias":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@62
    move-result-object v6

    #@63
    check-cast v6, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    #@65
    .line 347
    .local v6, "credentials":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    iget-object v5, v6, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->certificates:[Ljava/security/cert/X509Certificate;

    #@67
    .line 349
    .local v5, "certs":[Ljava/security/cert/X509Certificate;
    const/4 v15, 0x0

    #@68
    aget-object v15, v5, v15

    #@6a
    invoke-virtual {v15}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@6d
    move-result-object v15

    #@6e
    invoke-interface {v15}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@71
    move-result-object v15

    #@72
    move-object/from16 v0, p1

    #@74
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v15

    #@78
    if-eqz v15, :cond_3

    #@7a
    .line 352
    if-eqz v13, :cond_4

    #@7c
    .line 353
    array-length v15, v5

    #@7d
    const/16 v16, 0x1

    #@7f
    move/from16 v0, v16

    #@81
    if-le v15, v0, :cond_6

    #@83
    .line 355
    const/4 v15, 0x1

    #@84
    aget-object v15, v5, v15

    #@86
    invoke-virtual {v15}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@89
    move-result-object v15

    #@8a
    invoke-interface {v15}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@8d
    move-result-object v15

    #@8e
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v15

    #@92
    if-eqz v15, :cond_3

    #@94
    .line 370
    :cond_4
    move-object/from16 v0, p2

    #@96
    array-length v15, v0

    #@97
    if-nez v15, :cond_7

    #@99
    .line 372
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9c
    .line 373
    sget-object v15, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@9e
    if-eqz v15, :cond_3

    #@a0
    const-string/jumbo v15, "keymanager"

    #@a3
    invoke-static {v15}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a6
    move-result v15

    #@a7
    if-eqz v15, :cond_3

    #@a9
    .line 374
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ab
    new-instance v16, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v17, "matching alias: "

    #@b3
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v16

    #@b7
    move-object/from16 v0, v16

    #@b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v16

    #@bd
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v16

    #@c1
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c4
    goto :goto_1

    #@c5
    .line 335
    .end local v1    # "alias":Ljava/lang/String;
    .end local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v6    # "credentials":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    .end local v14    # "x500Issuers":[Ljavax/security/auth/x500/X500Principal;
    :cond_5
    const/4 v13, 0x0

    #@c6
    .local v13, "sigType":Ljava/lang/String;
    goto/16 :goto_0

    #@c8
    .line 362
    .end local v13    # "sigType":Ljava/lang/String;
    .restart local v1    # "alias":Ljava/lang/String;
    .restart local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "certs":[Ljava/security/cert/X509Certificate;
    .restart local v6    # "credentials":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;>;"
    .restart local v8    # "entry$iterator":Ljava/util/Iterator;
    .restart local v14    # "x500Issuers":[Ljavax/security/auth/x500/X500Principal;
    :cond_6
    const/4 v15, 0x0

    #@c9
    aget-object v15, v5, v15

    #@cb
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    #@ce
    move-result-object v15

    #@cf
    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@d1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@d4
    move-result-object v12

    #@d5
    .line 363
    .local v12, "sigAlgName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v16, "WITH"

    #@dd
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v15

    #@e1
    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@e3
    move-object/from16 v0, v16

    #@e5
    invoke-virtual {v13, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@e8
    move-result-object v16

    #@e9
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v15

    #@ed
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v11

    #@f1
    .line 364
    .local v11, "pattern":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@f4
    move-result v15

    #@f5
    if-nez v15, :cond_4

    #@f7
    goto/16 :goto_1

    #@f9
    .line 378
    .end local v11    # "pattern":Ljava/lang/String;
    .end local v12    # "sigAlgName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->getIssuerX500Principals()Ljava/util/Set;

    #@fc
    move-result-object v4

    #@fd
    .line 379
    .local v4, "certIssuers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v9, 0x0

    #@fe
    .local v9, "i":I
    :goto_2
    array-length v15, v14

    #@ff
    if-ge v9, v15, :cond_3

    #@101
    .line 380
    aget-object v15, p2, v9

    #@103
    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@106
    move-result v15

    #@107
    if-eqz v15, :cond_8

    #@109
    .line 381
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10c
    .line 382
    sget-object v15, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    #@10e
    if-eqz v15, :cond_3

    #@110
    const-string/jumbo v15, "keymanager"

    #@113
    invoke-static {v15}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@116
    move-result v15

    #@117
    if-eqz v15, :cond_3

    #@119
    .line 383
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11b
    new-instance v16, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    const-string/jumbo v17, "matching alias: "

    #@123
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v16

    #@127
    move-object/from16 v0, v16

    #@129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v16

    #@12d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v16

    #@131
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@134
    goto/16 :goto_1

    #@136
    .line 379
    :cond_8
    add-int/lit8 v9, v9, 0x1

    #@138
    goto :goto_2

    #@139
    .line 391
    .end local v1    # "alias":Ljava/lang/String;
    .end local v4    # "certIssuers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/security/auth/x500/X500Principal;>;"
    .end local v5    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v6    # "credentials":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;>;"
    .end local v9    # "i":I
    :cond_9
    sget-object v15, Lsun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    #@13b
    invoke-interface {v3, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@13e
    move-result-object v2

    #@13f
    check-cast v2, [Ljava/lang/String;

    #@141
    .line 392
    .local v2, "aliasStrings":[Ljava/lang/String;
    array-length v15, v2

    #@142
    if-nez v15, :cond_a

    #@144
    const/4 v2, 0x0

    #@145
    .end local v2    # "aliasStrings":[Ljava/lang/String;
    :cond_a
    return-object v2
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 5
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 208
    if-nez p1, :cond_0

    #@4
    .line 209
    return-object v3

    #@5
    .line 212
    :cond_0
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@7
    if-ge v1, v2, :cond_2

    #@9
    .line 213
    aget-object v2, p1, v1

    #@b
    invoke-virtual {p0, v2, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 214
    .local v0, "aliases":[Ljava/lang/String;
    if-eqz v0, :cond_1

    #@11
    array-length v2, v0

    #@12
    if-lez v2, :cond_1

    #@14
    .line 215
    aget-object v2, v0, v4

    #@16
    return-object v2

    #@17
    .line 212
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 218
    .end local v0    # "aliases":[Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    #@0
    .prologue
    .line 235
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SunX509KeyManagerImpl;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    #@0
    .prologue
    .line 290
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SunX509KeyManagerImpl;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 4
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 251
    if-nez p1, :cond_0

    #@4
    .line 252
    return-object v2

    #@5
    .line 257
    :cond_0
    if-eqz p2, :cond_1

    #@7
    array-length v1, p2

    #@8
    if-nez v1, :cond_4

    #@a
    .line 258
    :cond_1
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    #@c
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Ljava/lang/String;

    #@12
    .line 259
    .local v0, "aliases":[Ljava/lang/String;
    if-nez v0, :cond_3

    #@14
    .line 260
    invoke-virtual {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 262
    if-nez v0, :cond_2

    #@1a
    .line 263
    sget-object v0, Lsun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    #@1c
    .line 265
    :cond_2
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    #@1e
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 270
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    #@23
    array-length v1, v0

    #@24
    if-lez v1, :cond_5

    #@26
    .line 271
    aget-object v1, v0, v3

    #@28
    return-object v1

    #@29
    .line 268
    .end local v0    # "aliases":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .restart local v0    # "aliases":[Ljava/lang/String;
    goto :goto_0

    #@2e
    .line 273
    :cond_5
    return-object v2
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 168
    if-nez p1, :cond_0

    #@3
    .line 169
    return-object v2

    #@4
    .line 171
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    #@c
    .line 172
    .local v0, "cred":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    if-nez v0, :cond_1

    #@e
    .line 173
    return-object v2

    #@f
    .line 175
    :cond_1
    iget-object v1, v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->certificates:[Ljava/security/cert/X509Certificate;

    #@11
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, [Ljava/security/cert/X509Certificate;

    #@17
    return-object v1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 183
    if-nez p1, :cond_0

    #@3
    .line 184
    return-object v2

    #@4
    .line 186
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    #@c
    .line 187
    .local v0, "cred":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    if-nez v0, :cond_1

    #@e
    .line 188
    return-object v2

    #@f
    .line 190
    :cond_1
    iget-object v1, v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->privateKey:Ljava/security/PrivateKey;

    #@11
    return-object v1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    #@0
    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
