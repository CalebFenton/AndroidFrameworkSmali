.class Lsun/security/provider/certpath/CertStoreHelper$1;
.super Ljava/lang/Object;
.source "CertStoreHelper.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/provider/certpath/CertStoreHelper;->getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Lsun/security/provider/certpath/CertStoreHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$cl:Ljava/lang/String;

.field final synthetic blacklist val$type:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$cl:Ljava/lang/String;

    iput-object p2, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lsun/security/provider/certpath/CertStoreHelper$1;->run()Lsun/security/provider/certpath/CertStoreHelper;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Lsun/security/provider/certpath/CertStoreHelper;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$cl:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/CertStoreHelper;

    .line 85
    .local v1, "csh":Lsun/security/provider/certpath/CertStoreHelper;
    invoke-static {}, Lsun/security/provider/certpath/CertStoreHelper;->-$$Nest$sfgetcache()Lsun/security/util/Cache;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$type:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_18} :catch_19

    .line 86
    return-object v1

    .line 87
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "csh":Lsun/security/provider/certpath/CertStoreHelper;
    :catch_19
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
