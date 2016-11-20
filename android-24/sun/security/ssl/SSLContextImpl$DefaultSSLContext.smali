.class public final Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;
.super Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSSLContext"
.end annotation


# static fields
.field private static final NONE:Ljava/lang/String; = "NONE"

.field private static final P11KEYSTORE:Ljava/lang/String; = "PKCS11"

.field private static volatile defaultImpl:Lsun/security/ssl/SSLContextImpl;

.field private static defaultKeyManagers:[Ljavax/net/ssl/KeyManager;

.field private static defaultTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 493
    invoke-direct {p0, v1}, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;-><init>(Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;)V

    #@4
    .line 495
    :try_start_0
    invoke-static {}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultKeyManager()[Ljavax/net/ssl/KeyManager;

    #@7
    move-result-object v1

    #@8
    .line 496
    invoke-static {}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultTrustManager()[Ljavax/net/ssl/TrustManager;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    .line 495
    invoke-super {p0, v1, v2, v3}, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 504
    sget-object v1, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultImpl:Lsun/security/ssl/SSLContextImpl;

    #@12
    if-nez v1, :cond_0

    #@14
    .line 505
    sput-object p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultImpl:Lsun/security/ssl/SSLContextImpl;

    #@16
    .line 493
    :cond_0
    return-void

    #@17
    .line 497
    :catch_0
    move-exception v0

    #@18
    .line 498
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    const-string/jumbo v1, "defaultctx"

    #@21
    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 499
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, "default context init failed: "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 501
    :cond_1
    throw v0
.end method

.method static declared-synchronized getDefaultImpl()Lsun/security/ssl/SSLContextImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const-class v1, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    #@2
    monitor-enter v1

    #@3
    .line 516
    :try_start_0
    sget-object v0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultImpl:Lsun/security/ssl/SSLContextImpl;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 517
    new-instance v0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    #@9
    invoke-direct {v0}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;-><init>()V

    #@c
    .line 519
    :cond_0
    sget-object v0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultImpl:Lsun/security/ssl/SSLContextImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method private static declared-synchronized getDefaultKeyManager()[Ljavax/net/ssl/KeyManager;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const-class v10, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    #@2
    monitor-enter v10

    #@3
    .line 540
    :try_start_0
    sget-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;

    #@5
    if-eqz v9, :cond_0

    #@7
    .line 541
    sget-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v10

    #@a
    return-object v9

    #@b
    .line 544
    :cond_0
    :try_start_1
    new-instance v8, Ljava/util/HashMap;

    #@d
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@10
    .line 546
    .local v8, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;

    #@12
    invoke-direct {v9, v8}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;-><init>(Ljava/util/Map;)V

    #@15
    .line 545
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@18
    .line 561
    const-string/jumbo v9, "keyStore"

    #@1b
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/String;

    #@21
    .line 562
    .local v0, "defaultKeyStore":Ljava/lang/String;
    const-string/jumbo v9, "keyStoreType"

    #@24
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Ljava/lang/String;

    #@2a
    .line 563
    .local v3, "defaultKeyStoreType":Ljava/lang/String;
    const-string/jumbo v9, "keyStoreProvider"

    #@2d
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Ljava/lang/String;

    #@33
    .line 564
    .local v2, "defaultKeyStoreProvider":Ljava/lang/String;
    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    #@36
    move-result-object v9

    #@37
    if-eqz v9, :cond_1

    #@39
    const-string/jumbo v9, "defaultctx"

    #@3c
    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@3f
    move-result v9

    #@40
    if-eqz v9, :cond_1

    #@42
    .line 565
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@44
    new-instance v11, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v12, "keyStore is : "

    #@4c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v11

    #@50
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v11

    #@54
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v11

    #@58
    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5b
    .line 566
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5d
    new-instance v11, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v12, "keyStore type is : "

    #@65
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v11

    #@69
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v11

    #@6d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v11

    #@71
    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@74
    .line 568
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@76
    new-instance v11, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v12, "keyStore provider is : "

    #@7e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v11

    #@82
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v11

    #@86
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v11

    #@8a
    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8d
    .line 572
    :cond_1
    const-string/jumbo v9, "PKCS11"

    #@90
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v9

    #@94
    if-eqz v9, :cond_2

    #@96
    .line 573
    const-string/jumbo v9, "NONE"

    #@99
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v9

    #@9d
    if-eqz v9, :cond_9

    #@9f
    .line 578
    :cond_2
    const/4 v4, 0x0

    #@a0
    .line 579
    .local v4, "fs":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@a3
    move-result v9

    #@a4
    if-eqz v9, :cond_3

    #@a6
    const-string/jumbo v9, "NONE"

    #@a9
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v9

    #@ad
    if-eqz v9, :cond_a

    #@af
    .line 588
    .end local v4    # "fs":Ljava/io/FileInputStream;
    :cond_3
    :goto_0
    const-string/jumbo v9, "keyStorePasswd"

    #@b2
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    move-result-object v1

    #@b6
    check-cast v1, Ljava/lang/String;

    #@b8
    .line 589
    .local v1, "defaultKeyStorePassword":Ljava/lang/String;
    const/4 v7, 0x0

    #@b9
    .line 590
    .local v7, "passwd":[C
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@bc
    move-result v9

    #@bd
    if-eqz v9, :cond_4

    #@bf
    .line 591
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    #@c2
    move-result-object v7

    #@c3
    .line 597
    .end local v7    # "passwd":[C
    :cond_4
    const/4 v6, 0x0

    #@c4
    .line 598
    .local v6, "ks":Ljava/security/KeyStore;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@c7
    move-result v9

    #@c8
    if-eqz v9, :cond_6

    #@ca
    .line 599
    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    #@cd
    move-result-object v9

    #@ce
    if-eqz v9, :cond_5

    #@d0
    const-string/jumbo v9, "defaultctx"

    #@d3
    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@d6
    move-result v9

    #@d7
    if-eqz v9, :cond_5

    #@d9
    .line 600
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@db
    const-string/jumbo v11, "init keystore"

    #@de
    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e1
    .line 602
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@e4
    move-result v9

    #@e5
    if-nez v9, :cond_b

    #@e7
    .line 603
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@ea
    move-result-object v6

    #@eb
    .line 610
    .local v6, "ks":Ljava/security/KeyStore;
    :goto_1
    invoke-virtual {v6, v4, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    #@ee
    .line 612
    .end local v6    # "ks":Ljava/security/KeyStore;
    :cond_6
    if-eqz v4, :cond_7

    #@f0
    .line 613
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    #@f3
    .line 614
    const/4 v4, 0x0

    #@f4
    .line 620
    :cond_7
    invoke-static {}, Lsun/security/ssl/SSLContextImpl;->-get0()Lsun/security/ssl/Debug;

    #@f7
    move-result-object v9

    #@f8
    if-eqz v9, :cond_8

    #@fa
    const-string/jumbo v9, "defaultctx"

    #@fd
    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@100
    move-result v9

    #@101
    if-eqz v9, :cond_8

    #@103
    .line 621
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@105
    new-instance v11, Ljava/lang/StringBuilder;

    #@107
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@10a
    const-string/jumbo v12, "init keymanager of type "

    #@10d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v11

    #@111
    .line 622
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@114
    move-result-object v12

    #@115
    .line 621
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v11

    #@119
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v11

    #@11d
    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@120
    .line 625
    :cond_8
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@123
    move-result-object v9

    #@124
    .line 624
    invoke-static {v9}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    #@127
    move-result-object v5

    #@128
    .line 627
    .local v5, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const-string/jumbo v9, "PKCS11"

    #@12b
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12e
    move-result v9

    #@12f
    if-eqz v9, :cond_c

    #@131
    .line 628
    const/4 v9, 0x0

    #@132
    invoke-virtual {v5, v6, v9}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    #@135
    .line 633
    :goto_2
    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    #@138
    move-result-object v9

    #@139
    sput-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;

    #@13b
    .line 634
    sget-object v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13d
    monitor-exit v10

    #@13e
    return-object v9

    #@13f
    .line 574
    .end local v1    # "defaultKeyStorePassword":Ljava/lang/String;
    .end local v5    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :cond_9
    :try_start_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@141
    const-string/jumbo v11, "if keyStoreType is PKCS11, then keyStore must be NONE"

    #@144
    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@147
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@148
    .end local v0    # "defaultKeyStore":Ljava/lang/String;
    .end local v2    # "defaultKeyStoreProvider":Ljava/lang/String;
    .end local v3    # "defaultKeyStoreType":Ljava/lang/String;
    :catchall_0
    move-exception v9

    #@149
    monitor-exit v10

    #@14a
    throw v9

    #@14b
    .line 581
    .restart local v0    # "defaultKeyStore":Ljava/lang/String;
    .restart local v2    # "defaultKeyStoreProvider":Ljava/lang/String;
    .restart local v3    # "defaultKeyStoreType":Ljava/lang/String;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :cond_a
    :try_start_3
    new-instance v9, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$2;

    #@14d
    invoke-direct {v9, v0}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$2;-><init>(Ljava/lang/String;)V

    #@150
    .line 580
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@153
    move-result-object v4

    #@154
    .end local v4    # "fs":Ljava/io/FileInputStream;
    check-cast v4, Ljava/io/FileInputStream;

    #@156
    .local v4, "fs":Ljava/io/FileInputStream;
    goto/16 :goto_0

    #@158
    .line 605
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v1    # "defaultKeyStorePassword":Ljava/lang/String;
    .local v6, "ks":Ljava/security/KeyStore;
    :cond_b
    invoke-static {v3, v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    #@15b
    move-result-object v6

    #@15c
    .local v6, "ks":Ljava/security/KeyStore;
    goto :goto_1

    #@15d
    .line 630
    .end local v6    # "ks":Ljava/security/KeyStore;
    .restart local v5    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :cond_c
    invoke-virtual {v5, v6, v7}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@160
    goto :goto_2
.end method

.method private static declared-synchronized getDefaultTrustManager()[Ljavax/net/ssl/TrustManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const-class v3, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;

    #@2
    monitor-enter v3

    #@3
    .line 524
    :try_start_0
    sget-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 525
    sget-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v3

    #@a
    return-object v2

    #@b
    .line 529
    :cond_0
    :try_start_1
    const-string/jumbo v2, "defaultctx"

    #@e
    invoke-static {v2}, Lsun/security/ssl/TrustManagerFactoryImpl;->getCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    #@11
    move-result-object v0

    #@12
    .line 532
    .local v0, "ks":Ljava/security/KeyStore;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 531
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    #@19
    move-result-object v1

    #@1a
    .line 533
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    #@1d
    .line 534
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    #@20
    move-result-object v2

    #@21
    sput-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;

    #@23
    .line 535
    sget-object v2, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->defaultTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit v3

    #@26
    return-object v2

    #@27
    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method


# virtual methods
.method protected engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tm"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 511
    new-instance v0, Ljava/security/KeyManagementException;

    #@2
    .line 512
    const-string/jumbo v1, "Default SSLContext is initialized automatically"

    #@5
    .line 511
    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
