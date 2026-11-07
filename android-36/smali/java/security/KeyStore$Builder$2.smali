.class Ljava/security/KeyStore$Builder$2;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/KeyStore$Builder;->newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist action:Ljava/security/PrivilegedExceptionAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/security/PrivilegedExceptionAction<",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist getCalled:Z

.field private blacklist oldException:Ljava/io/IOException;

.field final synthetic blacklist val$context:Ljava/security/AccessControlContext;

.field final synthetic blacklist val$protection:Ljava/security/KeyStore$ProtectionParameter;

.field final synthetic blacklist val$provider:Ljava/security/Provider;

.field final synthetic blacklist val$type:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputgetCalled(Ljava/security/KeyStore$Builder$2;Z)V
    .registers 2

    iput-boolean p1, p0, Ljava/security/KeyStore$Builder$2;->getCalled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputoldException(Ljava/security/KeyStore$Builder$2;Ljava/io/IOException;)V
    .registers 2

    iput-object p1, p0, Ljava/security/KeyStore$Builder$2;->oldException:Ljava/io/IOException;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/AccessControlContext;)V
    .registers 5

    .line 2212
    iput-object p1, p0, Ljava/security/KeyStore$Builder$2;->val$provider:Ljava/security/Provider;

    iput-object p2, p0, Ljava/security/KeyStore$Builder$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    iput-object p4, p0, Ljava/security/KeyStore$Builder$2;->val$context:Ljava/security/AccessControlContext;

    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    .line 2216
    new-instance p1, Ljava/security/KeyStore$Builder$2$1;

    invoke-direct {p1, p0}, Ljava/security/KeyStore$Builder$2$1;-><init>(Ljava/security/KeyStore$Builder$2;)V

    iput-object p1, p0, Ljava/security/KeyStore$Builder$2;->action:Ljava/security/PrivilegedExceptionAction;

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api getKeyStore()Ljava/security/KeyStore;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    monitor-enter p0

    .line 2257
    :try_start_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$2;->oldException:Ljava/io/IOException;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    if-nez v0, :cond_1e

    .line 2263
    :try_start_5
    iget-object v0, p0, Ljava/security/KeyStore$Builder$2;->action:Ljava/security/PrivilegedExceptionAction;

    iget-object v1, p0, Ljava/security/KeyStore$Builder$2;->val$context:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore;
    :try_end_f
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_f} :catch_11
    .catchall {:try_start_5 .. :try_end_f} :catchall_28

    monitor-exit p0

    return-object v0

    .line 2264
    .end local p0    # "this":Ljava/security/KeyStore$Builder$2;
    :catch_11
    move-exception v0

    .line 2265
    .local v0, "e":Ljava/security/PrivilegedActionException;
    :try_start_12
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 2266
    .local v1, "cause":Ljava/lang/Throwable;
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "KeyStore instantiation failed"

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2258
    .end local v0    # "e":Ljava/security/PrivilegedActionException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_1e
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Previous KeyStore instantiation failed"

    iget-object v2, p0, Ljava/security/KeyStore$Builder$2;->oldException:Ljava/io/IOException;

    invoke-direct {v0, v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2256
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public whitelist test-api getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 2273
    if-eqz p1, :cond_11

    .line 2276
    iget-boolean v0, p0, Ljava/security/KeyStore$Builder$2;->getCalled:Z

    if-eqz v0, :cond_9

    .line 2280
    iget-object v0, p0, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0

    .line 2277
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKeyStore() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2274
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
