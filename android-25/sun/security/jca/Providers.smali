.class public Lsun/security/jca/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# static fields
.field private static final BACKUP_PROVIDER_CLASSNAME:Ljava/lang/String; = "sun.security.provider.VerificationProvider"

.field private static final jarVerificationProviders:[Ljava/lang/String;

.field private static volatile providerList:Lsun/security/jca/ProviderList;

.field private static final threadLists:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/security/jca/ProviderList;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile threadListsUsed:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 44
    new-instance v1, Ljava/lang/InheritableThreadLocal;

    #@2
    invoke-direct {v1}, Ljava/lang/InheritableThreadLocal;-><init>()V

    #@5
    .line 43
    sput-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    #@7
    .line 57
    sget-object v1, Lsun/security/jca/ProviderList;->EMPTY:Lsun/security/jca/ProviderList;

    #@9
    sput-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    #@b
    .line 58
    invoke-static {}, Lsun/security/jca/ProviderList;->fromSecurityProperties()Lsun/security/jca/ProviderList;

    #@e
    move-result-object v1

    #@f
    sput-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    #@11
    .line 63
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    #@13
    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->size()I

    #@16
    move-result v0

    #@17
    .line 64
    .local v0, "numConfiguredProviders":I
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    #@19
    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    #@1c
    move-result-object v1

    #@1d
    sput-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    #@1f
    .line 65
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    #@21
    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->size()I

    #@24
    move-result v1

    #@25
    if-eq v0, v1, :cond_0

    #@27
    .line 66
    new-instance v1, Ljava/lang/AssertionError;

    #@29
    const-string/jumbo v2, "Unable to configure default providers"

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2f
    throw v1

    #@30
    .line 96
    :cond_0
    const/4 v1, 0x4

    #@31
    new-array v1, v1, [Ljava/lang/String;

    #@33
    .line 103
    const-string/jumbo v2, "com.android.org.conscrypt.OpenSSLProvider"

    #@36
    const/4 v3, 0x0

    #@37
    aput-object v2, v1, v3

    #@39
    .line 104
    const-string/jumbo v2, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    #@3c
    const/4 v3, 0x1

    #@3d
    aput-object v2, v1, v3

    #@3f
    .line 105
    const-string/jumbo v2, "com.android.org.conscrypt.JSSEProvider"

    #@42
    const/4 v3, 0x2

    #@43
    aput-object v2, v1, v3

    #@45
    .line 107
    const-string/jumbo v2, "sun.security.provider.VerificationProvider"

    #@48
    const/4 v3, 0x3

    #@49
    aput-object v2, v1, v3

    #@4b
    .line 96
    sput-object v1, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    #@4d
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;
    .locals 5
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    #@0
    .prologue
    const-class v2, Lsun/security/jca/Providers;

    #@2
    monitor-enter v2

    #@3
    .line 240
    :try_start_0
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 241
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "ThreadLocal providers: "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@20
    .line 243
    :cond_0
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    #@22
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lsun/security/jca/ProviderList;

    #@28
    .line 244
    .local v0, "oldList":Lsun/security/jca/ProviderList;
    sget v1, Lsun/security/jca/Providers;->threadListsUsed:I

    #@2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    sput v1, Lsun/security/jca/Providers;->threadListsUsed:I

    #@2e
    .line 245
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    #@30
    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    monitor-exit v2

    #@34
    .line 246
    return-object v0

    #@35
    .end local v0    # "oldList":Lsun/security/jca/ProviderList;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method private static changeThreadProviderList(Lsun/security/jca/ProviderList;)V
    .locals 1
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    #@0
    .prologue
    .line 220
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@5
    .line 219
    return-void
.end method

.method public static declared-synchronized endThreadProviderList(Lsun/security/jca/ProviderList;)V
    .locals 4
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    #@0
    .prologue
    const-class v1, Lsun/security/jca/Providers;

    #@2
    monitor-enter v1

    #@3
    .line 250
    if-nez p0, :cond_1

    #@5
    .line 251
    :try_start_0
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 252
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    #@b
    const-string/jumbo v2, "Disabling ThreadLocal providers"

    #@e
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@11
    .line 254
    :cond_0
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    #@13
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    #@16
    .line 262
    :goto_0
    sget v0, Lsun/security/jca/Providers;->threadListsUsed:I

    #@18
    add-int/lit8 v0, v0, -0x1

    #@1a
    sput v0, Lsun/security/jca/Providers;->threadListsUsed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 249
    return-void

    #@1e
    .line 256
    :cond_1
    :try_start_1
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 257
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    #@24
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "Restoring previous ThreadLocal providers: "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 257
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3b
    .line 260
    :cond_2
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    #@3d
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    goto :goto_0

    #@41
    :catchall_0
    move-exception v0

    #@42
    monitor-exit v1

    #@43
    throw v0
.end method

.method public static getFullProviderList()Lsun/security/jca/ProviderList;
    .locals 4

    #@0
    .prologue
    .line 179
    const-class v3, Lsun/security/jca/Providers;

    #@2
    monitor-enter v3

    #@3
    .line 180
    :try_start_0
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    #@6
    move-result-object v0

    #@7
    .line 181
    .local v0, "list":Lsun/security/jca/ProviderList;
    if-eqz v0, :cond_1

    #@9
    .line 182
    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    #@c
    move-result-object v1

    #@d
    .line 183
    .local v1, "newList":Lsun/security/jca/ProviderList;
    if-eq v1, v0, :cond_0

    #@f
    .line 184
    invoke-static {v1}, Lsun/security/jca/Providers;->changeThreadProviderList(Lsun/security/jca/ProviderList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 185
    move-object v0, v1

    #@13
    :cond_0
    monitor-exit v3

    #@14
    .line 187
    return-object v0

    #@15
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    :cond_1
    monitor-exit v3

    #@16
    .line 190
    invoke-static {}, Lsun/security/jca/Providers;->getSystemProviderList()Lsun/security/jca/ProviderList;

    #@19
    move-result-object v0

    #@1a
    .line 191
    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    #@1d
    move-result-object v1

    #@1e
    .line 192
    .restart local v1    # "newList":Lsun/security/jca/ProviderList;
    if-eq v1, v0, :cond_2

    #@20
    .line 193
    invoke-static {v1}, Lsun/security/jca/Providers;->setSystemProviderList(Lsun/security/jca/ProviderList;)V

    #@23
    .line 194
    move-object v0, v1

    #@24
    .line 196
    :cond_2
    return-object v0

    #@25
    .line 179
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2
.end method

.method public static getProviderList()Lsun/security/jca/ProviderList;
    .locals 1

    #@0
    .prologue
    .line 153
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    #@3
    move-result-object v0

    #@4
    .line 154
    .local v0, "list":Lsun/security/jca/ProviderList;
    if-nez v0, :cond_0

    #@6
    .line 155
    invoke-static {}, Lsun/security/jca/Providers;->getSystemProviderList()Lsun/security/jca/ProviderList;

    #@9
    move-result-object v0

    #@a
    .line 157
    :cond_0
    return-object v0
.end method

.method public static getSunProvider()Ljava/security/Provider;
    .locals 5

    #@0
    .prologue
    .line 115
    :try_start_0
    sget-object v3, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    #@2
    const/4 v4, 0x0

    #@3
    aget-object v3, v3, v4

    #@5
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    .line 116
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    return-object v3

    #@10
    .line 117
    :catch_0
    move-exception v1

    #@11
    .line 119
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "sun.security.provider.VerificationProvider"

    #@14
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@17
    move-result-object v0

    #@18
    .line 120
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/security/Provider;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@1e
    return-object v3

    #@1f
    .line 121
    :catch_1
    move-exception v2

    #@20
    .line 122
    .local v2, "ee":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@22
    const-string/jumbo v4, "Sun provider not found"

    #@25
    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    throw v3
.end method

.method private static getSystemProviderList()Lsun/security/jca/ProviderList;
    .locals 1

    #@0
    .prologue
    .line 200
    sget-object v0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    #@2
    return-object v0
.end method

.method public static getThreadProviderList()Lsun/security/jca/ProviderList;
    .locals 1

    #@0
    .prologue
    .line 210
    sget v0, Lsun/security/jca/Providers;->threadListsUsed:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 211
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 213
    :cond_0
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    #@8
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lsun/security/jca/ProviderList;

    #@e
    return-object v0
.end method

.method public static setProviderList(Lsun/security/jca/ProviderList;)V
    .locals 1
    .param p0, "newList"    # Lsun/security/jca/ProviderList;

    #@0
    .prologue
    .line 165
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 166
    invoke-static {p0}, Lsun/security/jca/Providers;->setSystemProviderList(Lsun/security/jca/ProviderList;)V

    #@9
    .line 164
    :goto_0
    return-void

    #@a
    .line 168
    :cond_0
    invoke-static {p0}, Lsun/security/jca/Providers;->changeThreadProviderList(Lsun/security/jca/ProviderList;)V

    #@d
    goto :goto_0
.end method

.method private static setSystemProviderList(Lsun/security/jca/ProviderList;)V
    .locals 0
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    #@0
    .prologue
    .line 204
    sput-object p0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    #@2
    .line 203
    return-void
.end method

.method public static startJarVerification()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 134
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    #@3
    move-result-object v0

    #@4
    .line 135
    .local v0, "currentList":Lsun/security/jca/ProviderList;
    sget-object v2, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    #@6
    invoke-virtual {v0, v2}, Lsun/security/jca/ProviderList;->getJarList([Ljava/lang/String;)Lsun/security/jca/ProviderList;

    #@9
    move-result-object v1

    #@a
    .line 137
    .local v1, "jarList":Lsun/security/jca/ProviderList;
    invoke-static {v1}, Lsun/security/jca/Providers;->beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;

    #@d
    move-result-object v2

    #@e
    return-object v2
.end method

.method public static stopJarVerification(Ljava/lang/Object;)V
    .locals 0
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 145
    check-cast p0, Lsun/security/jca/ProviderList;

    #@2
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lsun/security/jca/Providers;->endThreadProviderList(Lsun/security/jca/ProviderList;)V

    #@5
    .line 143
    return-void
.end method
