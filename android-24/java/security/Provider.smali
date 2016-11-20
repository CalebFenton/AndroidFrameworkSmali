.class public abstract Ljava/security/Provider;
.super Ljava/util/Properties;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Provider$EngineDescription;,
        Ljava/security/Provider$Service;,
        Ljava/security/Provider$ServiceKey;,
        Ljava/security/Provider$UString;
    }
.end annotation


# static fields
.field private static final ALIAS_LENGTH:I

.field private static final ALIAS_PREFIX:Ljava/lang/String; = "Alg.Alias."

.field private static final ALIAS_PREFIX_LOWER:Ljava/lang/String; = "alg.alias."

.field private static final debug:Lsun/security/util/Debug;

.field private static final knownEngines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$EngineDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile previousKey:Ljava/security/Provider$ServiceKey; = null

.field static final serialVersionUID:J = -0x3ba590b26fa1505bL


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient entrySetCallCount:I

.field private info:Ljava/lang/String;

.field private transient initialized:Z

.field private transient legacyChanged:Z

.field private transient legacyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient legacyStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private volatile registered:Z

.field private transient serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient serviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient servicesChanged:Z

.field private version:D


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    #@0
    sget-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 100
    const-string/jumbo v0, "provider"

    #@6
    const-string/jumbo v1, "Provider"

    #@9
    .line 99
    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    #@c
    move-result-object v0

    #@d
    .line 98
    sput-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@f
    .line 618
    const-string/jumbo v0, "Alg.Alias."

    #@12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@15
    move-result v0

    #@16
    sput v0, Ljava/security/Provider;->ALIAS_LENGTH:I

    #@18
    .line 732
    new-instance v0, Ljava/security/Provider$ServiceKey;

    #@1a
    const-string/jumbo v1, ""

    #@1d
    const-string/jumbo v2, ""

    #@20
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    #@23
    .line 731
    sput-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    #@25
    .line 985
    new-instance v0, Ljava/util/HashMap;

    #@27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2a
    sput-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    #@2c
    .line 987
    const-string/jumbo v0, "AlgorithmParameterGenerator"

    #@2f
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@32
    .line 988
    const-string/jumbo v0, "AlgorithmParameters"

    #@35
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@38
    .line 989
    const-string/jumbo v0, "KeyFactory"

    #@3b
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@3e
    .line 990
    const-string/jumbo v0, "KeyPairGenerator"

    #@41
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@44
    .line 991
    const-string/jumbo v0, "KeyStore"

    #@47
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@4a
    .line 992
    const-string/jumbo v0, "MessageDigest"

    #@4d
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@50
    .line 993
    const-string/jumbo v0, "SecureRandom"

    #@53
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@56
    .line 994
    const-string/jumbo v0, "Signature"

    #@59
    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@5c
    .line 995
    const-string/jumbo v0, "CertificateFactory"

    #@5f
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@62
    .line 996
    const-string/jumbo v0, "CertPathBuilder"

    #@65
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@68
    .line 997
    const-string/jumbo v0, "CertPathValidator"

    #@6b
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@6e
    .line 998
    const-string/jumbo v0, "CertStore"

    #@71
    .line 999
    const-string/jumbo v1, "java.security.cert.CertStoreParameters"

    #@74
    .line 998
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@77
    .line 1001
    const-string/jumbo v0, "Cipher"

    #@7a
    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@7d
    .line 1002
    const-string/jumbo v0, "ExemptionMechanism"

    #@80
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@83
    .line 1003
    const-string/jumbo v0, "Mac"

    #@86
    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@89
    .line 1004
    const-string/jumbo v0, "KeyAgreement"

    #@8c
    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@8f
    .line 1005
    const-string/jumbo v0, "KeyGenerator"

    #@92
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@95
    .line 1006
    const-string/jumbo v0, "SecretKeyFactory"

    #@98
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@9b
    .line 1008
    const-string/jumbo v0, "KeyManagerFactory"

    #@9e
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@a1
    .line 1009
    const-string/jumbo v0, "SSLContext"

    #@a4
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@a7
    .line 1010
    const-string/jumbo v0, "TrustManagerFactory"

    #@aa
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@ad
    .line 1012
    const-string/jumbo v0, "GssApiMechanism"

    #@b0
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@b3
    .line 1014
    const-string/jumbo v0, "SaslClientFactory"

    #@b6
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@b9
    .line 1015
    const-string/jumbo v0, "SaslServerFactory"

    #@bc
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@bf
    .line 1017
    const-string/jumbo v0, "Policy"

    #@c2
    .line 1018
    const-string/jumbo v1, "java.security.Policy$Parameters"

    #@c5
    .line 1017
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@c8
    .line 1020
    const-string/jumbo v0, "Configuration"

    #@cb
    .line 1021
    const-string/jumbo v1, "javax.security.auth.login.Configuration$Parameters"

    #@ce
    .line 1020
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@d1
    .line 1023
    const-string/jumbo v0, "XMLSignatureFactory"

    #@d4
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@d7
    .line 1024
    const-string/jumbo v0, "KeyInfoFactory"

    #@da
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@dd
    .line 1025
    const-string/jumbo v0, "TransformService"

    #@e0
    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@e3
    .line 1027
    const-string/jumbo v0, "TerminalFactory"

    #@e6
    .line 1028
    const-string/jumbo v1, "java.lang.Object"

    #@e9
    .line 1027
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    #@ec
    .line 91
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # D
    .param p4, "info"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 139
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    #@4
    .line 96
    iput-boolean v1, p0, Ljava/security/Provider;->registered:Z

    #@6
    .line 124
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    #@9
    .line 125
    iput v1, p0, Ljava/security/Provider;->entrySetCallCount:I

    #@b
    .line 140
    iput-object p1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@d
    .line 141
    iput-wide p2, p0, Ljava/security/Provider;->version:D

    #@f
    .line 142
    iput-object p4, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    #@11
    .line 143
    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    #@14
    .line 144
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    #@17
    .line 139
    return-void
.end method

.method private static addEngine(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sp"    # Z
    .param p2, "paramName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 976
    new-instance v0, Ljava/security/Provider$EngineDescription;

    #@2
    invoke-direct {v0, p0, p1, p2}, Ljava/security/Provider$EngineDescription;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    #@5
    .line 981
    .local v0, "ed":Ljava/security/Provider$EngineDescription;
    sget-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    #@7
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 975
    return-void
.end method

.method private check(Ljava/lang/String;)V
    .locals 1
    .param p1, "directive"    # Ljava/lang/String;

    #@0
    .prologue
    .line 415
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@3
    .line 416
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@6
    move-result-object v0

    #@7
    .line 417
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@9
    .line 418
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    #@c
    .line 414
    :cond_0
    return-void
.end method

.method private checkInitialized()V
    .locals 1

    #@0
    .prologue
    .line 409
    iget-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 408
    :cond_0
    return-void
.end method

.method private ensureLegacyParsed()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 572
    iget-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 573
    :cond_0
    return-void

    #@a
    .line 575
    :cond_1
    iput-object v3, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    #@c
    .line 576
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@e
    if-nez v2, :cond_2

    #@10
    .line 577
    new-instance v2, Ljava/util/LinkedHashMap;

    #@12
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    #@15
    iput-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@17
    .line 581
    :goto_0
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    #@19
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_3

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/util/Map$Entry;

    #@2d
    .line 582
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Ljava/lang/String;

    #@33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, Ljava/lang/String;

    #@39
    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    goto :goto_1

    #@3d
    .line 579
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@3f
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    #@42
    goto :goto_0

    #@43
    .line 584
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@45
    invoke-direct {p0, v2}, Ljava/security/Provider;->removeInvalidServices(Ljava/util/Map;)V

    #@48
    .line 585
    const/4 v2, 0x0

    #@49
    iput-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    #@4b
    .line 571
    return-void
.end method

.method private getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 603
    const-string/jumbo v3, "."

    #@6
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    .line 604
    .local v1, "i":I
    if-ge v1, v5, :cond_1

    #@c
    .line 605
    sget-object v3, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 606
    sget-object v3, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Ignoring invalid entry in provider "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    .line 607
    iget-object v5, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@20
    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 607
    const-string/jumbo v5, ":"

    #@27
    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@36
    .line 609
    :cond_0
    return-object v6

    #@37
    .line 611
    :cond_1
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 612
    .local v2, "type":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    #@3d
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 613
    .local v0, "alg":Ljava/lang/String;
    const/4 v3, 0x2

    #@42
    new-array v3, v3, [Ljava/lang/String;

    #@44
    aput-object v2, v3, v4

    #@46
    aput-object v0, v3, v5

    #@48
    return-object v3
.end method

.method private implClear()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 518
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 519
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    #@8
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@b
    .line 521
    :cond_0
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 522
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@11
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@14
    .line 524
    :cond_1
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 525
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@1a
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@1d
    .line 527
    :cond_2
    iput-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    #@1f
    .line 528
    iput-boolean v2, p0, Ljava/security/Provider;->servicesChanged:Z

    #@21
    .line 529
    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    #@23
    .line 530
    invoke-super {p0}, Ljava/util/Properties;->clear()V

    #@26
    .line 531
    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    #@29
    .line 532
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 533
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    #@30
    .line 517
    :cond_3
    return-void
.end method

.method private implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 500
    instance-of v1, p1, Ljava/lang/String;

    #@3
    if-eqz v1, :cond_3

    #@5
    instance-of v1, p2, Ljava/lang/String;

    #@7
    if-eqz v1, :cond_3

    #@9
    move-object v0, p1

    #@a
    .line 501
    check-cast v0, Ljava/lang/String;

    #@c
    .line 502
    .local v0, "keyString":Ljava/lang/String;
    const-string/jumbo v1, "Provider."

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 503
    return-object v2

    #@16
    .line 505
    :cond_0
    iget-boolean v1, p0, Ljava/security/Provider;->registered:Z

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 506
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    #@1d
    .line 508
    :cond_1
    const/4 v1, 0x1

    #@1e
    iput-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    #@20
    .line 509
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    #@22
    if-nez v1, :cond_2

    #@24
    .line 510
    new-instance v1, Ljava/util/LinkedHashMap;

    #@26
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@29
    iput-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    #@2b
    .line 512
    :cond_2
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    #@2d
    move-object v1, p2

    #@2e
    check-cast v1, Ljava/lang/String;

    #@30
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 514
    .end local v0    # "keyString":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method

.method private implPutAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "t"    # Ljava/util/Map;

    #@0
    .prologue
    .line 473
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/Map$Entry;

    #@14
    .line 474
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    goto :goto_0

    #@20
    .line 476
    .end local v0    # "e":Ljava/util/Map$Entry;
    :cond_0
    iget-boolean v2, p0, Ljava/security/Provider;->registered:Z

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 477
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    #@27
    .line 472
    :cond_1
    return-void
.end method

.method private implRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 482
    iget-boolean v1, p0, Ljava/security/Provider;->registered:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 483
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    #@8
    .line 485
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    #@a
    if-eqz v1, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 486
    check-cast v0, Ljava/lang/String;

    #@f
    .line 487
    .local v0, "keyString":Ljava/lang/String;
    const-string/jumbo v1, "Provider."

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 488
    return-object v2

    #@19
    .line 490
    :cond_1
    const/4 v1, 0x1

    #@1a
    iput-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    #@1c
    .line 491
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    #@1e
    if-nez v1, :cond_2

    #@20
    .line 492
    new-instance v1, Ljava/util/LinkedHashMap;

    #@22
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@25
    iput-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    #@27
    .line 494
    :cond_2
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    #@29
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 496
    .end local v0    # "keyString":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    return-object v1
.end method

.method private implRemoveService(Ljava/security/Provider$Service;)V
    .locals 10
    .param p1, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 902
    if-eqz p1, :cond_0

    #@4
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@6
    if-nez v6, :cond_1

    #@8
    .line 903
    :cond_0
    return-void

    #@9
    .line 905
    :cond_1
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 906
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 907
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v3, Ljava/security/Provider$ServiceKey;

    #@13
    invoke-direct {v3, v5, v0, v9, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    #@16
    .line 908
    .local v3, "key":Ljava/security/Provider$ServiceKey;
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@18
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Ljava/security/Provider$Service;

    #@1e
    .line 909
    .local v4, "oldService":Ljava/security/Provider$Service;
    if-eq p1, v4, :cond_2

    #@20
    .line 910
    return-void

    #@21
    .line 912
    :cond_2
    const/4 v6, 0x1

    #@22
    iput-boolean v6, p0, Ljava/security/Provider;->servicesChanged:Z

    #@24
    .line 913
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@26
    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 914
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@2c
    move-result-object v6

    #@2d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v2

    #@31
    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_3

    #@37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Ljava/lang/String;

    #@3d
    .line 915
    .local v1, "alias":Ljava/lang/String;
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@3f
    new-instance v7, Ljava/security/Provider$ServiceKey;

    #@41
    invoke-direct {v7, v5, v1, v9, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    #@44
    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    goto :goto_0

    #@48
    .line 917
    .end local v1    # "alias":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Ljava/security/Provider;->removePropertyStrings(Ljava/security/Provider$Service;)V

    #@4b
    .line 901
    return-void
.end method

.method private parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 621
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-virtual {v0, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v13

    #@8
    const-string/jumbo v14, "alg.alias."

    #@b
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v13

    #@f
    if-eqz v13, :cond_2

    #@11
    .line 624
    move-object/from16 v10, p2

    #@13
    .line 625
    .local v10, "stdAlg":Ljava/lang/String;
    sget v13, Ljava/security/Provider;->ALIAS_LENGTH:I

    #@15
    move-object/from16 v0, p1

    #@17
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 626
    .local v2, "aliasKey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1d
    invoke-direct {v0, v2}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    #@20
    move-result-object v12

    #@21
    .line 627
    .local v12, "typeAndAlg":[Ljava/lang/String;
    if-nez v12, :cond_0

    #@23
    .line 628
    return-void

    #@24
    .line 630
    :cond_0
    const/4 v13, 0x0

    #@25
    aget-object v11, v12, v13

    #@27
    .line 631
    .local v11, "type":Ljava/lang/String;
    const/4 v13, 0x1

    #@28
    aget-object v13, v12, v13

    #@2a
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 632
    .local v1, "aliasAlg":Ljava/lang/String;
    new-instance v8, Ljava/security/Provider$ServiceKey;

    #@30
    const/4 v13, 0x1

    #@31
    const/4 v14, 0x0

    #@32
    move-object/from16 v0, p2

    #@34
    invoke-direct {v8, v11, v0, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    #@37
    .line 633
    .local v8, "key":Ljava/security/Provider$ServiceKey;
    move-object/from16 v0, p0

    #@39
    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@3b
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v9

    #@3f
    check-cast v9, Ljava/security/Provider$Service;

    #@41
    .line 634
    .local v9, "s":Ljava/security/Provider$Service;
    if-nez v9, :cond_1

    #@43
    .line 635
    new-instance v9, Ljava/security/Provider$Service;

    #@45
    .end local v9    # "s":Ljava/security/Provider$Service;
    const/4 v13, 0x0

    #@46
    move-object/from16 v0, p0

    #@48
    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    #@4b
    .line 636
    .restart local v9    # "s":Ljava/security/Provider$Service;
    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    #@4e
    .line 637
    move-object/from16 v0, p2

    #@50
    invoke-static {v9, v0}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    #@53
    .line 638
    move-object/from16 v0, p0

    #@55
    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@57
    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    .line 640
    :cond_1
    move-object/from16 v0, p0

    #@5c
    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@5e
    new-instance v14, Ljava/security/Provider$ServiceKey;

    #@60
    const/4 v15, 0x1

    #@61
    const/16 v16, 0x0

    #@63
    move-object/from16 v0, v16

    #@65
    invoke-direct {v14, v11, v1, v15, v0}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    #@68
    invoke-interface {v13, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    .line 641
    invoke-static {v9, v1}, Ljava/security/Provider$Service;->-wrap2(Ljava/security/Provider$Service;Ljava/lang/String;)V

    #@6e
    .line 620
    .end local v1    # "aliasAlg":Ljava/lang/String;
    .end local v2    # "aliasKey":Ljava/lang/String;
    :goto_0
    return-void

    #@6f
    .line 643
    .end local v8    # "key":Ljava/security/Provider$ServiceKey;
    .end local v9    # "s":Ljava/security/Provider$Service;
    .end local v10    # "stdAlg":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    .end local v12    # "typeAndAlg":[Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p1}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    #@72
    move-result-object v12

    #@73
    .line 644
    .restart local v12    # "typeAndAlg":[Ljava/lang/String;
    if-nez v12, :cond_3

    #@75
    .line 645
    return-void

    #@76
    .line 647
    :cond_3
    const/4 v13, 0x1

    #@77
    aget-object v13, v12, v13

    #@79
    const/16 v14, 0x20

    #@7b
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    #@7e
    move-result v7

    #@7f
    .line 648
    .local v7, "i":I
    const/4 v13, -0x1

    #@80
    if-ne v7, v13, :cond_5

    #@82
    .line 650
    const/4 v13, 0x0

    #@83
    aget-object v11, v12, v13

    #@85
    .line 651
    .restart local v11    # "type":Ljava/lang/String;
    const/4 v13, 0x1

    #@86
    aget-object v13, v12, v13

    #@88
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@8b
    move-result-object v10

    #@8c
    .line 652
    .restart local v10    # "stdAlg":Ljava/lang/String;
    move-object/from16 v6, p2

    #@8e
    .line 653
    .local v6, "className":Ljava/lang/String;
    new-instance v8, Ljava/security/Provider$ServiceKey;

    #@90
    const/4 v13, 0x1

    #@91
    const/4 v14, 0x0

    #@92
    invoke-direct {v8, v11, v10, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    #@95
    .line 654
    .restart local v8    # "key":Ljava/security/Provider$ServiceKey;
    move-object/from16 v0, p0

    #@97
    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@99
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9c
    move-result-object v9

    #@9d
    check-cast v9, Ljava/security/Provider$Service;

    #@9f
    .line 655
    .restart local v9    # "s":Ljava/security/Provider$Service;
    if-nez v9, :cond_4

    #@a1
    .line 656
    new-instance v9, Ljava/security/Provider$Service;

    #@a3
    .end local v9    # "s":Ljava/security/Provider$Service;
    const/4 v13, 0x0

    #@a4
    move-object/from16 v0, p0

    #@a6
    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    #@a9
    .line 657
    .restart local v9    # "s":Ljava/security/Provider$Service;
    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    #@ac
    .line 658
    invoke-static {v9, v10}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    #@af
    .line 659
    move-object/from16 v0, p0

    #@b1
    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@b3
    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 661
    :cond_4
    move-object/from16 v0, p2

    #@b8
    invoke-static {v9, v0}, Ljava/security/Provider$Service;->-set1(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    #@bb
    goto :goto_0

    #@bc
    .line 664
    .end local v6    # "className":Ljava/lang/String;
    .end local v8    # "key":Ljava/security/Provider$ServiceKey;
    .end local v9    # "s":Ljava/security/Provider$Service;
    .end local v10    # "stdAlg":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :cond_5
    move-object/from16 v5, p2

    #@be
    .line 665
    .local v5, "attributeValue":Ljava/lang/String;
    const/4 v13, 0x0

    #@bf
    aget-object v11, v12, v13

    #@c1
    .line 666
    .restart local v11    # "type":Ljava/lang/String;
    const/4 v13, 0x1

    #@c2
    aget-object v4, v12, v13

    #@c4
    .line 667
    .local v4, "attributeString":Ljava/lang/String;
    const/4 v13, 0x0

    #@c5
    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c8
    move-result-object v13

    #@c9
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@cc
    move-result-object v10

    #@cd
    .line 668
    .restart local v10    # "stdAlg":Ljava/lang/String;
    add-int/lit8 v13, v7, 0x1

    #@cf
    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d2
    move-result-object v3

    #@d3
    .line 670
    .local v3, "attributeName":Ljava/lang/String;
    :goto_1
    const-string/jumbo v13, " "

    #@d6
    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d9
    move-result v13

    #@da
    if-eqz v13, :cond_6

    #@dc
    .line 671
    const/4 v13, 0x1

    #@dd
    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e0
    move-result-object v3

    #@e1
    goto :goto_1

    #@e2
    .line 673
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@e5
    move-result-object v3

    #@e6
    .line 674
    new-instance v8, Ljava/security/Provider$ServiceKey;

    #@e8
    const/4 v13, 0x1

    #@e9
    const/4 v14, 0x0

    #@ea
    invoke-direct {v8, v11, v10, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    #@ed
    .line 675
    .restart local v8    # "key":Ljava/security/Provider$ServiceKey;
    move-object/from16 v0, p0

    #@ef
    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@f1
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f4
    move-result-object v9

    #@f5
    check-cast v9, Ljava/security/Provider$Service;

    #@f7
    .line 676
    .restart local v9    # "s":Ljava/security/Provider$Service;
    if-nez v9, :cond_7

    #@f9
    .line 677
    new-instance v9, Ljava/security/Provider$Service;

    #@fb
    .end local v9    # "s":Ljava/security/Provider$Service;
    const/4 v13, 0x0

    #@fc
    move-object/from16 v0, p0

    #@fe
    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    #@101
    .line 678
    .restart local v9    # "s":Ljava/security/Provider$Service;
    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    #@104
    .line 679
    invoke-static {v9, v10}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    #@107
    .line 680
    move-object/from16 v0, p0

    #@109
    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@10b
    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10e
    .line 682
    :cond_7
    move-object/from16 v0, p2

    #@110
    invoke-virtual {v9, v3, v0}, Ljava/security/Provider$Service;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@113
    goto/16 :goto_0
.end method

.method private putId()V
    .locals 4

    #@0
    .prologue
    .line 447
    const-string/jumbo v0, "Provider.id name"

    #@3
    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 448
    const-string/jumbo v0, "Provider.id version"

    #@f
    iget-wide v2, p0, Ljava/security/Provider;->version:D

    #@11
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 449
    const-string/jumbo v0, "Provider.id info"

    #@1b
    iget-object v1, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    #@1d
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 450
    const-string/jumbo v0, "Provider.id className"

    #@27
    invoke-virtual {p0}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 445
    return-void
.end method

.method private putPropertyStrings(Ljava/security/Provider$Service;)V
    .locals 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    .line 825
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    .line 826
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 828
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v7

    #@11
    const-string/jumbo v8, "."

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    #@23
    move-result-object v8

    #@24
    invoke-super {p0, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 829
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@2a
    move-result-object v7

    #@2b
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v2

    #@2f
    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v7

    #@33
    if-eqz v7, :cond_0

    #@35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Ljava/lang/String;

    #@3b
    .line 830
    .local v1, "alias":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v8, "Alg.Alias."

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    const-string/jumbo v8, "."

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-super {p0, v7, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    goto :goto_0

    #@5e
    .line 832
    .end local v1    # "alias":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/util/Map;

    #@61
    move-result-object v7

    #@62
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@65
    move-result-object v7

    #@66
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@69
    move-result-object v4

    #@6a
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@6d
    move-result v7

    #@6e
    if-eqz v7, :cond_1

    #@70
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@73
    move-result-object v3

    #@74
    check-cast v3, Ljava/util/Map$Entry;

    #@76
    .line 833
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v7

    #@7f
    const-string/jumbo v8, "."

    #@82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v7

    #@8a
    const-string/jumbo v8, " "

    #@8d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v7

    #@91
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@94
    move-result-object v8

    #@95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v7

    #@99
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v5

    #@9d
    .line 834
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a0
    move-result-object v7

    #@a1
    invoke-super {p0, v5, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    goto :goto_1

    #@a5
    .line 836
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    iget-boolean v7, p0, Ljava/security/Provider;->registered:Z

    #@a7
    if-eqz v7, :cond_2

    #@a9
    .line 837
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    #@ac
    .line 824
    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 455
    const/4 v3, 0x0

    #@1
    iput-boolean v3, p0, Ljava/security/Provider;->registered:Z

    #@3
    .line 456
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 457
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljava/util/Map$Entry;

    #@1c
    .line 458
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    goto :goto_0

    #@28
    .line 460
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    const/4 v3, 0x0

    #@29
    iput-object v3, p0, Ljava/security/Provider;->defaults:Ljava/util/Properties;

    #@2b
    .line 461
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@2e
    .line 462
    invoke-direct {p0}, Ljava/security/Provider;->implClear()V

    #@31
    .line 463
    const/4 v3, 0x1

    #@32
    iput-boolean v3, p0, Ljava/security/Provider;->initialized:Z

    #@34
    .line 464
    invoke-virtual {p0, v0}, Ljava/security/Provider;->putAll(Ljava/util/Map;)V

    #@37
    .line 454
    return-void
.end method

.method private removeInvalidServices(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 593
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/Provider$ServiceKey;Ljava/security/Provider$Service;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v3

    #@4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .local v2, "t":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 594
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/Map$Entry;

    #@14
    .line 595
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/security/Provider$Service;

    #@1a
    .line 596
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-static {v1}, Ljava/security/Provider$Service;->-wrap0(Ljava/security/Provider$Service;)Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_0

    #@20
    .line 597
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@23
    goto :goto_0

    #@24
    .line 592
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "s":Ljava/security/Provider$Service;
    :cond_1
    return-void
.end method

.method private removePropertyStrings(Ljava/security/Provider$Service;)V
    .locals 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    .line 846
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    .line 847
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 849
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v7

    #@11
    const-string/jumbo v8, "."

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    invoke-super {p0, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 850
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@26
    move-result-object v7

    #@27
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v2

    #@2b
    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_0

    #@31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Ljava/lang/String;

    #@37
    .line 851
    .local v1, "alias":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v8, "Alg.Alias."

    #@3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    const-string/jumbo v8, "."

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    invoke-super {p0, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    goto :goto_0

    #@5a
    .line 853
    .end local v1    # "alias":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/util/Map;

    #@5d
    move-result-object v7

    #@5e
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@61
    move-result-object v7

    #@62
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@65
    move-result-object v4

    #@66
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@69
    move-result v7

    #@6a
    if-eqz v7, :cond_1

    #@6c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6f
    move-result-object v3

    #@70
    check-cast v3, Ljava/util/Map$Entry;

    #@72
    .line 854
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    const-string/jumbo v8, "."

    #@7e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    const-string/jumbo v8, " "

    #@89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@90
    move-result-object v8

    #@91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v5

    #@99
    .line 855
    .local v5, "key":Ljava/lang/String;
    invoke-super {p0, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9c
    goto :goto_1

    #@9d
    .line 857
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    iget-boolean v7, p0, Ljava/security/Provider;->registered:Z

    #@9f
    if-eqz v7, :cond_2

    #@a1
    .line 858
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    #@a4
    .line 845
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 214
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "clearProviderProperties."

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    #@1a
    .line 215
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 216
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Remove "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, " provider properties"

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@40
    .line 218
    :cond_0
    invoke-direct {p0}, Ljava/security/Provider;->implClear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    monitor-exit p0

    #@44
    .line 213
    return-void

    #@45
    :catchall_0
    move-exception v0

    #@46
    monitor-exit p0

    #@47
    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 398
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@3
    .line 399
    invoke-super {p0}, Ljava/util/Properties;->elements()Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 262
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@4
    .line 263
    iget-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 264
    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    #@a
    add-int/lit8 v1, v0, 0x1

    #@c
    iput v1, p0, Ljava/security/Provider;->entrySetCallCount:I

    #@e
    if-nez v0, :cond_1

    #@10
    .line 265
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    #@1a
    .line 275
    :cond_0
    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    #@1c
    const/4 v1, 0x2

    #@1d
    if-eq v0, v1, :cond_2

    #@1f
    .line 276
    new-instance v0, Ljava/lang/RuntimeException;

    #@21
    const-string/jumbo v1, "Internal error."

    #@24
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    :catchall_0
    move-exception v0

    #@29
    monitor-exit p0

    #@2a
    throw v0

    #@2b
    .line 267
    :cond_1
    :try_start_1
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    move-result-object v0

    #@2f
    monitor-exit p0

    #@30
    return-object v0

    #@31
    .line 278
    :cond_2
    :try_start_2
    iget-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    monitor-exit p0

    #@34
    return-object v0
.end method

.method public declared-synchronized forEach(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/lang/Object;-Ljava/lang/Object;>;"
    monitor-enter p0

    #@1
    .line 386
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@4
    .line 387
    invoke-super {p0, p1}, Ljava/util/Properties;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 385
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 377
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@3
    .line 378
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 404
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@3
    .line 405
    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public declared-synchronized getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 708
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@5
    .line 710
    sget-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    #@7
    .line 711
    .local v0, "key":Ljava/security/Provider$ServiceKey;
    invoke-virtual {v0, p1, p2}, Ljava/security/Provider$ServiceKey;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 712
    new-instance v0, Ljava/security/Provider$ServiceKey;

    #@f
    .end local v0    # "key":Ljava/security/Provider$ServiceKey;
    const/4 v3, 0x0

    #@10
    const/4 v4, 0x0

    #@11
    invoke-direct {v0, p1, p2, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    #@14
    .line 713
    .restart local v0    # "key":Ljava/security/Provider$ServiceKey;
    sput-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    #@16
    .line 715
    :cond_0
    iget-object v3, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 716
    iget-object v3, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@1c
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/security/Provider$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 717
    .local v1, "service":Ljava/security/Provider$Service;
    if-eqz v1, :cond_1

    #@24
    monitor-exit p0

    #@25
    .line 718
    return-object v1

    #@26
    .line 721
    .end local v1    # "service":Ljava/security/Provider$Service;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    #@29
    .line 722
    iget-object v3, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@2b
    if-eqz v3, :cond_2

    #@2d
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@2f
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Ljava/security/Provider$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    :cond_2
    monitor-exit p0

    #@36
    return-object v2

    #@37
    .end local v0    # "key":Ljava/security/Provider$ServiceKey;
    :catchall_0
    move-exception v2

    #@38
    monitor-exit p0

    #@39
    throw v2
.end method

.method public declared-synchronized getServices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 744
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@4
    .line 745
    iget-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    #@6
    if-nez v1, :cond_0

    #@8
    iget-boolean v1, p0, Ljava/security/Provider;->servicesChanged:Z

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 746
    :cond_0
    const/4 v1, 0x0

    #@d
    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    #@f
    .line 748
    :cond_1
    iget-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    #@11
    if-nez v1, :cond_4

    #@13
    .line 749
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    #@16
    .line 750
    new-instance v0, Ljava/util/LinkedHashSet;

    #@18
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@1b
    .line 751
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 752
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@21
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@24
    move-result-object v1

    #@25
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@28
    .line 754
    :cond_2
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 755
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    #@2e
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@31
    move-result-object v1

    #@32
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@35
    .line 757
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@38
    move-result-object v1

    #@39
    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    #@3b
    .line 758
    const/4 v1, 0x0

    #@3c
    iput-boolean v1, p0, Ljava/security/Provider;->servicesChanged:Z

    #@3e
    .line 760
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    :cond_4
    iget-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit p0

    #@41
    return-object v1

    #@42
    :catchall_0
    move-exception v1

    #@43
    monitor-exit p0

    #@44
    throw v1
.end method

.method public getVersion()D
    .locals 2

    #@0
    .prologue
    .line 162
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    #@2
    return-wide v0
.end method

.method public isRegistered()Z
    .locals 1

    #@0
    .prologue
    .line 1523
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    #@2
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 288
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@3
    .line 289
    invoke-super {p0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 392
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@3
    .line 393
    invoke-super {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 230
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "putProviderProperty."

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v1}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    #@1a
    .line 231
    sget-object v1, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 232
    sget-object v1, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Load "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    iget-object v3, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    const-string/jumbo v3, " provider properties"

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@40
    .line 234
    :cond_0
    new-instance v0, Ljava/util/Properties;

    #@42
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@45
    .line 235
    .local v0, "tempProperties":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@48
    .line 236
    invoke-direct {p0, v0}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    monitor-exit p0

    #@4c
    .line 229
    return-void

    #@4d
    .end local v0    # "tempProperties":Ljava/util/Properties;
    :catchall_0
    move-exception v1

    #@4e
    monitor-exit p0

    #@4f
    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 332
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "putProviderProperty."

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    #@1a
    .line 333
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 334
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Set "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, " provider property ["

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 335
    const-string/jumbo v2, "/"

    #@40
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    .line 335
    const-string/jumbo v2, "]"

    #@4b
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@56
    .line 337
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    move-result-object v0

    #@5a
    monitor-exit p0

    #@5b
    return-object v0

    #@5c
    :catchall_0
    move-exception v0

    #@5d
    monitor-exit p0

    #@5e
    throw v0
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    monitor-enter p0

    #@1
    .line 247
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "putProviderProperty."

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    #@1a
    .line 248
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 249
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Put all "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, " provider properties"

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@40
    .line 251
    :cond_0
    invoke-direct {p0, p1}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    monitor-exit p0

    #@44
    .line 246
    return-void

    #@45
    :catchall_0
    move-exception v0

    #@46
    monitor-exit p0

    #@47
    throw v0
.end method

.method protected declared-synchronized putService(Ljava/security/Provider$Service;)V
    .locals 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 793
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v6, "putProviderProperty."

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v5

    #@d
    iget-object v6, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    invoke-direct {p0, v5}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    #@1a
    .line 794
    sget-object v5, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 795
    sget-object v5, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@20
    new-instance v6, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    iget-object v7, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    const-string/jumbo v7, ".putService(): "

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3d
    .line 797
    :cond_0
    if-nez p1, :cond_1

    #@3f
    .line 798
    new-instance v5, Ljava/lang/NullPointerException;

    #@41
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@44
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    :catchall_0
    move-exception v5

    #@46
    monitor-exit p0

    #@47
    throw v5

    #@48
    .line 800
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@4b
    move-result-object v5

    #@4c
    if-eq v5, p0, :cond_2

    #@4e
    .line 801
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@50
    .line 802
    const-string/jumbo v6, "service.getProvider() must match this Provider object"

    #@53
    .line 801
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v5

    #@57
    .line 804
    :cond_2
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@59
    if-nez v5, :cond_3

    #@5b
    .line 805
    new-instance v5, Ljava/util/LinkedHashMap;

    #@5d
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    #@60
    iput-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@62
    .line 807
    :cond_3
    const/4 v5, 0x1

    #@63
    iput-boolean v5, p0, Ljava/security/Provider;->servicesChanged:Z

    #@65
    .line 808
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    .line 809
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    .line 810
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v3, Ljava/security/Provider$ServiceKey;

    #@6f
    const/4 v5, 0x1

    #@70
    const/4 v6, 0x0

    #@71
    invoke-direct {v3, v4, v0, v5, v6}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    #@74
    .line 812
    .local v3, "key":Ljava/security/Provider$ServiceKey;
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@76
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    move-result-object v5

    #@7a
    check-cast v5, Ljava/security/Provider$Service;

    #@7c
    invoke-direct {p0, v5}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V

    #@7f
    .line 813
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@81
    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    .line 814
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    #@87
    move-result-object v5

    #@88
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8b
    move-result-object v2

    #@8c
    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@8f
    move-result v5

    #@90
    if-eqz v5, :cond_4

    #@92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@95
    move-result-object v1

    #@96
    check-cast v1, Ljava/lang/String;

    #@98
    .line 815
    .local v1, "alias":Ljava/lang/String;
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    #@9a
    new-instance v6, Ljava/security/Provider$ServiceKey;

    #@9c
    const/4 v7, 0x1

    #@9d
    const/4 v8, 0x0

    #@9e
    invoke-direct {v6, v4, v1, v7, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    #@a1
    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    goto :goto_0

    #@a5
    .line 817
    .end local v1    # "alias":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Ljava/security/Provider;->putPropertyStrings(Ljava/security/Provider$Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a8
    monitor-exit p0

    #@a9
    .line 792
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 368
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "removeProviderProperty."

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    #@1a
    .line 369
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 370
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Remove "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, " provider property "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@44
    .line 372
    :cond_0
    invoke-direct {p0, p1}, Ljava/security/Provider;->implRemove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    move-result-object v0

    #@48
    monitor-exit p0

    #@49
    return-object v0

    #@4a
    :catchall_0
    move-exception v0

    #@4b
    monitor-exit p0

    #@4c
    throw v0
.end method

.method protected declared-synchronized removeService(Ljava/security/Provider$Service;)V
    .locals 3
    .param p1, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 891
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "removeProviderProperty."

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    #@1a
    .line 892
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 893
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, ".removeService(): "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3d
    .line 895
    :cond_0
    if-nez p1, :cond_1

    #@3f
    .line 896
    new-instance v0, Ljava/lang/NullPointerException;

    #@41
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@44
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    :catchall_0
    move-exception v0

    #@46
    monitor-exit p0

    #@47
    throw v0

    #@48
    .line 898
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    monitor-exit p0

    #@4c
    .line 890
    return-void
.end method

.method public setRegistered()V
    .locals 1

    #@0
    .prologue
    .line 1509
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    #@3
    .line 1508
    return-void
.end method

.method public setUnregistered()V
    .locals 1

    #@0
    .prologue
    .line 1516
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    #@3
    .line 1515
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, " version "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-wide v2, p0, Ljava/security/Provider;->version:D

    #@14
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 299
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@3
    .line 300
    invoke-super {p0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public declared-synchronized warmUpServiceProvision()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1535
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    #@4
    .line 1538
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    #@7
    .line 1541
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 1534
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
