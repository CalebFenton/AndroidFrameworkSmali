.class public Lcom/android/server/wifi/WifiConfigStore;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;,
        Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;,
        Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final ID_STRING_KEY_CONFIG_KEY:Ljava/lang/String; = "configKey"

.field public static final ID_STRING_KEY_CREATOR_UID:Ljava/lang/String; = "creatorUid"

.field public static final ID_STRING_KEY_FQDN:Ljava/lang/String; = "fqdn"

.field public static final ID_STRING_VAR_NAME:Ljava/lang/String; = "id_str"

.field public static final STORED_VALUE_FOR_REQUIRE_PMF:I = 0x2

.field public static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field public static final SUPPLICANT_CONFIG_FILE_BACKUP:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf.tmp"

.field public static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static VDBG:Z


# instance fields
.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mBssidBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mShowNetworks:Z

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiConfigStore;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@3
    .line 73
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiNative;Landroid/security/KeyStore;Landroid/util/LocalLog;ZZ)V
    .locals 2
    .param p1, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "localLog"    # Landroid/util/LocalLog;
    .param p4, "showNetworks"    # Z
    .param p5, "verboseDebug"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 98
    new-instance v0, Ljava/util/HashSet;

    #@6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    #@b
    .line 104
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@d
    .line 105
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@f
    .line 106
    iput-boolean p4, p0, Lcom/android/server/wifi/WifiConfigStore;->mShowNetworks:Z

    #@11
    .line 107
    new-instance v0, Lcom/android/server/wifi/BackupManagerProxy;

    #@13
    invoke-direct {v0}, Lcom/android/server/wifi/BackupManagerProxy;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    #@18
    .line 109
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mShowNetworks:Z

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 110
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@1e
    .line 111
    new-instance v0, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    #@20
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    #@23
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    #@25
    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    #@27
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;->startWatching()V

    #@2a
    .line 117
    :goto_0
    sput-boolean p5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@2c
    .line 103
    return-void

    #@2d
    .line 114
    :cond_0
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@2f
    .line 115
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    #@31
    goto :goto_0
.end method

.method private static encodeSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 180
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->toHex([B)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static hasHardwareBackedKey(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z
    .locals 18
    .param p1, "existingConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 466
    const/4 v12, 0x1

    #@1
    .line 467
    .local v12, "ret":Z
    new-instance v14, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v15, "USRPKEY_"

    #@9
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v14

    #@d
    move-object/from16 v0, p3

    #@f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v14

    #@13
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v11

    #@17
    .line 468
    .local v11, "privKeyName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v15, "USRCERT_"

    #@1f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v14

    #@23
    move-object/from16 v0, p3

    #@25
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v14

    #@29
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v13

    #@2d
    .line 469
    .local v13, "userCertName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@30
    move-result-object v14

    #@31
    if-eqz v14, :cond_2

    #@33
    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    #@36
    move-result-object v14

    #@37
    invoke-interface {v14}, Ljava/security/PrivateKey;->getEncoded()[B

    #@3a
    move-result-object v10

    #@3b
    .line 472
    .local v10, "privKeyData":[B
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    #@3e
    move-result-object v14

    #@3f
    invoke-static {v14}, Lcom/android/server/wifi/WifiConfigStore;->isHardwareBackedKey(Ljava/security/PrivateKey;)Z

    #@42
    move-result v14

    #@43
    if-eqz v14, :cond_0

    #@45
    .line 473
    const-string/jumbo v14, "WifiConfigStore"

    #@48
    new-instance v15, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v16, "importing keys "

    #@50
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v15

    #@54
    move-object/from16 v0, p3

    #@56
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v15

    #@5a
    const-string/jumbo v16, " in hardware backed store"

    #@5d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v15

    #@61
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v15

    #@65
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 478
    :goto_0
    move-object/from16 v0, p0

    #@6a
    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@6c
    const/16 v15, 0x3f2

    #@6e
    .line 479
    const/16 v16, 0x0

    #@70
    .line 478
    move/from16 v0, v16

    #@72
    invoke-virtual {v14, v11, v10, v15, v0}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    #@75
    move-result v12

    #@76
    .line 481
    .local v12, "ret":Z
    if-nez v12, :cond_1

    #@78
    .line 482
    return v12

    #@79
    .line 475
    .local v12, "ret":Z
    :cond_0
    const-string/jumbo v14, "WifiConfigStore"

    #@7c
    new-instance v15, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v16, "importing keys "

    #@84
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v15

    #@88
    move-object/from16 v0, p3

    #@8a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v15

    #@8e
    const-string/jumbo v16, " in software backed store"

    #@91
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v15

    #@95
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v15

    #@99
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9c
    goto :goto_0

    #@9d
    .line 485
    .local v12, "ret":Z
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@a0
    move-result-object v14

    #@a1
    move-object/from16 v0, p0

    #@a3
    invoke-direct {v0, v13, v14}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    #@a6
    move-result v12

    #@a7
    .line 486
    if-nez v12, :cond_2

    #@a9
    .line 488
    move-object/from16 v0, p0

    #@ab
    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@ad
    const/16 v15, 0x3f2

    #@af
    invoke-virtual {v14, v11, v15}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@b2
    .line 489
    return v12

    #@b3
    .line 493
    .end local v10    # "privKeyData":[B
    .end local v12    # "ret":Z
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificates()[Ljava/security/cert/X509Certificate;

    #@b6
    move-result-object v5

    #@b7
    .line 494
    .local v5, "caCertificates":[Ljava/security/cert/X509Certificate;
    new-instance v9, Landroid/util/ArraySet;

    #@b9
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    #@bc
    .line 495
    .local v9, "oldCaCertificatesToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    #@be
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    #@c1
    move-result-object v14

    #@c2
    if-eqz v14, :cond_3

    #@c4
    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    #@c7
    move-result-object v14

    #@c8
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@cb
    move-result-object v14

    #@cc
    .line 496
    invoke-interface {v9, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@cf
    .line 499
    :cond_3
    const/4 v4, 0x0

    #@d0
    .line 500
    .local v4, "caCertificateAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_8

    #@d2
    .line 501
    new-instance v4, Ljava/util/ArrayList;

    #@d4
    .end local v4    # "caCertificateAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@d7
    .line 502
    .local v4, "caCertificateAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@d8
    .local v6, "i":I
    :goto_1
    array-length v14, v5

    #@d9
    if-ge v6, v14, :cond_8

    #@db
    .line 503
    array-length v14, v5

    #@dc
    const/4 v15, 0x1

    #@dd
    if-ne v14, v15, :cond_5

    #@df
    move-object/from16 v3, p3

    #@e1
    .line 506
    .local v3, "alias":Ljava/lang/String;
    :goto_2
    invoke-interface {v9, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@e4
    .line 507
    new-instance v14, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v15, "CACERT_"

    #@ec
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v14

    #@f0
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v14

    #@f4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v14

    #@f8
    aget-object v15, v5, v6

    #@fa
    move-object/from16 v0, p0

    #@fc
    invoke-direct {v0, v14, v15}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    #@ff
    move-result v12

    #@100
    .line 508
    .restart local v12    # "ret":Z
    if-nez v12, :cond_7

    #@102
    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@105
    move-result-object v14

    #@106
    if-eqz v14, :cond_4

    #@108
    .line 511
    move-object/from16 v0, p0

    #@10a
    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@10c
    const/16 v15, 0x3f2

    #@10e
    invoke-virtual {v14, v11, v15}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@111
    .line 512
    move-object/from16 v0, p0

    #@113
    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@115
    const/16 v15, 0x3f2

    #@117
    invoke-virtual {v14, v13, v15}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@11a
    .line 515
    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11d
    move-result-object v2

    #@11e
    .local v2, "addedAlias$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@121
    move-result v14

    #@122
    if-eqz v14, :cond_6

    #@124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@127
    move-result-object v1

    #@128
    check-cast v1, Ljava/lang/String;

    #@12a
    .line 516
    .local v1, "addedAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    #@12c
    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@12e
    new-instance v15, Ljava/lang/StringBuilder;

    #@130
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string/jumbo v16, "CACERT_"

    #@136
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v15

    #@13a
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v15

    #@13e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@141
    move-result-object v15

    #@142
    const/16 v16, 0x3f2

    #@144
    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@147
    goto :goto_3

    #@148
    .line 504
    .end local v1    # "addedAlias":Ljava/lang/String;
    .end local v2    # "addedAlias$iterator":Ljava/util/Iterator;
    .end local v3    # "alias":Ljava/lang/String;
    .end local v12    # "ret":Z
    :cond_5
    const-string/jumbo v14, "%s_%d"

    #@14b
    const/4 v15, 0x2

    #@14c
    new-array v15, v15, [Ljava/lang/Object;

    #@14e
    const/16 v16, 0x0

    #@150
    aput-object p3, v15, v16

    #@152
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@155
    move-result-object v16

    #@156
    const/16 v17, 0x1

    #@158
    aput-object v16, v15, v17

    #@15a
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15d
    move-result-object v3

    #@15e
    goto :goto_2

    #@15f
    .line 518
    .restart local v2    # "addedAlias$iterator":Ljava/util/Iterator;
    .restart local v3    # "alias":Ljava/lang/String;
    .restart local v12    # "ret":Z
    :cond_6
    return v12

    #@160
    .line 520
    .end local v2    # "addedAlias$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@163
    .line 502
    add-int/lit8 v6, v6, 0x1

    #@165
    goto/16 :goto_1

    #@167
    .line 525
    .end local v3    # "alias":Ljava/lang/String;
    .end local v4    # "caCertificateAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v12    # "ret":Z
    :cond_8
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16a
    move-result-object v8

    #@16b
    .local v8, "oldAlias$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@16e
    move-result v14

    #@16f
    if-eqz v14, :cond_9

    #@171
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@174
    move-result-object v7

    #@175
    check-cast v7, Ljava/lang/String;

    #@177
    .line 526
    .local v7, "oldAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    #@179
    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@17b
    new-instance v15, Ljava/lang/StringBuilder;

    #@17d
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@180
    const-string/jumbo v16, "CACERT_"

    #@183
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v15

    #@187
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v15

    #@18b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v15

    #@18f
    const/16 v16, 0x3f2

    #@191
    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@194
    goto :goto_4

    #@195
    .line 529
    .end local v7    # "oldAlias":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@198
    move-result-object v14

    #@199
    if-eqz v14, :cond_a

    #@19b
    .line 530
    invoke-virtual/range {p2 .. p3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    #@19e
    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->resetClientKeyEntry()V

    #@1a1
    .line 534
    :cond_a
    if-eqz v5, :cond_b

    #@1a3
    .line 536
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@1a6
    move-result v14

    #@1a7
    new-array v14, v14, [Ljava/lang/String;

    #@1a9
    invoke-interface {v4, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1ac
    move-result-object v14

    #@1ad
    check-cast v14, [Ljava/lang/String;

    #@1af
    .line 535
    move-object/from16 v0, p2

    #@1b1
    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    #@1b4
    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiEnterpriseConfig;->resetCaCertificate()V

    #@1b7
    .line 539
    :cond_b
    return v12
.end method

.method private static isHardwareBackedKey(Ljava/security/PrivateKey;)Z
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;

    #@0
    .prologue
    .line 189
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1262
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "WifiConfigStore: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@1d
    .line 1260
    :cond_0
    return-void
.end method

.method private localLogAndLogcat(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1267
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@3
    .line 1268
    const-string/jumbo v0, "WifiConfigStore"

    #@6
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1266
    return-void
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 212
    array-length v1, p2

    #@1
    .line 214
    .local v1, "size":I
    const/16 v2, 0x2d

    #@3
    const/16 v3, 0x5f

    #@5
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    .line 216
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@c
    .line 217
    aget-object v2, p2, v0

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 218
    return v0

    #@15
    .line 216
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 221
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Failed to look-up a string: "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@2f
    .line 222
    const/4 v2, -0x1

    #@30
    return v2
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 140
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->makeStringWithException(Ljava/util/BitSet;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static makeStringWithException(Ljava/util/BitSet;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 155
    .local v2, "result":Ljava/lang/StringBuilder;
    array-length v5, p1

    #@7
    invoke-virtual {p0, v6, v5}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    #@a
    move-result-object v3

    #@b
    .line 157
    .local v3, "trimmedSet":Ljava/util/BitSet;
    new-instance v4, Ljava/util/ArrayList;

    #@d
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 158
    .local v4, "valueSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    #@13
    move-result v0

    #@14
    .local v0, "bit":I
    :goto_0
    if-ltz v0, :cond_1

    #@16
    .line 161
    aget-object v1, p1, v0

    #@18
    .line 162
    .local v1, "currentName":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 163
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    .line 160
    :goto_1
    add-int/lit8 v5, v0, 0x1

    #@25
    invoke-virtual {v3, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    #@28
    move-result v0

    #@29
    goto :goto_0

    #@2a
    .line 167
    :cond_0
    const/16 v5, 0x5f

    #@2c
    const/16 v6, 0x2d

    #@2e
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_1

    #@36
    .line 170
    .end local v1    # "currentName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, " "

    #@39
    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    return-object v5
.end method

.method private markAllNetworksDisabled(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1168
    .local p1, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(ILjava/util/Collection;)V

    #@4
    .line 1167
    return-void
.end method

.method private markAllNetworksDisabledExcept(ILjava/util/Collection;)V
    .locals 4
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x1

    #@1
    .line 1158
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@11
    .line 1159
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@13
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@15
    if-eq v2, p1, :cond_0

    #@17
    .line 1160
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@19
    if-eq v2, v3, :cond_0

    #@1b
    .line 1161
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@1d
    goto :goto_0

    #@1e
    .line 1157
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method private static needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 185
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private static needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 198
    .local v0, "client":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 206
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 208
    :cond_0
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method private putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 544
    const/4 v3, 0x1

    #@2
    :try_start_0
    new-array v3, v3, [Ljava/security/cert/Certificate;

    #@4
    const/4 v4, 0x0

    #@5
    aput-object p2, v3, v4

    #@7
    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    #@a
    move-result-object v0

    #@b
    .line 545
    .local v0, "certData":[B
    const-string/jumbo v3, "WifiConfigStore"

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "putting certificate "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, " in keystore"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 546
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@2e
    const/16 v4, 0x3f2

    #@30
    const/4 v5, 0x0

    #@31
    invoke-virtual {v3, p1, v0, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result v3

    #@35
    return v3

    #@36
    .line 550
    .end local v0    # "certData":[B
    :catch_0
    move-exception v2

    #@37
    .line 551
    .local v2, "e2":Ljava/security/cert/CertificateException;
    return v6

    #@38
    .line 548
    .end local v2    # "e2":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v1

    #@39
    .line 549
    .local v1, "e1":Ljava/io/IOException;
    return v6
.end method

.method private readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "netId"    # I
    .param p2, "variable"    # Ljava/util/BitSet;
    .param p3, "varName"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 227
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3
    invoke-virtual {v5, p1, p3}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .line 228
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v5

    #@b
    if-nez v5, :cond_1

    #@d
    .line 229
    invoke-virtual {p2}, Ljava/util/BitSet;->clear()V

    #@10
    .line 230
    const-string/jumbo v5, " "

    #@13
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 231
    .local v2, "vals":[Ljava/lang/String;
    array-length v5, v2

    #@18
    :goto_0
    if-ge v4, v5, :cond_1

    #@1a
    aget-object v1, v2, v4

    #@1c
    .line 232
    .local v1, "val":Ljava/lang/String;
    invoke-direct {p0, v1, p4}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    #@1f
    move-result v0

    #@20
    .line 233
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@22
    .line 234
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    #@25
    .line 231
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_0

    #@28
    .line 226
    .end local v0    # "index":I
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "vals":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x22

    #@2
    const/4 v2, 0x1

    #@3
    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    .line 122
    .local v0, "length":I
    if-le v0, v2, :cond_0

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v1

    #@e
    if-ne v1, v3, :cond_0

    #@10
    .line 123
    add-int/lit8 v1, v0, -0x1

    #@12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v1

    #@16
    if-ne v1, v3, :cond_0

    #@18
    .line 124
    add-int/lit8 v1, v0, -0x1

    #@1a
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 126
    :cond_0
    return-object p0
.end method

.method private removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    const/16 v8, 0x3f2

    #@2
    .line 561
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 563
    .local v2, "client":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 564
    const-string/jumbo v3, "WifiConfigStore"

    #@f
    const-string/jumbo v4, "removing client private key and user cert"

    #@12
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 565
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "USRPKEY_"

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@2e
    .line 566
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@30
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v5, "USRCERT_"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v3, v4, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@47
    .line 569
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    .line 571
    .local v0, "aliases":[Ljava/lang/String;
    if-eqz v0, :cond_2

    #@4d
    .line 572
    const/4 v3, 0x0

    #@4e
    array-length v4, v0

    #@4f
    :goto_0
    if-ge v3, v4, :cond_2

    #@51
    aget-object v1, v0, v3

    #@53
    .line 573
    .local v1, "ca":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@56
    move-result v5

    #@57
    if-nez v5, :cond_1

    #@59
    .line 574
    const-string/jumbo v5, "WifiConfigStore"

    #@5c
    new-instance v6, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v7, "removing CA cert: "

    #@64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 575
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    #@75
    new-instance v6, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v7, "CACERT_"

    #@7d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v6

    #@89
    invoke-virtual {v5, v6, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@8c
    .line 572
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@8e
    goto :goto_0

    #@8f
    .line 560
    .end local v1    # "ca":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netId"    # I

    #@0
    .prologue
    .line 608
    if-nez p1, :cond_0

    #@2
    .line 609
    const/4 v8, 0x0

    #@3
    return v8

    #@4
    .line 611
    :cond_0
    sget-boolean v8, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@6
    if-eqz v8, :cond_1

    #@8
    new-instance v8, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v9, "saveNetwork: "

    #@10
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v8

    #@1c
    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@1f
    .line 612
    :cond_1
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@21
    if-eqz v8, :cond_2

    #@23
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@25
    .line 614
    const-string/jumbo v9, "ssid"

    #@28
    .line 615
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@2a
    invoke-static {v10}, Lcom/android/server/wifi/WifiConfigStore;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v10

    #@2e
    .line 612
    invoke-virtual {v8, p2, v9, v10}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_3

    #@34
    .line 619
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetworkMetadata(Landroid/net/wifi/WifiConfiguration;)Z

    #@37
    move-result v8

    #@38
    if-nez v8, :cond_4

    #@3a
    .line 620
    const/4 v8, 0x0

    #@3b
    return v8

    #@3c
    .line 616
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v9, "failed to set SSID: "

    #@44
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v8

    #@48
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@4a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v8

    #@4e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@55
    .line 617
    const/4 v8, 0x0

    #@56
    return v8

    #@57
    .line 623
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    #@5e
    move-result-object v8

    #@5f
    if-eqz v8, :cond_5

    #@61
    .line 624
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    .line 625
    .local v5, "bssid":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@6b
    const-string/jumbo v9, "bssid"

    #@6e
    invoke-virtual {v8, p2, v9, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@71
    move-result v8

    #@72
    if-nez v8, :cond_5

    #@74
    .line 626
    new-instance v8, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v9, "failed to set BSSID: "

    #@7c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v8

    #@80
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@8b
    .line 627
    const/4 v8, 0x0

    #@8c
    return v8

    #@8d
    .line 631
    .end local v5    # "bssid":Ljava/lang/String;
    :cond_5
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@8f
    sget-object v9, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@91
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@94
    move-result-object v2

    #@95
    .line 632
    .local v2, "allowedKeyManagementString":Ljava/lang/String;
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@97
    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    #@9a
    move-result v8

    #@9b
    if-eqz v8, :cond_6

    #@9d
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@9f
    .line 634
    const-string/jumbo v9, "key_mgmt"

    #@a2
    .line 632
    invoke-virtual {v8, p2, v9, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@a5
    move-result v8

    #@a6
    if-eqz v8, :cond_d

    #@a8
    .line 640
    :cond_6
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@aa
    sget-object v9, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    #@ac
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@af
    move-result-object v4

    #@b0
    .line 641
    .local v4, "allowedProtocolsString":Ljava/lang/String;
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@b2
    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    #@b5
    move-result v8

    #@b6
    if-eqz v8, :cond_7

    #@b8
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@ba
    .line 643
    const-string/jumbo v9, "proto"

    #@bd
    .line 641
    invoke-virtual {v8, p2, v9, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@c0
    move-result v8

    #@c1
    if-eqz v8, :cond_e

    #@c3
    .line 649
    :cond_7
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@c5
    .line 650
    sget-object v9, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    #@c7
    .line 649
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@ca
    move-result-object v0

    #@cb
    .line 651
    .local v0, "allowedAuthAlgorithmsString":Ljava/lang/String;
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@cd
    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    #@d0
    move-result v8

    #@d1
    if-eqz v8, :cond_8

    #@d3
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@d5
    .line 653
    const-string/jumbo v9, "auth_alg"

    #@d8
    .line 651
    invoke-virtual {v8, p2, v9, v0}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@db
    move-result v8

    #@dc
    if-eqz v8, :cond_f

    #@de
    .line 658
    :cond_8
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@e0
    .line 659
    sget-object v9, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    #@e2
    .line 658
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    #@e5
    move-result-object v3

    #@e6
    .line 660
    .local v3, "allowedPairwiseCiphersString":Ljava/lang/String;
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@e8
    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    #@eb
    move-result v8

    #@ec
    if-eqz v8, :cond_9

    #@ee
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@f0
    .line 662
    const-string/jumbo v9, "pairwise"

    #@f3
    .line 660
    invoke-virtual {v8, p2, v9, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@f6
    move-result v8

    #@f7
    if-eqz v8, :cond_10

    #@f9
    .line 670
    :cond_9
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@fb
    .line 671
    sget-object v9, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    #@fd
    .line 672
    sget-object v10, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    #@ff
    .line 673
    const/4 v11, 0x4

    #@100
    .line 672
    aget-object v10, v10, v11

    #@102
    .line 670
    invoke-static {v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->makeStringWithException(Ljava/util/BitSet;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@105
    move-result-object v1

    #@106
    .line 674
    .local v1, "allowedGroupCiphersString":Ljava/lang/String;
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@108
    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    #@10b
    move-result v8

    #@10c
    if-eqz v8, :cond_a

    #@10e
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@110
    .line 676
    const-string/jumbo v9, "group"

    #@113
    .line 674
    invoke-virtual {v8, p2, v9, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@116
    move-result v8

    #@117
    if-eqz v8, :cond_11

    #@119
    .line 683
    :cond_a
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@11b
    if-eqz v8, :cond_b

    #@11d
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@11f
    const-string/jumbo v9, "*"

    #@122
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@125
    move-result v8

    #@126
    if-eqz v8, :cond_12

    #@128
    .line 691
    :cond_b
    const/4 v6, 0x0

    #@129
    .line 692
    .local v6, "hasSetKey":Z
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@12b
    if-eqz v8, :cond_15

    #@12d
    .line 693
    const/4 v7, 0x0

    #@12e
    .local v7, "i":I
    :goto_0
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@130
    array-length v8, v8

    #@131
    if-ge v7, v8, :cond_15

    #@133
    .line 696
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@135
    aget-object v8, v8, v7

    #@137
    if-eqz v8, :cond_c

    #@139
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@13b
    aget-object v8, v8, v7

    #@13d
    const-string/jumbo v9, "*"

    #@140
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@143
    move-result v8

    #@144
    if-eqz v8, :cond_13

    #@146
    .line 693
    :cond_c
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@148
    goto :goto_0

    #@149
    .line 636
    .end local v0    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    .end local v1    # "allowedGroupCiphersString":Ljava/lang/String;
    .end local v3    # "allowedPairwiseCiphersString":Ljava/lang/String;
    .end local v4    # "allowedProtocolsString":Ljava/lang/String;
    .end local v6    # "hasSetKey":Z
    .end local v7    # "i":I
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    #@14b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@14e
    const-string/jumbo v9, "failed to set key_mgmt: "

    #@151
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v8

    #@155
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v8

    #@159
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15c
    move-result-object v8

    #@15d
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@160
    .line 637
    const/4 v8, 0x0

    #@161
    return v8

    #@162
    .line 645
    .restart local v4    # "allowedProtocolsString":Ljava/lang/String;
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v9, "failed to set proto: "

    #@16a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v8

    #@16e
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v8

    #@172
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v8

    #@176
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@179
    .line 646
    const/4 v8, 0x0

    #@17a
    return v8

    #@17b
    .line 655
    .restart local v0    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    #@17d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@180
    const-string/jumbo v9, "failed to set auth_alg: "

    #@183
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v8

    #@187
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v8

    #@18b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v8

    #@18f
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@192
    .line 656
    const/4 v8, 0x0

    #@193
    return v8

    #@194
    .line 664
    .restart local v3    # "allowedPairwiseCiphersString":Ljava/lang/String;
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    #@196
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@199
    const-string/jumbo v9, "failed to set pairwise: "

    #@19c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v8

    #@1a0
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v8

    #@1a4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a7
    move-result-object v8

    #@1a8
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@1ab
    .line 665
    const/4 v8, 0x0

    #@1ac
    return v8

    #@1ad
    .line 678
    .restart local v1    # "allowedGroupCiphersString":Ljava/lang/String;
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    #@1af
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1b2
    const-string/jumbo v9, "failed to set group: "

    #@1b5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v8

    #@1b9
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v8

    #@1bd
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c0
    move-result-object v8

    #@1c1
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@1c4
    .line 679
    const/4 v8, 0x0

    #@1c5
    return v8

    #@1c6
    .line 684
    :cond_12
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1c8
    .line 686
    const-string/jumbo v9, "psk"

    #@1cb
    .line 687
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@1cd
    .line 684
    invoke-virtual {v8, p2, v9, v10}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@1d0
    move-result v8

    #@1d1
    if-nez v8, :cond_b

    #@1d3
    .line 688
    const-string/jumbo v8, "failed to set psk"

    #@1d6
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@1d9
    .line 689
    const/4 v8, 0x0

    #@1da
    return v8

    #@1db
    .line 697
    .restart local v6    # "hasSetKey":Z
    .restart local v7    # "i":I
    :cond_13
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@1dd
    .line 699
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    #@1df
    aget-object v9, v9, v7

    #@1e1
    .line 700
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@1e3
    aget-object v10, v10, v7

    #@1e5
    .line 697
    invoke-virtual {v8, p2, v9, v10}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@1e8
    move-result v8

    #@1e9
    if-nez v8, :cond_14

    #@1eb
    .line 701
    new-instance v8, Ljava/lang/StringBuilder;

    #@1ed
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1f0
    const-string/jumbo v9, "failed to set wep_key"

    #@1f3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v8

    #@1f7
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v8

    #@1fb
    const-string/jumbo v9, ": "

    #@1fe
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v8

    #@202
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@204
    aget-object v9, v9, v7

    #@206
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@209
    move-result-object v8

    #@20a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20d
    move-result-object v8

    #@20e
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@211
    .line 702
    const/4 v8, 0x0

    #@212
    return v8

    #@213
    .line 704
    :cond_14
    const/4 v6, 0x1

    #@214
    goto/16 :goto_1

    #@216
    .line 708
    .end local v7    # "i":I
    :cond_15
    if-eqz v6, :cond_16

    #@218
    .line 709
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@21a
    .line 711
    const-string/jumbo v9, "wep_tx_keyidx"

    #@21d
    .line 712
    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@21f
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@222
    move-result-object v10

    #@223
    .line 709
    invoke-virtual {v8, p2, v9, v10}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@226
    move-result v8

    #@227
    if-nez v8, :cond_16

    #@229
    .line 713
    new-instance v8, Ljava/lang/StringBuilder;

    #@22b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@22e
    const-string/jumbo v9, "failed to set wep_tx_keyidx: "

    #@231
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@234
    move-result-object v8

    #@235
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@237
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v8

    #@23b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23e
    move-result-object v8

    #@23f
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@242
    .line 714
    const/4 v8, 0x0

    #@243
    return v8

    #@244
    .line 717
    :cond_16
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@246
    .line 719
    const-string/jumbo v9, "priority"

    #@249
    .line 720
    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@24b
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@24e
    move-result-object v10

    #@24f
    .line 717
    invoke-virtual {v8, p2, v9, v10}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@252
    move-result v8

    #@253
    if-nez v8, :cond_17

    #@255
    .line 721
    new-instance v8, Ljava/lang/StringBuilder;

    #@257
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@25a
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@25c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v8

    #@260
    const-string/jumbo v9, ": failed to set priority: "

    #@263
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v8

    #@267
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@269
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v8

    #@26d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@270
    move-result-object v8

    #@271
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@274
    .line 722
    const/4 v8, 0x0

    #@275
    return v8

    #@276
    .line 724
    :cond_17
    iget-boolean v8, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@278
    if-eqz v8, :cond_18

    #@27a
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@27c
    .line 726
    const-string/jumbo v10, "scan_ssid"

    #@27f
    .line 727
    iget-boolean v8, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@281
    if-eqz v8, :cond_1b

    #@283
    const/4 v8, 0x1

    #@284
    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@287
    move-result-object v8

    #@288
    .line 724
    invoke-virtual {v9, p2, v10, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@28b
    move-result v8

    #@28c
    if-eqz v8, :cond_1c

    #@28e
    .line 731
    :cond_18
    iget-boolean v8, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    #@290
    if-eqz v8, :cond_19

    #@292
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@294
    .line 733
    const-string/jumbo v9, "ieee80211w"

    #@297
    .line 734
    const/4 v10, 0x2

    #@298
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@29b
    move-result-object v10

    #@29c
    .line 731
    invoke-virtual {v8, p2, v9, v10}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@29f
    move-result v8

    #@2a0
    if-eqz v8, :cond_1d

    #@2a2
    .line 738
    :cond_19
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@2a4
    if-eqz v8, :cond_1a

    #@2a6
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2a8
    .line 740
    const-string/jumbo v9, "update_identifier"

    #@2ab
    .line 741
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@2ad
    .line 738
    invoke-virtual {v8, p2, v9, v10}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@2b0
    move-result v8

    #@2b1
    if-eqz v8, :cond_1e

    #@2b3
    .line 745
    :cond_1a
    const/4 v8, 0x1

    #@2b4
    return v8

    #@2b5
    .line 727
    :cond_1b
    const/4 v8, 0x0

    #@2b6
    goto :goto_2

    #@2b7
    .line 728
    :cond_1c
    new-instance v8, Ljava/lang/StringBuilder;

    #@2b9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2bc
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@2be
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c1
    move-result-object v8

    #@2c2
    const-string/jumbo v9, ": failed to set hiddenSSID: "

    #@2c5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c8
    move-result-object v8

    #@2c9
    iget-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@2cb
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v8

    #@2cf
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d2
    move-result-object v8

    #@2d3
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@2d6
    .line 729
    const/4 v8, 0x0

    #@2d7
    return v8

    #@2d8
    .line 735
    :cond_1d
    new-instance v8, Ljava/lang/StringBuilder;

    #@2da
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2dd
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@2df
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v8

    #@2e3
    const-string/jumbo v9, ": failed to set requirePMF: "

    #@2e6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e9
    move-result-object v8

    #@2ea
    iget-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    #@2ec
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2ef
    move-result-object v8

    #@2f0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f3
    move-result-object v8

    #@2f4
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@2f7
    .line 736
    const/4 v8, 0x0

    #@2f8
    return v8

    #@2f9
    .line 742
    :cond_1e
    new-instance v8, Ljava/lang/StringBuilder;

    #@2fb
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2fe
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@300
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@303
    move-result-object v8

    #@304
    const-string/jumbo v9, ": failed to set updateIdentifier: "

    #@307
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    move-result-object v8

    #@30b
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@30d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@310
    move-result-object v8

    #@311
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@314
    move-result-object v8

    #@315
    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@318
    .line 743
    const/4 v8, 0x0

    #@319
    return v8
.end method

.method private updateNetworkKeys(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "existingConfig"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 757
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@4
    .line 758
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_1

    #@a
    .line 764
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 766
    .local v2, "keyId":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@10
    .line 767
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@12
    .line 766
    :cond_0
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_1

    #@18
    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    const-string/jumbo v4, ": failed to install keys"

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 769
    return v6

    #@32
    .line 771
    .end local v2    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@33
    .line 772
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    const-string/jumbo v4, " invalid config for key installation: "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@54
    .line 773
    return v6

    #@55
    .line 777
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    new-instance v3, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;

    #@57
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@59
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@5b
    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;-><init>(Lcom/android/server/wifi/WifiConfigStore;ILjava/lang/String;)V

    #@5e
    .line 776
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->saveToSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;)Z

    #@61
    move-result v3

    #@62
    if-nez v3, :cond_2

    #@64
    .line 778
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    #@67
    .line 779
    return v6

    #@68
    .line 781
    :cond_2
    const/4 v3, 0x1

    #@69
    return v3
.end method


# virtual methods
.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "existingConfig"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 792
    if-nez p1, :cond_0

    #@4
    .line 793
    return v4

    #@5
    .line 795
    :cond_0
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@7
    if-eqz v2, :cond_1

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "addOrUpdateNetwork: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@22
    .line 796
    :cond_1
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@24
    .line 797
    .local v0, "netId":I
    const/4 v1, 0x0

    #@25
    .line 803
    .local v1, "newNetwork":Z
    if-ne v0, v5, :cond_3

    #@27
    .line 804
    const/4 v1, 0x1

    #@28
    .line 805
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2a
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->addNetwork()I

    #@2d
    move-result v0

    #@2e
    .line 806
    if-gez v0, :cond_2

    #@30
    .line 807
    const-string/jumbo v2, "Failed to add a network!"

    #@33
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@36
    .line 808
    return v4

    #@37
    .line 810
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "addOrUpdateNetwork created netId="

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->logi(Ljava/lang/String;)V

    #@4e
    .line 813
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@50
    .line 815
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Z

    #@53
    move-result v2

    #@54
    if-nez v2, :cond_5

    #@56
    .line 816
    if-eqz v1, :cond_4

    #@58
    .line 817
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@5a
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    #@5d
    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v3, "Failed to set a network variable, removed network: "

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@74
    .line 820
    :cond_4
    return v4

    #@75
    .line 822
    :cond_5
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@77
    if-eqz v2, :cond_6

    #@79
    .line 823
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@7b
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@7e
    move-result v2

    #@7f
    if-eq v2, v5, :cond_6

    #@81
    .line 824
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->updateNetworkKeys(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    #@84
    move-result v2

    #@85
    return v2

    #@86
    .line 827
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    #@88
    invoke-virtual {v2}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    #@8b
    .line 828
    const/4 v2, 0x1

    #@8c
    return v2
.end method

.method public blackListBssid(Ljava/lang/String;)V
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1134
    if-nez p1, :cond_0

    #@2
    .line 1135
    return-void

    #@3
    .line 1137
    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@5
    if-eqz v1, :cond_1

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "blackListBssid: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@1e
    .line 1138
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    #@20
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@23
    .line 1140
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@25
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    #@28
    .line 1142
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    #@2a
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    #@2c
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    #@2f
    move-result v2

    #@30
    new-array v2, v2, [Ljava/lang/String;

    #@32
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, [Ljava/lang/String;

    #@38
    .line 1143
    .local v0, "list":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@3a
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklist([Ljava/lang/String;)Z

    #@3d
    .line 1133
    return-void
.end method

.method public clearBssidBlacklist()V
    .locals 2

    #@0
    .prologue
    .line 1122
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "clearBlacklist"

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@a
    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    #@c
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    #@f
    .line 1124
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@11
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    #@14
    .line 1125
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklist([Ljava/lang/String;)Z

    #@1a
    .line 1121
    return-void
.end method

.method public disableAllNetworks(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 974
    .local p1, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiConfiguration;>;"
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    const-string/jumbo v3, "disableAllNetworks"

    #@7
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@a
    .line 975
    :cond_0
    const/4 v2, 0x0

    #@b
    .line 976
    .local v2, "networkDisabled":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "enabled$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1b
    .line 977
    .local v0, "enabled":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 978
    const/4 v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 981
    .end local v0    # "enabled":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    #@26
    .line 982
    return v2
.end method

.method disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 882
    if-nez p1, :cond_0

    #@4
    .line 883
    return v2

    #@5
    .line 885
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "disableNetwork: "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@22
    .line 886
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@24
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@26
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_2

    #@2c
    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v1, "Disable network in wpa_supplicant failed on "

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@45
    .line 888
    return v2

    #@46
    .line 890
    :cond_2
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    #@48
    .line 891
    return v3
.end method

.method public enableHS20(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->setHs20(Z)V

    #@5
    .line 963
    return-void
.end method

.method public isBssidBlacklisted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1088
    if-nez p1, :cond_0

    #@4
    .line 1089
    return v2

    #@5
    .line 1092
    :cond_0
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 1093
    return v2

    #@a
    .line 1096
    :cond_1
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@c
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@f
    move-result v0

    #@10
    .line 1097
    .local v0, "method":I
    const/4 v3, 0x4

    #@11
    if-eq v0, v3, :cond_2

    #@13
    .line 1098
    const/4 v3, 0x5

    #@14
    if-ne v0, v3, :cond_3

    #@16
    .line 1097
    :cond_2
    :goto_0
    return v1

    #@17
    .line 1099
    :cond_3
    const/4 v3, 0x6

    #@18
    if-eq v0, v3, :cond_2

    #@1a
    move v1, v2

    #@1b
    goto :goto_0
.end method

.method public loadNetworks(Ljava/util/Map;Landroid/util/SparseArray;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 366
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    #@1
    .line 367
    .local v9, "lastPriority":I
    const/4 v10, -0x1

    #@2
    .line 368
    .local v10, "last_id":I
    const/4 v3, 0x0

    #@3
    .line 369
    .local v3, "done":Z
    :goto_0
    if-nez v3, :cond_a

    #@5
    .line 370
    move-object/from16 v0, p0

    #@7
    iget-object v15, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@9
    invoke-virtual {v15, v10}, Lcom/android/server/wifi/WifiNative;->listNetworks(I)Ljava/lang/String;

    #@c
    move-result-object v12

    #@d
    .line 371
    .local v12, "listStr":Ljava/lang/String;
    if-nez v12, :cond_0

    #@f
    .line 372
    return v9

    #@10
    .line 374
    :cond_0
    const-string/jumbo v15, "\n"

    #@13
    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v11

    #@17
    .line 375
    .local v11, "lines":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@19
    iget-boolean v15, v0, Lcom/android/server/wifi/WifiConfigStore;->mShowNetworks:Z

    #@1b
    if-eqz v15, :cond_1

    #@1d
    .line 376
    const-string/jumbo v15, "loadNetworks:  "

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-direct {v0, v15}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@25
    .line 377
    const/4 v15, 0x0

    #@26
    array-length v0, v11

    #@27
    move/from16 v16, v0

    #@29
    :goto_1
    move/from16 v0, v16

    #@2b
    if-ge v15, v0, :cond_1

    #@2d
    aget-object v13, v11, v15

    #@2f
    .line 378
    .local v13, "net":Ljava/lang/String;
    move-object/from16 v0, p0

    #@31
    invoke-direct {v0, v13}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@34
    .line 377
    add-int/lit8 v15, v15, 0x1

    #@36
    goto :goto_1

    #@37
    .line 382
    .end local v13    # "net":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x1

    #@38
    .local v8, "i":I
    :goto_2
    array-length v15, v11

    #@39
    if-ge v8, v15, :cond_8

    #@3b
    .line 383
    aget-object v15, v11, v8

    #@3d
    const-string/jumbo v16, "\t"

    #@40
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@43
    move-result-object v14

    #@44
    .line 385
    .local v14, "result":[Ljava/lang/String;
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    #@46
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@49
    .line 387
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v15, 0x0

    #@4a
    :try_start_0
    aget-object v15, v14, v15

    #@4c
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4f
    move-result v15

    #@50
    iput v15, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@52
    .line 388
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 394
    const/4 v15, 0x1

    #@55
    iput v15, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    #@57
    .line 395
    move-object/from16 v0, p0

    #@59
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    #@5c
    .line 398
    move-object/from16 v0, p0

    #@5e
    iget-object v15, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@60
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@62
    move/from16 v16, v0

    #@64
    .line 399
    const-string/jumbo v17, "id_str"

    #@67
    .line 398
    invoke-virtual/range {v15 .. v17}, Lcom/android/server/wifi/WifiNative;->getNetworkExtra(ILjava/lang/String;)Ljava/util/Map;

    #@6a
    move-result-object v6

    #@6b
    .line 400
    .local v6, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_2

    #@6d
    .line 401
    new-instance v6, Ljava/util/HashMap;

    #@6f
    .end local v6    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@72
    .line 404
    .restart local v6    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@74
    iget-object v15, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@76
    .line 405
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@78
    move/from16 v16, v0

    #@7a
    const-string/jumbo v17, "id_str"

    #@7d
    .line 404
    invoke-virtual/range {v15 .. v17}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@80
    move-result-object v15

    #@81
    invoke-static {v15}, Lcom/android/server/wifi/hotspot2/Utils;->unquote(Ljava/lang/String;)Ljava/lang/String;

    #@84
    move-result-object v7

    #@85
    .line 406
    .local v7, "fqdn":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@87
    .line 407
    const-string/jumbo v15, "fqdn"

    #@8a
    invoke-interface {v6, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    .line 408
    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@8f
    .line 410
    const-string/jumbo v15, ""

    #@92
    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@94
    .line 413
    .end local v7    # "fqdn":Ljava/lang/String;
    :cond_2
    iget v15, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@96
    move-object/from16 v0, p2

    #@98
    invoke-virtual {v0, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@9b
    .line 415
    iget v15, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@9d
    if-le v15, v9, :cond_3

    #@9f
    .line 416
    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@a1
    .line 418
    :cond_3
    sget-object v15, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    #@a3
    invoke-virtual {v1, v15}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    #@a6
    .line 419
    sget-object v15, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@a8
    invoke-virtual {v1, v15}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    #@ab
    .line 420
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@ae
    move-result v15

    #@af
    if-nez v15, :cond_5

    #@b1
    .line 421
    move-object/from16 v0, p0

    #@b3
    iget-boolean v15, v0, Lcom/android/server/wifi/WifiConfigStore;->mShowNetworks:Z

    #@b5
    if-eqz v15, :cond_4

    #@b7
    .line 422
    new-instance v15, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v16, "Ignoring network "

    #@bf
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v15

    #@c3
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@c5
    move/from16 v16, v0

    #@c7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v15

    #@cb
    const-string/jumbo v16, " because configuration "

    #@ce
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v15

    #@d2
    .line 423
    const-string/jumbo v16, "loaded from wpa_supplicant.conf is not valid."

    #@d5
    .line 422
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v15

    #@d9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v15

    #@dd
    move-object/from16 v0, p0

    #@df
    invoke-direct {v0, v15}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@e2
    .line 382
    .end local v6    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    #@e4
    goto/16 :goto_2

    #@e6
    .line 389
    :catch_0
    move-exception v5

    #@e7
    .line 390
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v15, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v16, "Failed to read network-id \'"

    #@ef
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v15

    #@f3
    const/16 v16, 0x0

    #@f5
    aget-object v16, v14, v16

    #@f7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v15

    #@fb
    const-string/jumbo v16, "\'"

    #@fe
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v15

    #@102
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v15

    #@106
    move-object/from16 v0, p0

    #@108
    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@10b
    goto :goto_3

    #@10c
    .line 429
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v15, "configKey"

    #@10f
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@112
    move-result-object v2

    #@113
    check-cast v2, Ljava/lang/String;

    #@115
    .line 430
    .local v2, "configKey":Ljava/lang/String;
    if-nez v2, :cond_6

    #@117
    .line 435
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@11a
    move-result-object v2

    #@11b
    .line 436
    move-object/from16 v0, p0

    #@11d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetworkMetadata(Landroid/net/wifi/WifiConfiguration;)Z

    #@120
    .line 438
    :cond_6
    move-object/from16 v0, p1

    #@122
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@125
    move-result-object v4

    #@126
    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    #@128
    .line 439
    .local v4, "duplicateConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_4

    #@12a
    .line 441
    move-object/from16 v0, p0

    #@12c
    iget-boolean v15, v0, Lcom/android/server/wifi/WifiConfigStore;->mShowNetworks:Z

    #@12e
    if-eqz v15, :cond_7

    #@130
    .line 442
    new-instance v15, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    const-string/jumbo v16, "Replacing duplicate network "

    #@138
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v15

    #@13c
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@13e
    move/from16 v16, v0

    #@140
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@143
    move-result-object v15

    #@144
    .line 443
    const-string/jumbo v16, " with "

    #@147
    .line 442
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v15

    #@14b
    .line 443
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@14d
    move/from16 v16, v0

    #@14f
    .line 442
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@152
    move-result-object v15

    #@153
    .line 443
    const-string/jumbo v16, "."

    #@156
    .line 442
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v15

    #@15a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v15

    #@15e
    move-object/from16 v0, p0

    #@160
    invoke-direct {v0, v15}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@163
    .line 448
    :cond_7
    move-object/from16 v0, p0

    #@165
    iget-object v15, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@167
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@169
    move/from16 v16, v0

    #@16b
    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    #@16e
    goto/16 :goto_3

    #@170
    .line 451
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configKey":Ljava/lang/String;
    .end local v4    # "duplicateConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "result":[Ljava/lang/String;
    :cond_8
    array-length v15, v11

    #@171
    const/16 v16, 0x1

    #@173
    move/from16 v0, v16

    #@175
    if-ne v15, v0, :cond_9

    #@177
    const/4 v3, 0x1

    #@178
    goto/16 :goto_0

    #@17a
    :cond_9
    const/4 v3, 0x0

    #@17b
    goto/16 :goto_0

    #@17d
    .line 453
    .end local v8    # "i":I
    .end local v11    # "lines":[Ljava/lang/String;
    .end local v12    # "listStr":Ljava/lang/String;
    :cond_a
    return v9
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1257
    const-string/jumbo v0, "WifiConfigStore"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1256
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1234
    const-string/jumbo v0, "WifiConfigStore"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1233
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1242
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;Z)V

    #@4
    .line 1241
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    #@0
    .prologue
    .line 1246
    if-eqz p2, :cond_0

    #@2
    .line 1247
    const-string/jumbo v0, "WifiConfigStore"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, " stack:"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x2

    #@1e
    aget-object v2, v2, v3

    #@20
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 1248
    const-string/jumbo v2, " - "

    #@2b
    .line 1247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 1248
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@36
    move-result-object v2

    #@37
    const/4 v3, 0x3

    #@38
    aget-object v2, v2, v3

    #@3a
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 1247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 1249
    const-string/jumbo v2, " - "

    #@45
    .line 1247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 1249
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@50
    move-result-object v2

    #@51
    const/4 v3, 0x4

    #@52
    aget-object v2, v2, v3

    #@54
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 1247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 1250
    const-string/jumbo v2, " - "

    #@5f
    .line 1247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 1250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@6a
    move-result-object v2

    #@6b
    const/4 v3, 0x5

    #@6c
    aget-object v2, v2, v3

    #@6e
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    .line 1247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 1245
    :goto_0
    return-void

    #@7e
    .line 1252
    :cond_0
    const-string/jumbo v0, "WifiConfigStore"

    #@81
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    goto :goto_0
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1238
    const-string/jumbo v0, "WifiConfigStore"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1237
    return-void
.end method

.method public readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    .line 247
    if-nez p1, :cond_0

    #@6
    .line 248
    return-void

    #@7
    .line 250
    :cond_0
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@9
    if-eqz v6, :cond_1

    #@b
    new-instance v6, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v7, "readNetworkVariables: "

    #@13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@24
    .line 251
    :cond_1
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@26
    .line 252
    .local v2, "netId":I
    if-gez v2, :cond_2

    #@28
    .line 253
    return-void

    #@29
    .line 262
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2b
    const-string/jumbo v7, "ssid"

    #@2e
    invoke-virtual {v6, v2, v7}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 263
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@35
    move-result v6

    #@36
    if-nez v6, :cond_8

    #@38
    .line 264
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v6

    #@3c
    const/16 v7, 0x22

    #@3e
    if-eq v6, v7, :cond_7

    #@40
    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v7, "\""

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-static {v3}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    const-string/jumbo v7, "\""

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    iput-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@65
    .line 275
    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@67
    const-string/jumbo v7, "bssid"

    #@6a
    invoke-virtual {v6, v2, v7}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 276
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@71
    move-result v6

    #@72
    if-nez v6, :cond_9

    #@74
    .line 277
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    #@7b
    .line 282
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7d
    const-string/jumbo v7, "priority"

    #@80
    invoke-virtual {v6, v2, v7}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    .line 283
    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@86
    .line 284
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@89
    move-result v6

    #@8a
    if-nez v6, :cond_3

    #@8c
    .line 286
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8f
    move-result v6

    #@90
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    #@92
    .line 291
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@94
    const-string/jumbo v7, "scan_ssid"

    #@97
    invoke-virtual {v6, v2, v7}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v3

    #@9b
    .line 292
    iput-boolean v5, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@9d
    .line 293
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a0
    move-result v6

    #@a1
    if-nez v6, :cond_4

    #@a3
    .line 295
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a6
    move-result v6

    #@a7
    if-eqz v6, :cond_a

    #@a9
    move v6, v4

    #@aa
    :goto_3
    iput-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    #@ac
    .line 300
    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@ae
    const-string/jumbo v7, "ieee80211w"

    #@b1
    invoke-virtual {v6, v2, v7}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@b4
    move-result-object v3

    #@b5
    .line 301
    iput-boolean v5, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    #@b7
    .line 302
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ba
    move-result v6

    #@bb
    if-nez v6, :cond_5

    #@bd
    .line 304
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c0
    move-result v6

    #@c1
    const/4 v7, 0x2

    #@c2
    if-ne v6, v7, :cond_b

    #@c4
    :goto_5
    iput-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    #@c6
    .line 309
    :cond_5
    :goto_6
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@c8
    const-string/jumbo v5, "wep_tx_keyidx"

    #@cb
    invoke-virtual {v4, v2, v5}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    .line 310
    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@d1
    .line 311
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d4
    move-result v4

    #@d5
    if-nez v4, :cond_6

    #@d7
    .line 313
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@da
    move-result v4

    #@db
    iput v4, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    #@dd
    .line 318
    :cond_6
    :goto_7
    const/4 v0, 0x0

    #@de
    .local v0, "i":I
    :goto_8
    const/4 v4, 0x4

    #@df
    if-ge v0, v4, :cond_d

    #@e1
    .line 319
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@e3
    .line 320
    sget-object v5, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    #@e5
    aget-object v5, v5, v0

    #@e7
    .line 319
    invoke-virtual {v4, v2, v5}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@ea
    move-result-object v3

    #@eb
    .line 321
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ee
    move-result v4

    #@ef
    if-nez v4, :cond_c

    #@f1
    .line 322
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@f3
    aput-object v3, v4, v0

    #@f5
    .line 318
    :goto_9
    add-int/lit8 v0, v0, 0x1

    #@f7
    goto :goto_8

    #@f8
    .line 269
    .end local v0    # "i":I
    :cond_7
    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@fa
    goto/16 :goto_0

    #@fc
    .line 272
    :cond_8
    iput-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@fe
    goto/16 :goto_0

    #@100
    .line 279
    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@103
    move-result-object v6

    #@104
    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    #@107
    goto/16 :goto_1

    #@109
    :cond_a
    move v6, v5

    #@10a
    .line 295
    goto :goto_3

    #@10b
    :cond_b
    move v4, v5

    #@10c
    .line 304
    goto :goto_5

    #@10d
    .line 324
    .restart local v0    # "i":I
    :cond_c
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@10f
    aput-object v8, v4, v0

    #@111
    goto :goto_9

    #@112
    .line 328
    :cond_d
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@114
    const-string/jumbo v5, "psk"

    #@117
    invoke-virtual {v4, v2, v5}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    #@11a
    move-result-object v3

    #@11b
    .line 329
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11e
    move-result v4

    #@11f
    if-nez v4, :cond_f

    #@121
    .line 330
    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@123
    .line 335
    :goto_a
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@125
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@127
    .line 336
    const-string/jumbo v6, "proto"

    #@12a
    sget-object v7, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    #@12c
    .line 335
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    #@12f
    .line 338
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@131
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@133
    .line 339
    const-string/jumbo v6, "key_mgmt"

    #@136
    sget-object v7, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@138
    .line 338
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    #@13b
    .line 341
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@13d
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@13f
    .line 342
    const-string/jumbo v6, "auth_alg"

    #@142
    sget-object v7, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    #@144
    .line 341
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    #@147
    .line 344
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@149
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@14b
    .line 345
    const-string/jumbo v6, "pairwise"

    #@14e
    sget-object v7, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    #@150
    .line 344
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    #@153
    .line 347
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@155
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@157
    .line 348
    const-string/jumbo v6, "group"

    #@15a
    sget-object v7, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    #@15c
    .line 347
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    #@15f
    .line 350
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@161
    if-nez v4, :cond_e

    #@163
    .line 351
    new-instance v4, Landroid/net/wifi/WifiEnterpriseConfig;

    #@165
    invoke-direct {v4}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    #@168
    iput-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@16a
    .line 353
    :cond_e
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@16c
    new-instance v5, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;

    #@16e
    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/WifiConfigStore$SupplicantLoader;-><init>(Lcom/android/server/wifi/WifiConfigStore;I)V

    #@171
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->loadFromSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;)V

    #@174
    .line 246
    return-void

    #@175
    .line 332
    :cond_f
    iput-object v8, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@177
    goto :goto_a

    #@178
    .line 314
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    #@179
    .local v1, "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_7

    #@17b
    .line 305
    .end local v1    # "ignore":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    #@17c
    .restart local v1    # "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_6

    #@17e
    .line 296
    .end local v1    # "ignore":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    #@17f
    .restart local v1    # "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_4

    #@181
    .line 287
    .end local v1    # "ignore":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    #@182
    .restart local v1    # "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_2
.end method

.method public readNetworkVariablesFromReader(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1032
    new-instance v8, Ljava/util/HashMap;

    #@2
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1033
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@7
    if-eqz v11, :cond_0

    #@9
    new-instance v11, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v12, "readNetworkVariablesFromReader key="

    #@11
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v11

    #@15
    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v11

    #@19
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v11

    #@1d
    invoke-direct {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@20
    .line 1034
    :cond_0
    const/4 v5, 0x0

    #@21
    .line 1035
    .local v5, "found":Z
    const/4 v1, 0x0

    #@22
    .line 1036
    .local v1, "configKey":Ljava/lang/String;
    const/4 v10, 0x0

    #@23
    .line 1037
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    .end local v1    # "configKey":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .local v7, "line":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_6

    #@29
    .line 1038
    const-string/jumbo v11, "[ \\t]*network=\\{"

    #@2c
    invoke-virtual {v7, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@2f
    move-result v11

    #@30
    if-eqz v11, :cond_5

    #@32
    .line 1039
    const/4 v5, 0x1

    #@33
    .line 1040
    const/4 v1, 0x0

    #@34
    .line 1041
    .restart local v1    # "configKey":Ljava/lang/String;
    const/4 v10, 0x0

    #@35
    .line 1047
    .end local v1    # "configKey":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v5, :cond_4

    #@37
    .line 1048
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3a
    move-result-object v9

    #@3b
    .line 1049
    .local v9, "trimmedLine":Ljava/lang/String;
    const-string/jumbo v11, "id_str="

    #@3e
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@41
    move-result v11

    #@42
    if-eqz v11, :cond_2

    #@44
    .line 1053
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@47
    move-result v11

    #@48
    add-int/lit8 v11, v11, -0x1

    #@4a
    const/16 v12, 0x8

    #@4c
    .line 1052
    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    .line 1055
    .local v4, "encodedExtras":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    #@52
    const-string/jumbo v11, "UTF-8"

    #@55
    invoke-static {v4, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v11

    #@59
    invoke-direct {v6, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@5c
    .line 1056
    .local v6, "json":Lorg/json/JSONObject;
    const-string/jumbo v11, "configKey"

    #@5f
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@62
    move-result v11

    #@63
    if-eqz v11, :cond_2

    #@65
    .line 1058
    const-string/jumbo v11, "configKey"

    #@68
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@6b
    move-result-object v2

    #@6c
    .line 1059
    .local v2, "configKeyFromJson":Ljava/lang/Object;
    instance-of v11, v2, Ljava/lang/String;

    #@6e
    if-eqz v11, :cond_2

    #@70
    .line 1060
    move-object v0, v2

    #@71
    check-cast v0, Ljava/lang/String;

    #@73
    move-object v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    #@74
    .line 1070
    .end local v2    # "configKeyFromJson":Ljava/lang/Object;
    .end local v4    # "encodedExtras":Ljava/lang/String;
    .end local v6    # "json":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v11

    #@7d
    const-string/jumbo v12, "="

    #@80
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v11

    #@84
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v11

    #@88
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8b
    move-result v11

    #@8c
    if-eqz v11, :cond_3

    #@8e
    .line 1071
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@91
    move-result v11

    #@92
    add-int/lit8 v11, v11, 0x1

    #@94
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@97
    move-result-object v10

    #@98
    .line 1073
    :cond_3
    if-eqz v1, :cond_4

    #@9a
    if-eqz v10, :cond_4

    #@9c
    .line 1074
    invoke-interface {v8, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    .line 1037
    .end local v9    # "trimmedLine":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@a2
    move-result-object v7

    #@a3
    goto :goto_0

    #@a4
    .line 1042
    :cond_5
    const-string/jumbo v11, "[ \\t]*\\}"

    #@a7
    invoke-virtual {v7, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@aa
    move-result v11

    #@ab
    if-eqz v11, :cond_1

    #@ad
    .line 1043
    const/4 v5, 0x0

    #@ae
    .line 1044
    const/4 v1, 0x0

    #@af
    .line 1045
    .restart local v1    # "configKey":Ljava/lang/String;
    const/4 v10, 0x0

    #@b0
    .restart local v10    # "value":Ljava/lang/String;
    goto :goto_1

    #@b1
    .line 1063
    .end local v1    # "configKey":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "trimmedLine":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@b2
    .line 1064
    .local v3, "e":Lorg/json/JSONException;
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@b4
    if-eqz v11, :cond_2

    #@b6
    .line 1065
    new-instance v11, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v12, "Could not get configKey, "

    #@be
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v11

    #@c2
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v11

    #@c6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v11

    #@ca
    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@cd
    goto :goto_2

    #@ce
    .line 1078
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v9    # "trimmedLine":Ljava/lang/String;
    :cond_6
    return-object v8
.end method

.method public readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 999
    new-instance v4, Ljava/util/HashMap;

    #@2
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1000
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@6
    .line 1002
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    #@8
    new-instance v5, Ljava/io/FileReader;

    #@a
    const-string/jumbo v6, "/data/misc/wifi/wpa_supplicant.conf"

    #@d
    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@10
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1003
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromReader(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    move-result-object v4

    #@17
    .line 1010
    if-eqz v3, :cond_0

    #@19
    .line 1011
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@1c
    :cond_0
    :goto_0
    move-object v2, v3

    #@1d
    .line 1019
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v4

    #@1e
    .line 1013
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    #@1f
    .line 1014
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@21
    if-eqz v5, :cond_0

    #@23
    .line 1015
    new-instance v5, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v6, "Could not close reader for /data/misc/wifi/wpa_supplicant.conf, "

    #@2b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@3a
    goto :goto_0

    #@3b
    .line 1006
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    #@3c
    .line 1007
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@3e
    if-eqz v5, :cond_2

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    .line 1010
    :cond_2
    if-eqz v2, :cond_1

    #@59
    .line 1011
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@5c
    goto :goto_1

    #@5d
    .line 1013
    :catch_2
    move-exception v1

    #@5e
    .line 1014
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@60
    if-eqz v5, :cond_1

    #@62
    .line 1015
    new-instance v5, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v6, "Could not close reader for /data/misc/wifi/wpa_supplicant.conf, "

    #@6a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@79
    goto :goto_1

    #@7a
    .line 1004
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    #@7b
    .line 1005
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@7d
    if-eqz v5, :cond_3

    #@7f
    new-instance v5, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v6, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@96
    .line 1010
    :cond_3
    if-eqz v2, :cond_1

    #@98
    .line 1011
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@9b
    goto :goto_1

    #@9c
    .line 1013
    :catch_4
    move-exception v1

    #@9d
    .line 1014
    .restart local v1    # "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@9f
    if-eqz v5, :cond_1

    #@a1
    .line 1015
    new-instance v5, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v6, "Could not close reader for /data/misc/wifi/wpa_supplicant.conf, "

    #@a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v5

    #@b1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v5

    #@b5
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@b8
    goto/16 :goto_1

    #@ba
    .line 1008
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@bb
    .line 1010
    :goto_4
    if-eqz v2, :cond_4

    #@bd
    .line 1011
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@c0
    .line 1008
    :cond_4
    :goto_5
    throw v5

    #@c1
    .line 1013
    :catch_5
    move-exception v1

    #@c2
    .line 1014
    .restart local v1    # "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@c4
    if-eqz v6, :cond_4

    #@c6
    .line 1015
    new-instance v6, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v7, "Could not close reader for /data/misc/wifi/wpa_supplicant.conf, "

    #@ce
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v6

    #@d2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v6

    #@d6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v6

    #@da
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@dd
    goto :goto_5

    #@de
    .line 1008
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    #@df
    move-object v2, v3

    #@e0
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    #@e1
    .line 1004
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    #@e2
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    #@e3
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    #@e4
    .line 1006
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    #@e5
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@e6
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public removeNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 838
    if-nez p1, :cond_0

    #@3
    .line 839
    return v2

    #@4
    .line 841
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "removeNetwork: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@21
    .line 842
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@23
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@25
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_2

    #@2b
    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v1, "Remove network in wpa_supplicant failed on "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@44
    .line 844
    return v2

    #@45
    .line 847
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@47
    if-eqz v0, :cond_3

    #@49
    .line 848
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@4b
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    #@4e
    .line 851
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    #@50
    invoke-virtual {v0}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    #@53
    .line 852
    const/4 v0, 0x1

    #@54
    return v0
.end method

.method public resetSimNetworks(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1108
    .local p1, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiConfiguration;>;"
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "resetSimNetworks"

    #@7
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@a
    .line 1109
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1a
    .line 1110
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 1112
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@22
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@24
    const-string/jumbo v4, "identity"

    #@27
    const-string/jumbo v5, "NULL"

    #@2a
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@2d
    .line 1113
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2f
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@31
    const-string/jumbo v4, "anonymous_identity"

    #@34
    const-string/jumbo v5, "NULL"

    #@37
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 1107
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-void
.end method

.method public saveConfig()Z
    .locals 1

    #@0
    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public saveNetworkMetadata(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 587
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 588
    .local v0, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 589
    const-string/jumbo v1, "fqdn"

    #@e
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 591
    :cond_0
    const-string/jumbo v1, "configKey"

    #@16
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 592
    const-string/jumbo v1, "creatorUid"

    #@20
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 593
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2b
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@2d
    const-string/jumbo v3, "id_str"

    #@30
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wifi/WifiNative;->setNetworkExtra(ILjava/lang/String;Ljava/util/Map;)Z

    #@33
    move-result v1

    #@34
    if-nez v1, :cond_1

    #@36
    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "failed to set id_str: "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@51
    .line 595
    const/4 v1, 0x0

    #@52
    return v1

    #@53
    .line 597
    :cond_1
    const/4 v1, 0x1

    #@54
    return v1
.end method

.method public selectNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/util/Collection;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v2, 0x0

    #@1
    .line 862
    if-nez p1, :cond_0

    #@3
    .line 863
    return v2

    #@4
    .line 865
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "selectNetwork: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@21
    .line 866
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@23
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@25
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->selectNetwork(I)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_2

    #@2b
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v1, "Select network in wpa_supplicant failed on "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@44
    .line 868
    return v2

    #@45
    .line 870
    :cond_2
    const/4 v0, 0x2

    #@46
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    #@48
    .line 871
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@4a
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(ILjava/util/Collection;)V

    #@4d
    .line 872
    const/4 v0, 0x1

    #@4e
    return v0
.end method

.method public setNetworkBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 943
    if-eqz p1, :cond_0

    #@3
    .line 944
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5
    const/4 v1, -0x1

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 945
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 946
    :cond_0
    return v3

    #@d
    .line 948
    :cond_1
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@f
    if-eqz v0, :cond_2

    #@11
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v1, "setNetworkBSSID: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@2a
    .line 949
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@2c
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@2e
    const-string/jumbo v2, "bssid"

    #@31
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@34
    move-result v0

    #@35
    if-nez v0, :cond_3

    #@37
    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v1, "Set BSSID of network in wpa_supplicant failed on "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@50
    .line 952
    return v3

    #@51
    .line 954
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    #@58
    .line 955
    const/4 v0, 0x1

    #@59
    return v0
.end method

.method public setNetworkPriority(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "priority"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 901
    if-nez p1, :cond_0

    #@3
    .line 902
    return v4

    #@4
    .line 904
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "setNetworkPriority: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@21
    .line 905
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@23
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@25
    .line 906
    const-string/jumbo v2, "priority"

    #@28
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 905
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@2f
    move-result v0

    #@30
    if-nez v0, :cond_2

    #@32
    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v1, "Set priority of network in wpa_supplicant failed on "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@4b
    .line 908
    return v4

    #@4c
    .line 910
    :cond_2
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@4e
    .line 911
    const/4 v0, 0x1

    #@4f
    return v0
.end method

.method public setNetworkSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 921
    if-nez p1, :cond_0

    #@3
    .line 922
    return v4

    #@4
    .line 924
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "setNetworkSSID: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    #@21
    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@23
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@25
    const-string/jumbo v2, "ssid"

    #@28
    .line 926
    invoke-static {p2}, Lcom/android/server/wifi/WifiConfigStore;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 925
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    #@2f
    move-result v0

    #@30
    if-nez v0, :cond_2

    #@32
    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v1, "Set SSID of network in wpa_supplicant failed on "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@4b
    .line 928
    return v4

    #@4c
    .line 930
    :cond_2
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@4e
    .line 931
    const/4 v0, 0x1

    #@4f
    return v0
.end method

.method public startWpsPbc(Landroid/net/wifi/WpsInfo;Ljava/util/Collection;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WpsInfo;",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Landroid/net/wifi/WpsResult;"
        }
    .end annotation

    #@0
    .prologue
    .line 1221
    .local p2, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v0, Landroid/net/wifi/WpsResult;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    #@5
    .line 1222
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7
    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1224
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled(Ljava/util/Collection;)V

    #@12
    .line 1225
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    #@14
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@16
    .line 1230
    :goto_0
    return-object v0

    #@17
    .line 1227
    :cond_0
    const-string/jumbo v1, "Failed to start WPS push button configuration"

    #@1a
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@1d
    .line 1228
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@1f
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@21
    goto :goto_0
.end method

.method public startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;Ljava/util/Collection;)Landroid/net/wifi/WpsResult;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WpsInfo;",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Landroid/net/wifi/WpsResult;"
        }
    .end annotation

    #@0
    .prologue
    .line 1180
    .local p2, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v0, Landroid/net/wifi/WpsResult;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    #@5
    .line 1181
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7
    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    #@9
    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1183
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled(Ljava/util/Collection;)V

    #@14
    .line 1184
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    #@16
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@18
    .line 1189
    :goto_0
    return-object v0

    #@19
    .line 1186
    :cond_0
    const-string/jumbo v1, "Failed to start WPS pin method configuration"

    #@1c
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@1f
    .line 1187
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@21
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@23
    goto :goto_0
.end method

.method public startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;Ljava/util/Collection;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WpsInfo;",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Landroid/net/wifi/WpsResult;"
        }
    .end annotation

    #@0
    .prologue
    .line 1200
    .local p2, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v0, Landroid/net/wifi/WpsResult;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    #@5
    .line 1201
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    #@7
    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@f
    .line 1203
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 1204
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled(Ljava/util/Collection;)V

    #@1a
    .line 1205
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    #@1c
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@1e
    .line 1210
    :goto_0
    return-object v0

    #@1f
    .line 1207
    :cond_0
    const-string/jumbo v1, "Failed to start WPS pin method configuration"

    #@22
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    #@25
    .line 1208
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@27
    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@29
    goto :goto_0
.end method
