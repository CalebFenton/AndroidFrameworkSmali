.class public Lsun/security/jca/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# static fields
.field private static final blacklist BACKUP_PROVIDER_CLASSNAME:Ljava/lang/String; = "sun.security.provider.VerificationProvider"

.field public static final blacklist DEFAULT_MAXIMUM_ALLOWABLE_TARGET_API_LEVEL_FOR_BC_DEPRECATION:I = 0x1b

.field private static final blacklist DEPRECATED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist SYSTEM_BOUNCY_CASTLE_PROVIDER:Ljava/security/Provider;

.field private static final blacklist jarVerificationProviders:[Ljava/lang/String;

.field private static blacklist maximumAllowableApiLevelForBcDeprecation:I

.field private static volatile blacklist providerList:Lsun/security/jca/ProviderList;

.field private static final blacklist threadLists:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lsun/security/jca/ProviderList;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist threadListsUsed:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 46
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    sput-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    .line 64
    sget-object v0, Lsun/security/jca/ProviderList;->EMPTY:Lsun/security/jca/ProviderList;

    sput-object v0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 65
    invoke-static {}, Lsun/security/jca/ProviderList;->fromSecurityProperties()Lsun/security/jca/ProviderList;

    move-result-object v0

    sput-object v0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 71
    sget-object v0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->size()I

    move-result v0

    .line 72
    .local v0, "numConfiguredProviders":I
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v1

    sput-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 73
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->size()I

    move-result v1

    if-ne v0, v1, :cond_65

    .line 78
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    const-string v2, "BC"

    invoke-virtual {v1, v2}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    sput-object v1, Lsun/security/jca/Providers;->SYSTEM_BOUNCY_CASTLE_PROVIDER:Ljava/security/Provider;

    .line 107
    .end local v0    # "numConfiguredProviders":I
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.org.conscrypt.OpenSSLProvider"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "com.android.org.conscrypt.JSSEProvider"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "sun.security.provider.VerificationProvider"

    aput-object v4, v0, v1

    sput-object v0, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    .line 302
    const/16 v0, 0x1b

    sput v0, Lsun/security/jca/Providers;->maximumAllowableApiLevelForBcDeprecation:I

    .line 358
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lsun/security/jca/Providers;->DEPRECATED_ALGORITHMS:Ljava/util/Set;

    .line 360
    sget-object v0, Lsun/security/jca/Providers;->DEPRECATED_ALGORITHMS:Ljava/util/Set;

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "KEYFACTORY.RSA"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 363
    return-void

    .line 74
    .restart local v0    # "numConfiguredProviders":I
    :cond_65
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unable to configure default providers"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static declared-synchronized blacklist beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;
    .registers 5
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    const-class v0, Lsun/security/jca/Providers;

    monitor-enter v0

    .line 259
    :try_start_3
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1f

    .line 260
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadLocal providers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 262
    :cond_1f
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/jca/ProviderList;

    .line 263
    .local v1, "oldList":Lsun/security/jca/ProviderList;
    sget v2, Lsun/security/jca/Providers;->threadListsUsed:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lsun/security/jca/Providers;->threadListsUsed:I

    .line 264
    sget-object v2, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_34

    .line 265
    monitor-exit v0

    return-object v1

    .line 258
    .end local v1    # "oldList":Lsun/security/jca/ProviderList;
    .end local p0    # "list":Lsun/security/jca/ProviderList;
    :catchall_34
    move-exception p0

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method private static blacklist changeThreadProviderList(Lsun/security/jca/ProviderList;)V
    .registers 2
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .line 239
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method private static blacklist checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lsun/security/jca/Providers;->DEPRECATED_ALGORITHMS:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 375
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    sget v2, Lsun/security/jca/Providers;->maximumAllowableApiLevelForBcDeprecation:I

    if-gt v1, v2, :cond_6c

    .line 378
    const-string v1, " ******** DEPRECATED FUNCTIONALITY ********"

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " * The implementation of the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " algorithm from"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 380
    const-string v1, " * the BC provider is deprecated in this version of Android."

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 381
    const-string v1, " * It will be removed in a future version of Android and your"

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 382
    const-string v1, " * application will no longer be able to request it.  Please see"

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 383
    const-string v1, " * https://android-developers.googleblog.com/2018/03/cryptography-changes-in-android-p.html"

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 384
    const-string v1, " * for more details."

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    goto :goto_8b

    .line 386
    :cond_6c
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The BC provider no longer provides an implementation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".  Please see https://android-developers.googleblog.com/2018/03/cryptography-changes-in-android-p.html for more details."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_8b
    :goto_8b
    return-void
.end method

.method public static declared-synchronized blacklist checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-class v0, Lsun/security/jca/Providers;

    monitor-enter v0

    .line 334
    :try_start_3
    const-string v1, "BC"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 335
    invoke-virtual {v1, p0}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    sget-object v2, Lsun/security/jca/Providers;->SYSTEM_BOUNCY_CASTLE_PROVIDER:Ljava/security/Provider;

    if-ne v1, v2, :cond_18

    .line 336
    invoke-static {p1, p2}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 338
    :cond_18
    monitor-exit v0

    return-void

    .line 333
    .end local p0    # "provider":Ljava/lang/String;
    .end local p1    # "service":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public static declared-synchronized blacklist checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-class v0, Lsun/security/jca/Providers;

    monitor-enter v0

    .line 351
    :try_start_3
    sget-object v1, Lsun/security/jca/Providers;->SYSTEM_BOUNCY_CASTLE_PROVIDER:Ljava/security/Provider;

    if-ne p0, v1, :cond_a

    .line 352
    invoke-static {p1, p2}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 354
    :cond_a
    monitor-exit v0

    return-void

    .line 350
    .end local p0    # "provider":Ljava/security/Provider;
    .end local p1    # "service":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    :catchall_c
    move-exception p0

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static declared-synchronized blacklist endThreadProviderList(Lsun/security/jca/ProviderList;)V
    .registers 5
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    const-class v0, Lsun/security/jca/Providers;

    monitor-enter v0

    .line 269
    if-nez p0, :cond_16

    .line 270
    :try_start_5
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_10

    .line 271
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    const-string v2, "Disabling ThreadLocal providers"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 273
    :cond_10
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_37

    .line 275
    :cond_16
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_32

    .line 276
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring previous ThreadLocal providers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 279
    :cond_32
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 281
    :goto_37
    sget v1, Lsun/security/jca/Providers;->threadListsUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lsun/security/jca/Providers;->threadListsUsed:I
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3f

    .line 282
    monitor-exit v0

    return-void

    .line 268
    .end local p0    # "list":Lsun/security/jca/ProviderList;
    :catchall_3f
    move-exception p0

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public static blacklist getFullProviderList()Lsun/security/jca/ProviderList;
    .registers 3

    .line 198
    const-class v0, Lsun/security/jca/Providers;

    monitor-enter v0

    .line 199
    :try_start_3
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 200
    .local v1, "list":Lsun/security/jca/ProviderList;
    if-eqz v1, :cond_15

    .line 201
    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v2

    .line 202
    .local v2, "newList":Lsun/security/jca/ProviderList;
    if-eq v2, v1, :cond_13

    .line 203
    invoke-static {v2}, Lsun/security/jca/Providers;->changeThreadProviderList(Lsun/security/jca/ProviderList;)V

    .line 204
    move-object v1, v2

    .line 206
    :cond_13
    monitor-exit v0

    return-object v1

    .line 208
    .end local v2    # "newList":Lsun/security/jca/ProviderList;
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_25

    .line 209
    invoke-static {}, Lsun/security/jca/Providers;->getSystemProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 210
    .end local v1    # "list":Lsun/security/jca/ProviderList;
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 211
    .local v1, "newList":Lsun/security/jca/ProviderList;
    if-eq v1, v0, :cond_24

    .line 212
    invoke-static {v1}, Lsun/security/jca/Providers;->setSystemProviderList(Lsun/security/jca/ProviderList;)V

    .line 213
    move-object v0, v1

    .line 215
    :cond_24
    return-object v0

    .line 208
    .end local v0    # "list":Lsun/security/jca/ProviderList;
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public static blacklist getMaximumAllowableApiLevelForBcDeprecation()I
    .registers 1

    .line 320
    sget v0, Lsun/security/jca/Providers;->maximumAllowableApiLevelForBcDeprecation:I

    return v0
.end method

.method public static greylist getProviderList()Lsun/security/jca/ProviderList;
    .registers 1

    .line 172
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 173
    .local v0, "list":Lsun/security/jca/ProviderList;
    if-nez v0, :cond_a

    .line 174
    invoke-static {}, Lsun/security/jca/Providers;->getSystemProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 176
    :cond_a
    return-object v0
.end method

.method public static blacklist getSunProvider()Ljava/security/Provider;
    .registers 4

    .line 128
    :try_start_0
    sget-object v0, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 130
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_10
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    :try_start_11
    const-string v1, "sun.security.provider.VerificationProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 133
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_1e

    return-object v2

    .line 134
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1e
    move-exception v1

    .line 135
    .local v1, "ee":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Sun provider not found"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist getSystemProviderList()Lsun/security/jca/ProviderList;
    .registers 1

    .line 219
    sget-object v0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method public static blacklist getThreadProviderList()Lsun/security/jca/ProviderList;
    .registers 1

    .line 229
    sget v0, Lsun/security/jca/Providers;->threadListsUsed:I

    if-nez v0, :cond_6

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_6
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method public static blacklist setMaximumAllowableApiLevelForBcDeprecation(I)V
    .registers 1
    .param p0, "targetApiLevel"    # I

    .line 311
    sput p0, Lsun/security/jca/Providers;->maximumAllowableApiLevelForBcDeprecation:I

    .line 312
    return-void
.end method

.method public static blacklist setProviderList(Lsun/security/jca/ProviderList;)V
    .registers 2
    .param p0, "newList"    # Lsun/security/jca/ProviderList;

    .line 184
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    if-nez v0, :cond_a

    .line 185
    invoke-static {p0}, Lsun/security/jca/Providers;->setSystemProviderList(Lsun/security/jca/ProviderList;)V

    goto :goto_d

    .line 187
    :cond_a
    invoke-static {p0}, Lsun/security/jca/Providers;->changeThreadProviderList(Lsun/security/jca/ProviderList;)V

    .line 189
    :goto_d
    return-void
.end method

.method private static blacklist setSystemProviderList(Lsun/security/jca/ProviderList;)V
    .registers 1
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .line 223
    sput-object p0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 224
    return-void
.end method

.method public static greylist-max-r test-api startJarVerification()Ljava/lang/Object;
    .registers 3

    .line 149
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 150
    .local v0, "currentList":Lsun/security/jca/ProviderList;
    sget-object v1, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/security/jca/ProviderList;->getJarList([Ljava/lang/String;)Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 152
    .local v1, "jarList":Lsun/security/jca/ProviderList;
    invoke-static {v1}, Lsun/security/jca/Providers;->beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-r test-api stopJarVerification(Ljava/lang/Object;)V
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 164
    move-object v0, p0

    check-cast v0, Lsun/security/jca/ProviderList;

    invoke-static {v0}, Lsun/security/jca/Providers;->endThreadProviderList(Lsun/security/jca/ProviderList;)V

    .line 165
    return-void
.end method
