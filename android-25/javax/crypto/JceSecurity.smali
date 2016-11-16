.class final Ljavax/crypto/JceSecurity;
.super Ljava/lang/Object;
.source "JceSecurity.java"


# static fields
.field private static final NULL_URL:Ljava/net/URL;

.field private static final PROVIDER_VERIFIED:Ljava/lang/Object;

.field static final RANDOM:Ljava/security/SecureRandom;

.field private static final codeBaseCacheRef:Ljava/util/Map;

.field private static defaultPolicy:Ljavax/crypto/CryptoPermissions;

.field private static exemptPolicy:Ljavax/crypto/CryptoPermissions;

.field private static isRestricted:Z

.field private static final verificationResults:Ljava/util/Map;

.field private static final verifyingProviders:Ljava/util/Map;


# direct methods
.method static synthetic -get0()Ljava/net/URL;
    .locals 1

    #@0
    sget-object v0, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 50
    new-instance v1, Ljava/security/SecureRandom;

    #@3
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@6
    sput-object v1, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    #@8
    .line 54
    sput-object v2, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    #@a
    .line 55
    sput-object v2, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    #@c
    .line 60
    new-instance v1, Ljava/util/IdentityHashMap;

    #@e
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    #@11
    sput-object v1, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    #@13
    .line 63
    new-instance v1, Ljava/util/IdentityHashMap;

    #@15
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    #@18
    sput-object v1, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    #@1a
    .line 66
    const/4 v1, 0x1

    #@1b
    sput-boolean v1, Ljavax/crypto/JceSecurity;->isRestricted:Z

    #@1d
    .line 166
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@1f
    sput-object v1, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;

    #@21
    .line 215
    :try_start_0
    new-instance v1, Ljava/net/URL;

    #@23
    const-string/jumbo v2, "http://null.sun.com/"

    #@26
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@29
    sput-object v1, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 222
    new-instance v1, Ljava/util/WeakHashMap;

    #@2d
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    #@30
    sput-object v1, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    #@32
    .line 48
    return-void

    #@33
    .line 216
    :catch_0
    move-exception v0

    #@34
    .line 217
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@36
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@39
    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static canUseProvider(Ljava/security/Provider;)Z
    .locals 1
    .param p0, "p"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 206
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method static getCodeBase(Ljava/lang/Class;)Ljava/net/URL;
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 228
    sget-object v2, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    #@3
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/net/URL;

    #@9
    .line 229
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_0

    #@b
    .line 230
    new-instance v2, Ljavax/crypto/JceSecurity$1;

    #@d
    invoke-direct {v2, p0}, Ljavax/crypto/JceSecurity$1;-><init>(Ljava/lang/Class;)V

    #@10
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    .end local v0    # "url":Ljava/net/URL;
    check-cast v0, Ljava/net/URL;

    #@16
    .line 242
    .restart local v0    # "url":Ljava/net/URL;
    sget-object v2, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    #@18
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 244
    :cond_0
    sget-object v2, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;

    #@1d
    if-ne v0, v2, :cond_1

    #@1f
    move-object v0, v1

    #@20
    .end local v0    # "url":Ljava/net/URL;
    :cond_1
    return-object v0
.end method

.method static getDefaultPolicy()Ljavax/crypto/CryptoPermissions;
    .locals 1

    #@0
    .prologue
    .line 330
    sget-object v0, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    #@2
    return-object v0
.end method

.method static getExemptPolicy()Ljavax/crypto/CryptoPermissions;
    .locals 1

    #@0
    .prologue
    .line 334
    sget-object v0, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    #@2
    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    invoke-static {p0, p2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@3
    move-result-object v4

    #@4
    .line 124
    .local v4, "services":Ljava/util/List;
    const/4 v1, 0x0

    #@5
    .line 125
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v5

    #@9
    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .local v5, "t":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_1

    #@f
    .line 126
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Ljava/security/Provider$Service;

    #@15
    .line 127
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@18
    move-result-object v6

    #@19
    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_0

    #@1f
    .line 132
    :try_start_0
    invoke-static {v3, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v2

    #@23
    .line 133
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    return-object v2

    #@24
    .line 134
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_0
    move-exception v0

    #@25
    .line 135
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v0

    #@26
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    #@27
    .line 138
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_1
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    #@29
    new-instance v7, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v8, "Algorithm "

    #@31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    .line 139
    const-string/jumbo v8, " not available"

    #@3c
    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    invoke-direct {v6, v7, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@47
    throw v6
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@3
    move-result-object v1

    #@4
    .line 100
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@7
    move-result-object v3

    #@8
    invoke-static {v3}, Ljavax/crypto/JceSecurity;->getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;

    #@b
    move-result-object v2

    #@c
    .line 101
    .local v2, "ve":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    #@e
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "JCE cannot authenticate the provider "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 104
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/security/NoSuchProviderException;

    #@24
    invoke-direct {v3, v0}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v3, v2}, Ljava/security/NoSuchProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2a
    move-result-object v3

    #@2b
    .line 103
    check-cast v3, Ljava/security/NoSuchProviderException;

    #@2d
    throw v3

    #@2e
    .line 106
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    #@31
    move-result-object v3

    #@32
    return-object v3
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;

    #@3
    move-result-object v1

    #@4
    .line 112
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-static {p3}, Ljavax/crypto/JceSecurity;->getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;

    #@7
    move-result-object v2

    #@8
    .line 113
    .local v2, "ve":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    #@a
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "JCE cannot authenticate the provider "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    .line 115
    invoke-virtual {p3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 116
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    #@24
    invoke-direct {v3, v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    throw v3

    #@28
    .line 118
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    #@2b
    move-result-object v3

    #@2c
    return-object v3
.end method

.method static declared-synchronized getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;
    .locals 7
    .param p0, "p"    # Ljava/security/Provider;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const-class v4, Ljavax/crypto/JceSecurity;

    #@3
    monitor-enter v4

    #@4
    .line 175
    :try_start_0
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    #@6
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 176
    .local v1, "o":Ljava/lang/Object;
    sget-object v3, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    if-ne v1, v3, :cond_0

    #@e
    monitor-exit v4

    #@f
    .line 177
    return-object v6

    #@10
    .line 178
    :cond_0
    if-eqz v1, :cond_1

    #@12
    .line 179
    :try_start_1
    check-cast v1, Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@14
    .end local v1    # "o":Ljava/lang/Object;
    monitor-exit v4

    #@15
    return-object v1

    #@16
    .line 181
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    :try_start_2
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    #@18
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    if-eqz v3, :cond_2

    #@1e
    .line 184
    new-instance v3, Ljava/security/NoSuchProviderException;

    #@20
    const-string/jumbo v5, "Recursion during verification"

    #@23
    invoke-direct {v3, v5}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    monitor-exit v4

    #@27
    return-object v3

    #@28
    .line 187
    :cond_2
    :try_start_3
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    #@2a
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2c
    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 188
    invoke-virtual {p0}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    #@32
    move-result-object v3

    #@33
    invoke-static {v3}, Ljavax/crypto/JceSecurity;->getCodeBase(Ljava/lang/Class;)Ljava/net/URL;

    #@36
    move-result-object v2

    #@37
    .line 189
    .local v2, "providerURL":Ljava/net/URL;
    invoke-static {v2}, Ljavax/crypto/JceSecurity;->verifyProviderJar(Ljava/net/URL;)V

    #@3a
    .line 191
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    #@3c
    sget-object v5, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;

    #@3e
    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    .line 197
    :try_start_4
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    #@43
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@46
    monitor-exit v4

    #@47
    .line 192
    return-object v6

    #@48
    .line 193
    .end local v2    # "providerURL":Ljava/net/URL;
    :catch_0
    move-exception v0

    #@49
    .line 194
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    #@4b
    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@4e
    .line 197
    :try_start_6
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    #@50
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@53
    monitor-exit v4

    #@54
    .line 195
    return-object v0

    #@55
    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@56
    .line 197
    :try_start_7
    sget-object v5, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    #@58
    invoke-interface {v5, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 196
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@5c
    .end local v1    # "o":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    #@5d
    monitor-exit v4

    #@5e
    throw v3
.end method

.method static isRestricted()Z
    .locals 1

    #@0
    .prologue
    .line 338
    sget-boolean v0, Ljavax/crypto/JceSecurity;->isRestricted:Z

    #@2
    return v0
.end method

.method private static loadPolicies(Ljava/io/File;Ljavax/crypto/CryptoPermissions;Ljavax/crypto/CryptoPermissions;)V
    .locals 6
    .param p0, "jarPathName"    # Ljava/io/File;
    .param p1, "defaultPolicy"    # Ljavax/crypto/CryptoPermissions;
    .param p2, "exemptPolicy"    # Ljavax/crypto/CryptoPermissions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 297
    new-instance v3, Ljava/util/jar/JarFile;

    #@2
    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    #@5
    .line 299
    .local v3, "jf":Ljava/util/jar/JarFile;
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    .line 300
    .local v0, "entries":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_4

    #@f
    .line 301
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/util/jar/JarEntry;

    #@15
    .line 302
    .local v2, "je":Ljava/util/jar/JarEntry;
    const/4 v1, 0x0

    #@16
    .line 304
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, "default_"

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_2

    #@23
    .line 305
    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@26
    move-result-object v1

    #@27
    .line 306
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p1, v1}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 314
    :goto_1
    if-eqz v1, :cond_1

    #@2c
    .line 315
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@2f
    .line 322
    :cond_1
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    #@32
    move-result-object v4

    #@33
    invoke-static {v4}, Ljavax/crypto/JarVerifier;->verifyPolicySigned([Ljava/security/cert/Certificate;)V

    #@36
    goto :goto_0

    #@37
    .line 307
    .local v1, "is":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    const-string/jumbo v5, "exempt_"

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_0

    #@44
    .line 308
    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@47
    move-result-object v1

    #@48
    .line 309
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p2, v1}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    goto :goto_1

    #@4c
    .line 313
    .end local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    #@4d
    .line 314
    if-eqz v1, :cond_3

    #@4f
    .line 315
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@52
    .line 313
    :cond_3
    throw v4

    #@53
    .line 325
    .end local v2    # "je":Ljava/util/jar/JarEntry;
    :cond_4
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    #@56
    .line 326
    const/4 v3, 0x0

    #@57
    .line 295
    .local v3, "jf":Ljava/util/jar/JarFile;
    return-void
.end method

.method private static setupJurisdictionPolicies()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 248
    const-string/jumbo v11, "java.home"

    #@4
    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    .line 249
    .local v6, "javaHomeDir":Ljava/lang/String;
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    #@a
    .line 250
    .local v9, "sep":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v11

    #@13
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v11

    #@17
    const-string/jumbo v12, "lib"

    #@1a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v11

    #@1e
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v11

    #@22
    .line 251
    const-string/jumbo v12, "security"

    #@25
    .line 250
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v11

    #@29
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v11

    #@2d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    .line 253
    .local v8, "pathToPolicyJar":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    #@33
    const-string/jumbo v11, "US_export_policy.jar"

    #@36
    invoke-direct {v4, v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 254
    .local v4, "exportJar":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    #@3b
    const-string/jumbo v11, "local_policy.jar"

    #@3e
    invoke-direct {v5, v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 256
    .local v5, "importJar":Ljava/io/File;
    const-string/jumbo v11, "javax/crypto/Cipher.class"

    #@44
    .line 255
    invoke-static {v11}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    #@47
    move-result-object v7

    #@48
    .line 258
    .local v7, "jceCipherURL":Ljava/net/URL;
    if-eqz v7, :cond_1

    #@4a
    .line 259
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@4d
    move-result v11

    #@4e
    if-eqz v11, :cond_1

    #@50
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    #@53
    move-result v11

    #@54
    if-eqz v11, :cond_1

    #@56
    .line 265
    new-instance v0, Ljavax/crypto/CryptoPermissions;

    #@58
    invoke-direct {v0}, Ljavax/crypto/CryptoPermissions;-><init>()V

    #@5b
    .line 266
    .local v0, "defaultExport":Ljavax/crypto/CryptoPermissions;
    new-instance v2, Ljavax/crypto/CryptoPermissions;

    #@5d
    invoke-direct {v2}, Ljavax/crypto/CryptoPermissions;-><init>()V

    #@60
    .line 267
    .local v2, "exemptExport":Ljavax/crypto/CryptoPermissions;
    invoke-static {v4, v0, v2}, Ljavax/crypto/JceSecurity;->loadPolicies(Ljava/io/File;Ljavax/crypto/CryptoPermissions;Ljavax/crypto/CryptoPermissions;)V

    #@63
    .line 269
    new-instance v1, Ljavax/crypto/CryptoPermissions;

    #@65
    invoke-direct {v1}, Ljavax/crypto/CryptoPermissions;-><init>()V

    #@68
    .line 270
    .local v1, "defaultImport":Ljavax/crypto/CryptoPermissions;
    new-instance v3, Ljavax/crypto/CryptoPermissions;

    #@6a
    invoke-direct {v3}, Ljavax/crypto/CryptoPermissions;-><init>()V

    #@6d
    .line 271
    .local v3, "exemptImport":Ljavax/crypto/CryptoPermissions;
    invoke-static {v5, v1, v3}, Ljavax/crypto/JceSecurity;->loadPolicies(Ljava/io/File;Ljavax/crypto/CryptoPermissions;Ljavax/crypto/CryptoPermissions;)V

    #@70
    .line 274
    invoke-virtual {v0}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    #@73
    move-result v11

    #@74
    if-nez v11, :cond_0

    #@76
    invoke-virtual {v1}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    #@79
    move-result v11

    #@7a
    if-eqz v11, :cond_2

    #@7c
    .line 275
    :cond_0
    new-instance v10, Ljava/lang/SecurityException;

    #@7e
    const-string/jumbo v11, "Missing mandatory jurisdiction policy files"

    #@81
    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@84
    throw v10

    #@85
    .line 260
    .end local v0    # "defaultExport":Ljavax/crypto/CryptoPermissions;
    .end local v1    # "defaultImport":Ljavax/crypto/CryptoPermissions;
    .end local v2    # "exemptExport":Ljavax/crypto/CryptoPermissions;
    .end local v3    # "exemptImport":Ljavax/crypto/CryptoPermissions;
    :cond_1
    new-instance v10, Ljava/lang/SecurityException;

    #@87
    .line 261
    const-string/jumbo v11, "Cannot locate policy or framework files!"

    #@8a
    .line 260
    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v10

    #@8e
    .line 278
    .restart local v0    # "defaultExport":Ljavax/crypto/CryptoPermissions;
    .restart local v1    # "defaultImport":Ljavax/crypto/CryptoPermissions;
    .restart local v2    # "exemptExport":Ljavax/crypto/CryptoPermissions;
    .restart local v3    # "exemptImport":Ljavax/crypto/CryptoPermissions;
    :cond_2
    invoke-virtual {v0, v1}, Ljavax/crypto/CryptoPermissions;->getMinimum(Ljavax/crypto/CryptoPermissions;)Ljavax/crypto/CryptoPermissions;

    #@91
    move-result-object v11

    #@92
    sput-object v11, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    #@94
    .line 281
    invoke-virtual {v2}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    #@97
    move-result v11

    #@98
    if-eqz v11, :cond_4

    #@9a
    .line 282
    invoke-virtual {v3}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    #@9d
    move-result v11

    #@9e
    if-eqz v11, :cond_3

    #@a0
    move-object v3, v10

    #@a1
    .end local v3    # "exemptImport":Ljavax/crypto/CryptoPermissions;
    :cond_3
    sput-object v3, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    #@a3
    .line 247
    :goto_0
    return-void

    #@a4
    .line 284
    .restart local v3    # "exemptImport":Ljavax/crypto/CryptoPermissions;
    :cond_4
    invoke-virtual {v2, v3}, Ljavax/crypto/CryptoPermissions;->getMinimum(Ljavax/crypto/CryptoPermissions;)Ljavax/crypto/CryptoPermissions;

    #@a7
    move-result-object v10

    #@a8
    sput-object v10, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    #@aa
    goto :goto_0
.end method

.method static verifyExemptJar(Ljava/net/URL;)Ljavax/crypto/CryptoPermissions;
    .locals 2
    .param p0, "codeBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    new-instance v0, Ljavax/crypto/JarVerifier;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, p0, v1}, Ljavax/crypto/JarVerifier;-><init>(Ljava/net/URL;Z)V

    #@6
    .line 150
    .local v0, "jv":Ljavax/crypto/JarVerifier;
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->verify()V

    #@9
    .line 151
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->getPermissions()Ljavax/crypto/CryptoPermissions;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method static verifyProviderJar(Ljava/net/URL;)V
    .locals 2
    .param p0, "codeBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    new-instance v0, Ljavax/crypto/JarVerifier;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljavax/crypto/JarVerifier;-><init>(Ljava/net/URL;Z)V

    #@6
    .line 163
    .local v0, "jv":Ljavax/crypto/JarVerifier;
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->verify()V

    #@9
    .line 159
    return-void
.end method
