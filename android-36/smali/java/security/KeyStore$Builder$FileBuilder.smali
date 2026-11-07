.class final Ljava/security/KeyStore$Builder$FileBuilder;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileBuilder"
.end annotation


# instance fields
.field private final greylist-max-o context:Ljava/security/AccessControlContext;

.field private final greylist-max-o file:Ljava/io/File;

.field private greylist-max-o keyProtection:Ljava/security/KeyStore$ProtectionParameter;

.field private greylist-max-o keyStore:Ljava/security/KeyStore;

.field private greylist-max-o oldException:Ljava/lang/Throwable;

.field private greylist-max-o protection:Ljava/security/KeyStore$ProtectionParameter;

.field private final greylist-max-o provider:Ljava/security/Provider;

.field private final greylist-max-o type:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetfile(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->file:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetprotection(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 1

    iget-object p0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetprovider(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;
    .registers 1

    iget-object p0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->provider:Ljava/security/Provider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettype(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->type:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputkeyProtection(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 2

    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/AccessControlContext;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "protection"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p5, "context"    # Ljava/security/AccessControlContext;

    .line 2072
    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    .line 2073
    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->type:Ljava/lang/String;

    .line 2074
    iput-object p2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->provider:Ljava/security/Provider;

    .line 2075
    iput-object p3, p0, Ljava/security/KeyStore$Builder$FileBuilder;->file:Ljava/io/File;

    .line 2076
    iput-object p4, p0, Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;

    .line 2077
    iput-object p5, p0, Ljava/security/KeyStore$Builder$FileBuilder;->context:Ljava/security/AccessControlContext;

    .line 2078
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api getKeyStore()Ljava/security/KeyStore;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 2082
    :try_start_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_9

    .line 2083
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3b

    monitor-exit p0

    return-object v0

    .line 2085
    .end local p0    # "this":Ljava/security/KeyStore$Builder$FileBuilder;
    :cond_9
    :try_start_9
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    if-nez v0, :cond_31

    .line 2090
    new-instance v0, Ljava/security/KeyStore$Builder$FileBuilder$1;

    invoke-direct {v0, p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;-><init>(Ljava/security/KeyStore$Builder$FileBuilder;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_3b

    .line 2157
    .local v0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<Ljava/security/KeyStore;>;"
    :try_start_12
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->context:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore;

    iput-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    .line 2158
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;
    :try_end_1e
    .catch Ljava/security/PrivilegedActionException; {:try_start_12 .. :try_end_1e} :catch_20
    .catchall {:try_start_12 .. :try_end_1e} :catchall_3b

    monitor-exit p0

    return-object v1

    .line 2159
    :catch_20
    move-exception v1

    .line 2160
    .local v1, "e":Ljava/security/PrivilegedActionException;
    :try_start_21
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    .line 2161
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "KeyStore instantiation failed"

    iget-object v4, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2086
    .end local v0    # "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<Ljava/security/KeyStore;>;"
    .end local v1    # "e":Ljava/security/PrivilegedActionException;
    :cond_31
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Previous KeyStore instantiation failed"

    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2081
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public declared-synchronized whitelist test-api getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    monitor-enter p0

    .line 2168
    if-eqz p1, :cond_15

    .line 2171
    :try_start_3
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_b

    .line 2175
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit p0

    return-object v0

    .line 2172
    .end local p0    # "this":Ljava/security/KeyStore$Builder$FileBuilder;
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKeyStore() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2167
    .end local p1    # "alias":Ljava/lang/String;
    :catchall_13
    move-exception p1

    goto :goto_1b

    .line 2169
    .restart local p1    # "alias":Ljava/lang/String;
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2167
    .end local p1    # "alias":Ljava/lang/String;
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_13

    throw p1
.end method
