.class public abstract Ljava/security/Provider;
.super Ljava/util/Properties;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Provider$Service;,
        Ljava/security/Provider$ServiceKey;,
        Ljava/security/Provider$EngineDescription;,
        Ljava/security/Provider$UString;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALIAS_LENGTH:I

.field private static final greylist-max-o ALIAS_PREFIX:Ljava/lang/String; = "Alg.Alias."

.field private static final greylist-max-o ALIAS_PREFIX_LOWER:Ljava/lang/String; = "alg.alias."

.field private static final blacklist EMPTY:[Ljava/lang/Object;

.field private static final greylist-max-o debug:Lsun/security/util/Debug;

.field private static final greylist-max-o knownEngines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$EngineDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o previousKey:Ljava/security/Provider$ServiceKey; = null

.field static final whitelist serialVersionUID:J = -0x3ba590b26fa1505bL


# instance fields
.field private transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o entrySetCallCount:I

.field private greylist-max-o info:Ljava/lang/String;

.field private transient greylist-max-o initialized:Z

.field private transient greylist-max-o legacyChanged:Z

.field private transient greylist-max-o legacyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o legacyStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o name:Ljava/lang/String;

.field private volatile greylist-max-o registered:Z

.field private transient greylist-max-o serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o serviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o servicesChanged:Z

.field private greylist-max-o version:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY()[Ljava/lang/Object;
    .registers 1

    sget-object v0, Ljava/security/Provider;->EMPTY:[Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetknownEngines()Ljava/util/Map;
    .registers 1

    sget-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetEngineName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 104
    nop

    .line 106
    const-string v0, "provider"

    const-string v1, "Provider"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    .line 135
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Ljava/security/Provider;->EMPTY:[Ljava/lang/Object;

    .line 979
    const-string v1, "Alg.Alias."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Ljava/security/Provider;->ALIAS_LENGTH:I

    .line 1092
    new-instance v1, Ljava/security/Provider$ServiceKey;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, v2, v2, v0, v3}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider-IA;)V

    sput-object v1, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 1346
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    .line 1348
    const-string v1, "AlgorithmParameterGenerator"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1349
    const-string v1, "AlgorithmParameters"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1350
    const-string v1, "KeyFactory"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1351
    const-string v1, "KeyPairGenerator"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1352
    const-string v1, "KeyStore"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1353
    const-string v1, "MessageDigest"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1354
    const-string v1, "SecureRandom"

    const-string v2, "java.security.SecureRandomParameters"

    invoke-static {v1, v0, v2}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1356
    const-string v1, "Signature"

    const/4 v2, 0x1

    invoke-static {v1, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1357
    const-string v1, "CertificateFactory"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1358
    const-string v1, "CertPathBuilder"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1359
    const-string v1, "CertPathValidator"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1360
    const-string v1, "CertStore"

    const-string v4, "java.security.cert.CertStoreParameters"

    invoke-static {v1, v0, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1363
    const-string v1, "Cipher"

    invoke-static {v1, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1364
    const-string v1, "ExemptionMechanism"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1365
    const-string v1, "Mac"

    invoke-static {v1, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1366
    const-string v1, "KeyAgreement"

    invoke-static {v1, v2, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1367
    const-string v1, "KeyGenerator"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1368
    const-string v1, "SecretKeyFactory"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1370
    const-string v1, "KeyManagerFactory"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1371
    const-string v1, "SSLContext"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1372
    const-string v1, "TrustManagerFactory"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1374
    const-string v1, "GssApiMechanism"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1376
    const-string v1, "SaslClientFactory"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1377
    const-string v1, "SaslServerFactory"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1379
    const-string v1, "Policy"

    const-string v2, "java.security.Policy$Parameters"

    invoke-static {v1, v0, v2}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1382
    const-string v1, "Configuration"

    const-string v2, "javax.security.auth.login.Configuration$Parameters"

    invoke-static {v1, v0, v2}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1385
    const-string v1, "XMLSignatureFactory"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1386
    const-string v1, "KeyInfoFactory"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1387
    const-string v1, "TransformService"

    invoke-static {v1, v0, v3}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1389
    const-string v1, "TerminalFactory"

    const-string v2, "java.lang.Object"

    invoke-static {v1, v0, v2}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1391
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;DLjava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # D
    .param p4, "info"    # Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    .line 131
    iput v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    .line 148
    iput-object p1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    .line 149
    iput-wide p2, p0, Ljava/security/Provider;->version:D

    .line 150
    iput-object p4, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    .line 153
    return-void
.end method

.method private static greylist-max-o addEngine(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sp"    # Z
    .param p2, "paramName"    # Ljava/lang/String;

    .line 1339
    new-instance v0, Ljava/security/Provider$EngineDescription;

    invoke-direct {v0, p0, p1, p2}, Ljava/security/Provider$EngineDescription;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1341
    .local v0, "ed":Ljava/security/Provider$EngineDescription;
    sget-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    sget-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    return-void
.end method

.method private greylist-max-o check(Ljava/lang/String;)V
    .registers 3
    .param p1, "directive"    # Ljava/lang/String;

    .line 668
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 669
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 670
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 671
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 673
    :cond_c
    return-void
.end method

.method private greylist-max-o checkInitialized()V
    .registers 2

    .line 662
    iget-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    if-eqz v0, :cond_5

    .line 665
    return-void

    .line 663
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private greylist-max-o checkLegacy(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 723
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    if-eqz v0, :cond_7

    .line 724
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 726
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 727
    .local v0, "keyString":Ljava/lang/String;
    const-string v1, "Provider."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 728
    const/4 v1, 0x0

    return v1

    .line 731
    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 732
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v2, :cond_22

    .line 733
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    .line 735
    :cond_22
    return v1
.end method

.method private greylist-max-o ensureLegacyParsed()V
    .registers 5

    .line 933
    iget-boolean v0, p0, Ljava/security/Provider;->legacyChanged:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v0, :cond_9

    goto :goto_4c

    .line 936
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 937
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-nez v0, :cond_18

    .line 938
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    goto :goto_1d

    .line 940
    :cond_18
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 942
    :goto_1d
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 943
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_27

    .line 945
    :cond_43
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Ljava/security/Provider;->removeInvalidServices(Ljava/util/Map;)V

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 947
    return-void

    .line 934
    :cond_4c
    :goto_4c
    return-void
.end method

.method private static greylist-max-o getEngineName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1397
    sget-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$EngineDescription;

    .line 1398
    .local v0, "e":Ljava/security/Provider$EngineDescription;
    if-nez v0, :cond_19

    .line 1399
    sget-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/security/Provider$EngineDescription;

    .line 1401
    :cond_19
    if-nez v0, :cond_1d

    move-object v1, p0

    goto :goto_1f

    :cond_1d
    iget-object v1, v0, Ljava/security/Provider$EngineDescription;->name:Ljava/lang/String;

    :goto_1f
    return-object v1
.end method

.method private greylist-max-o getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .line 964
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 965
    .local v0, "i":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_33

    .line 966
    sget-object v1, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_31

    .line 967
    sget-object v1, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring invalid entry in provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 970
    :cond_31
    const/4 v1, 0x0

    return-object v1

    .line 972
    :cond_33
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 973
    .local v3, "type":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 974
    .local v4, "alg":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    return-object v5
.end method

.method private greylist-max-o implClear()V
    .registers 2

    .line 878
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 879
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 881
    :cond_9
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v0, :cond_12

    .line 882
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 884
    :cond_12
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v0, :cond_1b

    .line 885
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 887
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 888
    iput-boolean v0, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 890
    invoke-super {p0}, Ljava/util/Properties;->clear()V

    .line 891
    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    .line 893
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    if-eqz v0, :cond_30

    .line 894
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 896
    :cond_30
    return-void
.end method

.method private greylist-max-o implCompute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 818
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 819
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 820
    const/4 v0, 0x0

    return-object v0

    .line 827
    :cond_c
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 832
    :cond_14
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implComputeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 836
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 837
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 838
    const/4 v0, 0x0

    return-object v0

    .line 840
    :cond_c
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 843
    :cond_14
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implComputeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 847
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 848
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 849
    const/4 v0, 0x0

    return-object v0

    .line 851
    :cond_c
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 854
    :cond_14
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implMerge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 807
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 808
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 809
    const/4 v0, 0x0

    return-object v0

    .line 811
    :cond_10
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 814
    :cond_1b
    invoke-super {p0, p1, p2, p3}, Ljava/util/Properties;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 858
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 859
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 860
    const/4 v0, 0x0

    return-object v0

    .line 862
    :cond_10
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_1b
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implPutAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 744
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 745
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_8

    .line 748
    :cond_20
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    if-eqz v0, :cond_27

    .line 749
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 751
    :cond_27
    return-void
.end method

.method private greylist-max-o implPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 868
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 869
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 870
    const/4 v0, 0x0

    return-object v0

    .line 872
    :cond_10
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :cond_1b
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 754
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 755
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 756
    const/4 v0, 0x0

    return-object v0

    .line 758
    :cond_c
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :cond_14
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implRemove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 764
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_18

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 765
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 766
    const/4 v0, 0x0

    return v0

    .line 768
    :cond_10
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 770
    :cond_18
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o implRemoveService(Ljava/security/Provider$Service;)V
    .registers 12
    .param p1, "s"    # Ljava/security/Provider$Service;

    .line 1265
    if-eqz p1, :cond_4c

    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-nez v0, :cond_7

    goto :goto_4c

    .line 1268
    :cond_7
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1269
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 1270
    .local v1, "algorithm":Ljava/lang/String;
    new-instance v2, Ljava/security/Provider$ServiceKey;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider-IA;)V

    .line 1271
    .local v2, "key":Ljava/security/Provider$ServiceKey;
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    .line 1272
    .local v5, "oldService":Ljava/security/Provider$Service;
    if-eq p1, v5, :cond_21

    .line 1273
    return-void

    .line 1275
    :cond_21
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 1276
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    invoke-static {p1}, Ljava/security/Provider$Service;->-$$Nest$mgetAliases(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1278
    .local v7, "alias":Ljava/lang/String;
    iget-object v8, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    new-instance v9, Ljava/security/Provider$ServiceKey;

    invoke-direct {v9, v0, v7, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider-IA;)V

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    .end local v7    # "alias":Ljava/lang/String;
    goto :goto_31

    .line 1280
    :cond_48
    invoke-direct {p0, p1}, Ljava/security/Provider;->removePropertyStrings(Ljava/security/Provider$Service;)V

    .line 1281
    return-void

    .line 1266
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v2    # "key":Ljava/security/Provider$ServiceKey;
    .end local v5    # "oldService":Ljava/security/Provider$Service;
    :cond_4c
    :goto_4c
    return-void
.end method

.method private greylist-max-o implReplace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 786
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 787
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 788
    const/4 v0, 0x0

    return-object v0

    .line 790
    :cond_10
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :cond_1b
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o implReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 774
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_22

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_22

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 776
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 777
    const/4 v0, 0x0

    return v0

    .line 779
    :cond_14
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 782
    :cond_22
    invoke-super {p0, p1, p2, p3}, Ljava/util/Properties;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o implReplaceAll(Ljava/util/function/BiFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 796
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 797
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v0, :cond_f

    .line 798
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    goto :goto_14

    .line 800
    :cond_f
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 802
    :goto_14
    invoke-super {p0, p1}, Ljava/util/Properties;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 803
    return-void
.end method

.method private greylist-max-o parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 982
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alg.alias."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5a

    .line 985
    move-object v0, p2

    .line 986
    .local v0, "stdAlg":Ljava/lang/String;
    sget v4, Ljava/security/Provider;->ALIAS_LENGTH:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 987
    .local v4, "aliasKey":Ljava/lang/String;
    invoke-direct {p0, v4}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 988
    .local v5, "typeAndAlg":[Ljava/lang/String;
    if-nez v5, :cond_1f

    .line 989
    return-void

    .line 991
    :cond_1f
    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, "type":Ljava/lang/String;
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 993
    .local v6, "aliasAlg":Ljava/lang/String;
    new-instance v7, Ljava/security/Provider$ServiceKey;

    invoke-direct {v7, v1, v0, v3, v2}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider-IA;)V

    .line 994
    .local v7, "key":Ljava/security/Provider$ServiceKey;
    iget-object v8, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Provider$Service;

    .line 995
    .local v8, "s":Ljava/security/Provider$Service;
    if-nez v8, :cond_4b

    .line 996
    new-instance v9, Ljava/security/Provider$Service;

    invoke-direct {v9, p0, v2}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider-IA;)V

    move-object v8, v9

    .line 997
    invoke-static {v8, v1}, Ljava/security/Provider$Service;->-$$Nest$fputtype(Ljava/security/Provider$Service;Ljava/lang/String;)V

    .line 998
    invoke-static {v8, v0}, Ljava/security/Provider$Service;->-$$Nest$fputalgorithm(Ljava/security/Provider$Service;Ljava/lang/String;)V

    .line 999
    iget-object v9, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    :cond_4b
    iget-object v9, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    new-instance v10, Ljava/security/Provider$ServiceKey;

    invoke-direct {v10, v1, v6, v3, v2}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider-IA;)V

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    invoke-static {v8, v6}, Ljava/security/Provider$Service;->-$$Nest$maddAlias(Ljava/security/Provider$Service;Ljava/lang/String;)V

    .line 1003
    .end local v0    # "stdAlg":Ljava/lang/String;
    .end local v1    # "type":Ljava/lang/String;
    .end local v4    # "aliasKey":Ljava/lang/String;
    .end local v5    # "typeAndAlg":[Ljava/lang/String;
    .end local v6    # "aliasAlg":Ljava/lang/String;
    .end local v7    # "key":Ljava/security/Provider$ServiceKey;
    .end local v8    # "s":Ljava/security/Provider$Service;
    goto/16 :goto_e8

    .line 1004
    :cond_5a
    invoke-direct {p0, p1}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, "typeAndAlg":[Ljava/lang/String;
    if-nez v0, :cond_61

    .line 1006
    return-void

    .line 1008
    :cond_61
    aget-object v4, v0, v3

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1009
    .local v4, "i":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_9d

    .line 1011
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    .restart local v1    # "type":Ljava/lang/String;
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 1013
    .local v5, "stdAlg":Ljava/lang/String;
    move-object v6, p2

    .line 1014
    .local v6, "className":Ljava/lang/String;
    new-instance v7, Ljava/security/Provider$ServiceKey;

    invoke-direct {v7, v1, v5, v3, v2}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider-IA;)V

    .line 1015
    .restart local v7    # "key":Ljava/security/Provider$ServiceKey;
    iget-object v3, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 1016
    .local v3, "s":Ljava/security/Provider$Service;
    if-nez v3, :cond_99

    .line 1017
    new-instance v8, Ljava/security/Provider$Service;

    invoke-direct {v8, p0, v2}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider-IA;)V

    move-object v3, v8

    .line 1018
    invoke-static {v3, v1}, Ljava/security/Provider$Service;->-$$Nest$fputtype(Ljava/security/Provider$Service;Ljava/lang/String;)V

    .line 1019
    invoke-static {v3, v5}, Ljava/security/Provider$Service;->-$$Nest$fputalgorithm(Ljava/security/Provider$Service;Ljava/lang/String;)V

    .line 1020
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    :cond_99
    invoke-static {v3, v6}, Ljava/security/Provider$Service;->-$$Nest$fputclassName(Ljava/security/Provider$Service;Ljava/lang/String;)V

    .line 1023
    .end local v1    # "type":Ljava/lang/String;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v5    # "stdAlg":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "key":Ljava/security/Provider$ServiceKey;
    goto :goto_e8

    .line 1025
    :cond_9d
    move-object v5, p2

    .line 1026
    .local v5, "attributeValue":Ljava/lang/String;
    aget-object v6, v0, v1

    invoke-static {v6}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1027
    .local v6, "type":Ljava/lang/String;
    aget-object v7, v0, v3

    .line 1028
    .local v7, "attributeString":Ljava/lang/String;
    invoke-virtual {v7, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 1029
    .local v1, "stdAlg":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1031
    .local v8, "attributeName":Ljava/lang/String;
    :goto_b4
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c1

    .line 1032
    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_b4

    .line 1034
    :cond_c1
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 1035
    new-instance v9, Ljava/security/Provider$ServiceKey;

    invoke-direct {v9, v6, v1, v3, v2}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider-IA;)V

    .line 1036
    .local v9, "key":Ljava/security/Provider$ServiceKey;
    iget-object v3, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 1037
    .restart local v3    # "s":Ljava/security/Provider$Service;
    if-nez v3, :cond_e5

    .line 1038
    new-instance v10, Ljava/security/Provider$Service;

    invoke-direct {v10, p0, v2}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider-IA;)V

    move-object v3, v10

    .line 1039
    invoke-static {v3, v6}, Ljava/security/Provider$Service;->-$$Nest$fputtype(Ljava/security/Provider$Service;Ljava/lang/String;)V

    .line 1040
    invoke-static {v3, v1}, Ljava/security/Provider$Service;->-$$Nest$fputalgorithm(Ljava/security/Provider$Service;Ljava/lang/String;)V

    .line 1041
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    :cond_e5
    invoke-virtual {v3, v8, v5}, Ljava/security/Provider$Service;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    .end local v0    # "typeAndAlg":[Ljava/lang/String;
    .end local v1    # "stdAlg":Ljava/lang/String;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "i":I
    .end local v5    # "attributeValue":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "attributeString":Ljava/lang/String;
    .end local v8    # "attributeName":Ljava/lang/String;
    .end local v9    # "key":Ljava/security/Provider$ServiceKey;
    :goto_e8
    return-void
.end method

.method private greylist-max-o putId()V
    .registers 3

    .line 700
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provider.id name"

    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provider.id version"

    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provider.id info"

    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provider.id className"

    invoke-super {p0, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    return-void
.end method

.method private greylist-max-o putPropertyStrings(Ljava/security/Provider$Service;)V
    .registers 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    .line 1186
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 1189
    .local v1, "algorithm":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v2, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    invoke-static {p1}, Ljava/security/Provider$Service;->-$$Nest$mgetAliases(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1191
    .local v4, "alias":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    .end local v4    # "alias":Ljava/lang/String;
    goto :goto_2e

    .line 1193
    :cond_59
    invoke-static {p1}, Ljava/security/Provider$Service;->-$$Nest$fgetattributes(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1194
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1195
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-super {p0, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_65

    .line 1198
    :cond_9c
    iget-boolean v2, p0, Ljava/security/Provider;->registered:Z

    if-eqz v2, :cond_a3

    .line 1199
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 1201
    :cond_a3
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 710
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 711
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 712
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_10

    .line 714
    :cond_28
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Provider;->defaults:Ljava/util/Properties;

    .line 715
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 716
    invoke-direct {p0}, Ljava/security/Provider;->implClear()V

    .line 717
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/Provider;->initialized:Z

    .line 718
    invoke-virtual {p0, v0}, Ljava/security/Provider;->putAll(Ljava/util/Map;)V

    .line 719
    return-void
.end method

.method private greylist-max-o removeInvalidServices(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;)V"
        }
    .end annotation

    .line 954
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/Provider$ServiceKey;Ljava/security/Provider$Service;>;"
    nop

    .line 955
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/security/Provider$ServiceKey;Ljava/security/Provider$Service;>;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 956
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    .line 957
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-static {v1}, Ljava/security/Provider$Service;->-$$Nest$misValid(Ljava/security/Provider$Service;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 958
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 960
    .end local v1    # "s":Ljava/security/Provider$Service;
    :cond_24
    goto :goto_9

    .line 961
    .end local v0    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/security/Provider$ServiceKey;Ljava/security/Provider$Service;>;>;"
    :cond_25
    return-void
.end method

.method private greylist-max-o removePropertyStrings(Ljava/security/Provider$Service;)V
    .registers 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    .line 1208
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1209
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 1211
    .local v1, "algorithm":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    invoke-static {p1}, Ljava/security/Provider$Service;->-$$Nest$mgetAliases(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1213
    .local v4, "alias":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    .end local v4    # "alias":Ljava/lang/String;
    goto :goto_2a

    .line 1215
    :cond_55
    invoke-static {p1}, Ljava/security/Provider$Service;->-$$Nest$fgetattributes(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1216
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1217
    .local v5, "key":Ljava/lang/String;
    invoke-super {p0, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_61

    .line 1220
    :cond_94
    iget-boolean v2, p0, Ljava/security/Provider;->registered:Z

    if-eqz v2, :cond_9b

    .line 1221
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 1223
    :cond_9b
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api clear()V
    .registers 4

    monitor-enter p0

    .line 218
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearProviderProperties."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 219
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3d

    .line 220
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 222
    .end local p0    # "this":Ljava/security/Provider;
    :cond_3d
    invoke-direct {p0}, Ljava/security/Provider;->implClear()V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 223
    monitor-exit p0

    return-void

    .line 217
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public declared-synchronized whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 517
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 520
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_59

    .line 521
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 523
    .end local p0    # "this":Ljava/security/Provider;
    :cond_59
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implCompute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_5f

    monitor-exit p0

    return-object v0

    .line 516
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public declared-synchronized whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 547
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 550
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_59

    .line 551
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComputeIfAbsent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 554
    .end local p0    # "this":Ljava/security/Provider;
    :cond_59
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implComputeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_5f

    monitor-exit p0

    return-object v0

    .line 546
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;+Ljava/lang/Object;>;"
    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public declared-synchronized whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 576
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 579
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_59

    .line 580
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComputeIfPresent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 583
    .end local p0    # "this":Ljava/security/Provider;
    :cond_59
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implComputeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_5f

    monitor-exit p0

    return-object v0

    .line 575
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public whitelist test-api elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 651
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 652
    invoke-super {p0}, Ljava/util/Properties;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 270
    iget-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_21

    .line 271
    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/security/Provider;->entrySetCallCount:I

    if-nez v0, :cond_1b

    .line 272
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    goto :goto_21

    .line 274
    .end local p0    # "this":Ljava/security/Provider;
    :cond_1b
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_32

    monitor-exit p0

    return-object v0

    .line 282
    :cond_21
    :goto_21
    :try_start_21
    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 285
    iget-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_32

    monitor-exit p0

    return-object v0

    .line 283
    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v0
.end method

.method public declared-synchronized whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/lang/Object;-Ljava/lang/Object;>;"
    monitor-enter p0

    .line 637
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 638
    invoke-super {p0, p1}, Ljava/util/Properties;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 639
    monitor-exit p0

    return-void

    .line 636
    .end local p0    # "this":Ljava/security/Provider;
    .end local p1    # "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/lang/Object;-Ljava/lang/Object;>;"
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 620
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 621
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getInfo()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    monitor-enter p0

    .line 628
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 629
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 627
    .end local p0    # "this":Ljava/security/Provider;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 657
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 658
    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    monitor-enter p0

    .line 1069
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 1071
    sget-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 1072
    .local v0, "key":Ljava/security/Provider$ServiceKey;
    invoke-virtual {v0, p1, p2}, Ljava/security/Provider$ServiceKey;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 1073
    new-instance v1, Ljava/security/Provider$ServiceKey;

    const/4 v3, 0x0

    invoke-direct {v1, p1, p2, v3, v2}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider-IA;)V

    move-object v0, v1

    .line 1074
    sput-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 1076
    .end local p0    # "this":Ljava/security/Provider;
    :cond_16
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v1, :cond_26

    .line 1077
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_38

    .line 1078
    .local v1, "service":Ljava/security/Provider$Service;
    if-eqz v1, :cond_26

    .line 1079
    monitor-exit p0

    return-object v1

    .line 1082
    .end local v1    # "service":Ljava/security/Provider$Service;
    :cond_26
    :try_start_26
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 1083
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v1, :cond_36

    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/security/Provider$Service;
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit p0

    return-object v2

    .line 1068
    .end local v0    # "key":Ljava/security/Provider$ServiceKey;
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public declared-synchronized whitelist test-api getServices()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1105
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 1106
    iget-boolean v0, p0, Ljava/security/Provider;->legacyChanged:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Ljava/security/Provider;->servicesChanged:Z

    if-eqz v0, :cond_f

    .line 1107
    .end local p0    # "this":Ljava/security/Provider;
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 1109
    :cond_f
    iget-object v0, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    if-nez v0, :cond_3e

    .line 1110
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 1111
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1112
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v1, :cond_28

    .line 1113
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1115
    :cond_28
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v1, :cond_35

    .line 1116
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1118
    :cond_35
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 1119
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 1121
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    :cond_3e
    iget-object v0, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 1104
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public whitelist test-api getVersion()D
    .registers 3

    .line 170
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    return-wide v0
.end method

.method public greylist-max-o isRegistered()Z
    .registers 2

    .line 1944
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 297
    invoke-super {p0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 644
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 645
    invoke-super {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api load(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 235
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 236
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3d

    .line 237
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 239
    .end local p0    # "this":Ljava/security/Provider;
    :cond_3d
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 240
    .local v0, "tempProperties":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 241
    invoke-direct {p0, v0}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    .line 242
    monitor-exit p0

    return-void

    .line 234
    .end local v0    # "tempProperties":Ljava/util/Properties;
    .end local p1    # "inStream":Ljava/io/InputStream;
    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public declared-synchronized whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 608
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 611
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_59

    .line 612
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Merge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 614
    .end local p0    # "this":Ljava/security/Provider;
    :cond_59
    invoke-direct {p0, p1, p2, p3}, Ljava/security/Provider;->implMerge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_5f

    monitor-exit p0

    return-object v0

    .line 607
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public declared-synchronized whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 330
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 331
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_51

    .line 332
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 335
    .end local p0    # "this":Ljava/security/Provider;
    :cond_51
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_57

    monitor-exit p0

    return-object v0

    .line 329
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public declared-synchronized whitelist test-api putAll(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    monitor-enter p0

    .line 253
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 254
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3d

    .line 255
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 257
    .end local p0    # "this":Ljava/security/Provider;
    :cond_3d
    invoke-direct {p0, p1}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 258
    monitor-exit p0

    return-void

    .line 252
    .end local p1    # "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public declared-synchronized whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 357
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 358
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_51

    .line 359
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 362
    .end local p0    # "this":Ljava/security/Provider;
    :cond_51
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_57

    monitor-exit p0

    return-object v0

    .line 356
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p1
.end method

.method protected declared-synchronized whitelist test-api putService(Ljava/security/Provider$Service;)V
    .registers 11
    .param p1, "s"    # Ljava/security/Provider$Service;

    monitor-enter p0

    .line 1154
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 1155
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3b

    .line 1156
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".putService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1158
    .end local p0    # "this":Ljava/security/Provider;
    :cond_3b
    if-eqz p1, :cond_9c

    .line 1161
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    if-ne v0, p0, :cond_94

    .line 1165
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-nez v0, :cond_4e

    .line 1166
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    .line 1168
    :cond_4e
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 1169
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1170
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "algorithm":Ljava/lang/String;
    new-instance v3, Ljava/security/Provider$ServiceKey;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v0, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider-IA;)V

    .line 1173
    .local v3, "key":Ljava/security/Provider$ServiceKey;
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    invoke-direct {p0, v5}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V

    .line 1174
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    invoke-static {p1}, Ljava/security/Provider$Service;->-$$Nest$mgetAliases(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_77
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1176
    .local v6, "alias":Ljava/lang/String;
    iget-object v7, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    new-instance v8, Ljava/security/Provider$ServiceKey;

    invoke-direct {v8, v1, v6, v0, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider-IA;)V

    invoke-interface {v7, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    nop

    .end local v6    # "alias":Ljava/lang/String;
    goto :goto_77

    .line 1178
    :cond_8f
    invoke-direct {p0, p1}, Ljava/security/Provider;->putPropertyStrings(Ljava/security/Provider$Service;)V
    :try_end_92
    .catchall {:try_start_1 .. :try_end_92} :catchall_a2

    .line 1179
    monitor-exit p0

    return-void

    .line 1162
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "algorithm":Ljava/lang/String;
    .end local v3    # "key":Ljava/security/Provider$ServiceKey;
    :cond_94
    :try_start_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service.getProvider() must match this Provider object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_9c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1153
    .end local p1    # "s":Ljava/security/Provider$Service;
    :catchall_a2
    move-exception p1

    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_94 .. :try_end_a4} :catchall_a2

    throw p1
.end method

.method public declared-synchronized whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 383
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 384
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_41

    .line 385
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 387
    .end local p0    # "this":Ljava/security/Provider;
    :cond_41
    invoke-direct {p0, p1}, Ljava/security/Provider;->implRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    monitor-exit p0

    return-object v0

    .line 382
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public declared-synchronized whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 408
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 409
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_41

    .line 410
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 412
    .end local p0    # "this":Ljava/security/Provider;
    :cond_41
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implRemove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    monitor-exit p0

    return v0

    .line 407
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method protected declared-synchronized whitelist test-api removeService(Ljava/security/Provider$Service;)V
    .registers 5
    .param p1, "s"    # Ljava/security/Provider$Service;

    monitor-enter p0

    .line 1254
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 1255
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3b

    .line 1256
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".removeService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1258
    .end local p0    # "this":Ljava/security/Provider;
    :cond_3b
    if-eqz p1, :cond_42

    .line 1261
    invoke-direct {p0, p1}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_48

    .line 1262
    monitor-exit p0

    return-void

    .line 1259
    :cond_42
    :try_start_42
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1253
    .end local p1    # "s":Ljava/security/Provider$Service;
    :catchall_48
    move-exception p1

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public declared-synchronized whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 460
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 462
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_41

    .line 463
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 465
    .end local p0    # "this":Ljava/security/Provider;
    :cond_41
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implReplace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    monitor-exit p0

    return-object v0

    .line 459
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public declared-synchronized whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    monitor-enter p0

    .line 434
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 436
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_41

    .line 437
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 439
    .end local p0    # "this":Ljava/security/Provider;
    :cond_41
    invoke-direct {p0, p1, p2, p3}, Ljava/security/Provider;->implReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    monitor-exit p0

    return v0

    .line 433
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "oldValue":Ljava/lang/Object;
    .end local p3    # "newValue":Ljava/lang/Object;
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public declared-synchronized whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 488
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 490
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3d

    .line 491
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReplaceAll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 493
    .end local p0    # "this":Ljava/security/Provider;
    :cond_3d
    invoke-direct {p0, p1}, Ljava/security/Provider;->implReplaceAll(Ljava/util/function/BiFunction;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 494
    monitor-exit p0

    return-void

    .line 487
    .end local p1    # "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public greylist-max-o setRegistered()V
    .registers 2

    .line 1930
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 1931
    return-void
.end method

.method public greylist-max-o setUnregistered()V
    .registers 2

    .line 1937
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 1938
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/security/Provider;->version:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 309
    invoke-super {p0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized greylist-max-o test-api warmUpServiceProvision()V
    .registers 2

    monitor-enter p0

    .line 1956
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 1959
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 1962
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1963
    monitor-exit p0

    return-void

    .line 1955
    .end local p0    # "this":Ljava/security/Provider;
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method
