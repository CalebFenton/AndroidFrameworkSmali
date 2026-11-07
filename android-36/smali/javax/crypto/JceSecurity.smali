.class final Ljavax/crypto/JceSecurity;
.super Ljava/lang/Object;
.source "JceSecurity.java"


# static fields
.field private static final blacklist NULL_URL:Ljava/net/URL;

.field private static final blacklist PROVIDER_VERIFIED:Ljava/lang/Object;

.field static final blacklist RANDOM:Ljava/security/SecureRandom;

.field private static final blacklist codeBaseCacheRef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist defaultPolicy:Ljavax/crypto/CryptoPermissions;

.field private static blacklist exemptPolicy:Ljavax/crypto/CryptoPermissions;

.field private static final blacklist verificationResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/Provider;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist verifyingProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/Provider;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetNULL_URL()Ljava/net/URL;
    .registers 1

    sget-object v0, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    .line 55
    sput-object v0, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    .line 60
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    .line 173
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;

    .line 221
    :try_start_1e
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://null.sun.com/"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_30

    .line 224
    nop

    .line 228
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    return-void

    .line 222
    :catch_30
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method static blacklist canUseProvider(Ljava/security/Provider;)Z
    .registers 2
    .param p0, "p"    # Ljava/security/Provider;

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method static blacklist getCodeBase(Ljava/lang/Class;)Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .line 235
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    monitor-enter v0

    .line 236
    :try_start_3
    sget-object v1, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 237
    .local v1, "url":Ljava/net/URL;
    if-nez v1, :cond_1e

    .line 238
    new-instance v2, Ljavax/crypto/JceSecurity$1;

    invoke-direct {v2, p0}, Ljavax/crypto/JceSecurity$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    move-object v1, v2

    .line 250
    sget-object v2, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_1e
    sget-object v2, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;

    if-ne v1, v2, :cond_24

    const/4 v2, 0x0

    goto :goto_25

    :cond_24
    move-object v2, v1

    :goto_25
    monitor-exit v0

    return-object v2

    .line 253
    .end local v1    # "url":Ljava/net/URL;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method static blacklist getDefaultPolicy()Ljavax/crypto/CryptoPermissions;
    .registers 1

    .line 343
    sget-object v0, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    return-object v0
.end method

.method static blacklist getExemptPolicy()Ljavax/crypto/CryptoPermissions;
    .registers 1

    .line 347
    sget-object v0, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    return-object v0
.end method

.method static blacklist getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .registers 8
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 131
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    const/4 v1, 0x0

    .line 133
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 134
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 136
    goto :goto_9

    .line 139
    :cond_20
    :try_start_20
    invoke-static {v3, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_24} :catch_25

    .line 140
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    return-object v2

    .line 141
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_25
    move-exception v4

    .line 142
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v4

    .line 144
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_9

    .line 145
    :cond_28
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .registers 8
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 107
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 108
    .local v0, "s":Ljava/security/Provider$Service;
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/JceSecurity;->getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;

    move-result-object v1

    .line 109
    .local v1, "ve":Ljava/lang/Exception;
    if-nez v1, :cond_13

    .line 114
    invoke-static {v0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    return-object v2

    .line 110
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JCE cannot authenticate the provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/security/NoSuchProviderException;

    invoke-direct {v3, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, v1}, Ljava/security/NoSuchProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/security/NoSuchProviderException;

    throw v3
.end method

.method static blacklist getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;
    .registers 8
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 119
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 120
    .local v0, "s":Ljava/security/Provider$Service;
    invoke-static {p3}, Ljavax/crypto/JceSecurity;->getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;

    move-result-object v1

    .line 121
    .local v1, "ve":Ljava/lang/Exception;
    if-nez v1, :cond_f

    .line 126
    invoke-static {v0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    return-object v2

    .line 122
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JCE cannot authenticate the provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 123
    invoke-virtual {p3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static declared-synchronized blacklist getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;
    .registers 7
    .param p0, "p"    # Ljava/security/Provider;

    const-class v0, Ljavax/crypto/JceSecurity;

    monitor-enter v0

    .line 182
    :try_start_3
    sget-object v1, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 183
    .local v1, "o":Ljava/lang/Object;
    sget-object v2, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_5f

    const/4 v3, 0x0

    if-ne v1, v2, :cond_10

    .line 184
    monitor-exit v0

    return-object v3

    .line 185
    :cond_10
    if-eqz v1, :cond_17

    .line 186
    :try_start_12
    move-object v2, v1

    check-cast v2, Ljava/lang/Exception;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_5f

    monitor-exit v0

    return-object v2

    .line 188
    :cond_17
    :try_start_17
    sget-object v2, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 191
    new-instance v2, Ljava/security/NoSuchProviderException;

    const-string v3, "Recursion during verification"

    invoke-direct {v2, v3}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_5f

    monitor-exit v0

    return-object v2

    .line 194
    :cond_28
    :try_start_28
    sget-object v2, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/JceSecurity;->getCodeBase(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v2

    .line 196
    .local v2, "providerURL":Ljava/net/URL;
    invoke-static {v2}, Ljavax/crypto/JceSecurity;->verifyProviderJar(Ljava/net/URL;)V

    .line 198
    sget-object v4, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    sget-object v5, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;

    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_41} :catch_4b
    .catchall {:try_start_28 .. :try_end_41} :catchall_49

    .line 199
    nop

    .line 204
    :try_start_42
    sget-object v4, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_5f

    .line 199
    monitor-exit v0

    return-object v3

    .line 204
    .end local v2    # "providerURL":Ljava/net/URL;
    :catchall_49
    move-exception v2

    goto :goto_59

    .line 200
    :catch_4b
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4c
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_49

    .line 202
    nop

    .line 204
    :try_start_52
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_5f

    .line 202
    monitor-exit v0

    return-object v2

    .line 204
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_59
    :try_start_59
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    throw v2

    .line 181
    .end local v1    # "o":Ljava/lang/Object;
    .end local p0    # "p":Ljava/security/Provider;
    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method private static blacklist loadPolicies(Ljava/io/File;Ljavax/crypto/CryptoPermissions;Ljavax/crypto/CryptoPermissions;)V
    .registers 9
    .param p0, "jarPathName"    # Ljava/io/File;
    .param p1, "defaultPolicy"    # Ljavax/crypto/CryptoPermissions;
    .param p2, "exemptPolicy"    # Ljavax/crypto/CryptoPermissions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 312
    .local v0, "jf":Ljava/util/jar/JarFile;
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 313
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 314
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    .line 315
    .local v2, "je":Ljava/util/jar/JarEntry;
    const/4 v3, 0x0

    .line 317
    .local v3, "is":Ljava/io/InputStream;
    :try_start_16
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 318
    invoke-virtual {v0, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 319
    invoke-virtual {p1, v3}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V

    goto :goto_3f

    .line 320
    :cond_2b
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exempt_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 321
    invoke-virtual {v0, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 322
    invoke-virtual {p2, v3}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_3f
    .catchall {:try_start_16 .. :try_end_3f} :catchall_52

    .line 327
    :goto_3f
    if-eqz v3, :cond_44

    .line 328
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 335
    :cond_44
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/JarVerifier;->verifyPolicySigned([Ljava/security/cert/Certificate;)V

    .line 336
    .end local v2    # "je":Ljava/util/jar/JarEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    goto :goto_9

    .line 327
    .restart local v2    # "je":Ljava/util/jar/JarEntry;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_4c
    if-eqz v3, :cond_9

    .line 328
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_9

    .line 327
    :catchall_52
    move-exception v4

    if-eqz v3, :cond_58

    .line 328
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 330
    :cond_58
    throw v4

    .line 338
    .end local v2    # "je":Ljava/util/jar/JarEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_59
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 339
    const/4 v0, 0x0

    .line 340
    return-void
.end method

.method static blacklist verifyExemptJar(Ljava/net/URL;)Ljavax/crypto/CryptoPermissions;
    .registers 3
    .param p0, "codeBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    new-instance v0, Ljavax/crypto/JarVerifier;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/JarVerifier;-><init>(Ljava/net/URL;Z)V

    .line 157
    .local v0, "jv":Ljavax/crypto/JarVerifier;
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->verify()V

    .line 158
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->getPermissions()Ljavax/crypto/CryptoPermissions;

    move-result-object v1

    return-object v1
.end method

.method static blacklist verifyProviderJar(Ljava/net/URL;)V
    .registers 3
    .param p0, "codeBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    new-instance v0, Ljavax/crypto/JarVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/crypto/JarVerifier;-><init>(Ljava/net/URL;Z)V

    .line 170
    .local v0, "jv":Ljavax/crypto/JarVerifier;
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->verify()V

    .line 171
    return-void
.end method
