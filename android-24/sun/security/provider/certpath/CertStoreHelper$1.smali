.class final Lsun/security/provider/certpath/CertStoreHelper$1;
.super Ljava/lang/Object;
.source "CertStoreHelper.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/provider/certpath/CertStoreHelper;->getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Lsun/security/provider/certpath/CertStoreHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cl:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "val$cl"    # Ljava/lang/String;
    .param p2, "val$type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    iput-object p1, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$cl:Ljava/lang/String;

    #@2
    iput-object p2, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$type:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    invoke-virtual {p0}, Lsun/security/provider/certpath/CertStoreHelper$1;->run()Lsun/security/provider/certpath/CertStoreHelper;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Lsun/security/provider/certpath/CertStoreHelper;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    :try_start_0
    iget-object v3, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$cl:Ljava/lang/String;

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    .line 84
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lsun/security/provider/certpath/CertStoreHelper;

    #@e
    .line 85
    .local v1, "csh":Lsun/security/provider/certpath/CertStoreHelper;
    invoke-static {}, Lsun/security/provider/certpath/CertStoreHelper;->-get0()Lsun/security/util/Cache;

    #@11
    move-result-object v3

    #@12
    iget-object v4, p0, Lsun/security/provider/certpath/CertStoreHelper$1;->val$type:Ljava/lang/String;

    #@14
    invoke-virtual {v3, v4, v1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 86
    return-object v1

    #@18
    .line 88
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "csh":Lsun/security/provider/certpath/CertStoreHelper;
    :catch_0
    move-exception v2

    #@19
    .line 89
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/AssertionError;

    #@1b
    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1e
    throw v3
.end method
