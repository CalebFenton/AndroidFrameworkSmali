.class final Lsun/security/ssl/Krb5Helper$1;
.super Ljava/lang/Object;
.source "Krb5Helper.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/Krb5Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lsun/security/ssl/Krb5Proxy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 50
    invoke-virtual {p0}, Lsun/security/ssl/Krb5Helper$1;->run()Lsun/security/ssl/Krb5Proxy;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Lsun/security/ssl/Krb5Proxy;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 52
    :try_start_0
    const-string/jumbo v4, "sun.security.ssl.krb5.Krb5ProxyImpl"

    #@4
    const/4 v5, 0x1

    #@5
    const/4 v6, 0x0

    #@6
    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    .line 53
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@d
    move-result-object v4

    #@e
    check-cast v4, Lsun/security/ssl/Krb5Proxy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    return-object v4

    #@11
    .line 58
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    #@12
    .line 59
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@17
    throw v4

    #@18
    .line 56
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    #@19
    .line 57
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/AssertionError;

    #@1b
    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1e
    throw v4

    #@1f
    .line 54
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    #@20
    .line 55
    .local v1, "cnf":Ljava/lang/ClassNotFoundException;
    return-object v7
.end method
