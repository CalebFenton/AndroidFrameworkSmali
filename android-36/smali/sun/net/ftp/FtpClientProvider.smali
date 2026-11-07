.class public abstract Lsun/net/ftp/FtpClientProvider;
.super Ljava/lang/Object;
.source "FtpClientProvider.java"


# static fields
.field private static final blacklist lock:Ljava/lang/Object;

.field private static blacklist provider:Lsun/net/ftp/FtpClientProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetprovider()Lsun/net/ftp/FtpClientProvider;
    .registers 1

    sget-object v0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputprovider(Lsun/net/ftp/FtpClientProvider;)V
    .registers 1

    sput-object p0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloadProviderAsService()Z
    .registers 1

    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->loadProviderAsService()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadProviderFromProperty()Z
    .registers 1

    invoke-static {}, Lsun/net/ftp/FtpClientProvider;->loadProviderFromProperty()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/net/ftp/FtpClientProvider;->lock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 59
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 60
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "ftpClientProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 62
    :cond_13
    return-void
.end method

.method private static blacklist loadProviderAsService()Z
    .registers 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist loadProviderFromProperty()Z
    .registers 4

    .line 65
    const-string v0, "sun.net.ftpClientProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "cm":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 67
    const/4 v1, 0x0

    return v1

    .line 70
    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_c
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 71
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/net/ftp/FtpClientProvider;

    sput-object v3, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_18} :catch_19
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_18} :catch_19
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_18} :catch_19

    .line 72
    return v2

    .line 73
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_19
    move-exception v1

    .line 77
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist provider()Lsun/net/ftp/FtpClientProvider;
    .registers 2

    .line 137
    sget-object v0, Lsun/net/ftp/FtpClientProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    sget-object v1, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    if-eqz v1, :cond_b

    .line 139
    sget-object v1, Lsun/net/ftp/FtpClientProvider;->provider:Lsun/net/ftp/FtpClientProvider;

    monitor-exit v0

    return-object v1

    .line 141
    :cond_b
    new-instance v1, Lsun/net/ftp/FtpClientProvider$1;

    invoke-direct {v1}, Lsun/net/ftp/FtpClientProvider$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/ftp/FtpClientProvider;

    monitor-exit v0

    return-object v1

    .line 155
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method


# virtual methods
.method public abstract blacklist createFtpClient()Lsun/net/ftp/FtpClient;
.end method
