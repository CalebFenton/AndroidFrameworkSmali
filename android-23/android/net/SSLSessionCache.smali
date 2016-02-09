.class public final Landroid/net/SSLSessionCache;
.super Ljava/lang/Object;
.source "SSLSessionCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SSLSessionCache"


# instance fields
.field final mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    const-string/jumbo v3, "sslcache"

    #@6
    const/4 v4, 0x0

    #@7
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    #@a
    move-result-object v1

    #@b
    .line 98
    .local v1, "dir":Ljava/io/File;
    const/4 v0, 0x0

    #@c
    .line 100
    .local v0, "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    :try_start_0
    invoke-static {v1}, Lcom/android/org/conscrypt/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v0

    #@10
    .line 104
    .end local v0    # "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    :goto_0
    iput-object v0, p0, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@12
    .line 96
    return-void

    #@13
    .line 101
    .restart local v0    # "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    :catch_0
    move-exception v2

    #@14
    .line 102
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "SSLSessionCache"

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Unable to create SSL session cache in "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    invoke-static {p1}, Lcom/android/org/conscrypt/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@9
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cache"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    check-cast p1, Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@5
    .end local p1    # "cache":Ljava/lang/Object;
    iput-object p1, p0, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@7
    .line 74
    return-void
.end method

.method public static install(Landroid/net/SSLSessionCache;Ljavax/net/ssl/SSLContext;)V
    .locals 4
    .param p0, "cache"    # Landroid/net/SSLSessionCache;
    .param p1, "context"    # Ljavax/net/ssl/SSLContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 58
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    #@4
    move-result-object v0

    #@5
    .line 59
    .local v0, "clientContext":Ljavax/net/ssl/SSLSessionContext;
    instance-of v2, v0, Lcom/android/org/conscrypt/ClientSessionContext;

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 60
    check-cast v0, Lcom/android/org/conscrypt/ClientSessionContext;

    #@b
    .line 61
    .end local v0    # "clientContext":Ljavax/net/ssl/SSLSessionContext;
    if-nez p0, :cond_0

    #@d
    .line 60
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    #@10
    .line 57
    return-void

    #@11
    .line 61
    :cond_0
    iget-object v1, p0, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    #@13
    goto :goto_0

    #@14
    .line 63
    .restart local v0    # "clientContext":Ljavax/net/ssl/SSLSessionContext;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Incompatible SSLContext: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1
.end method
