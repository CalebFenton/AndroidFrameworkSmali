.class public final Landroid/net/SSLSessionCache;
.super Ljava/lang/Object;
.source "SSLSessionCache.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SSLSessionCache"


# instance fields
.field final greylist mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string/jumbo v0, "sslcache"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 100
    .local v0, "dir":Ljava/io/File;
    const/4 v1, 0x0

    .line 102
    .local v1, "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    :try_start_c
    invoke-static {v0}, Lcom/android/org/conscrypt/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;

    move-result-object v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_12

    move-object v1, v2

    .line 105
    goto :goto_2b

    .line 103
    :catch_12
    move-exception v2

    .line 104
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create SSL session cache in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SSLSessionCache"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2b
    iput-object v1, p0, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 107
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/android/org/conscrypt/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 90
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "cache"    # Ljava/lang/Object;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/SSLClientSessionCache;

    iput-object v0, p0, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 78
    return-void
.end method

.method public static greylist-max-o install(Landroid/net/SSLSessionCache;Ljavax/net/ssl/SSLContext;)V
    .registers 6
    .param p0, "cache"    # Landroid/net/SSLSessionCache;
    .param p1, "context"    # Ljavax/net/ssl/SSLContext;

    .line 60
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    .line 61
    .local v0, "clientContext":Ljavax/net/ssl/SSLSessionContext;
    instance-of v1, v0, Lcom/android/org/conscrypt/ClientSessionContext;

    if-eqz v1, :cond_15

    .line 62
    move-object v1, v0

    check-cast v1, Lcom/android/org/conscrypt/ClientSessionContext;

    .line 63
    if-nez p0, :cond_f

    const/4 v2, 0x0

    goto :goto_11

    :cond_f
    iget-object v2, p0, Landroid/net/SSLSessionCache;->mSessionCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 62
    :goto_11
    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    .line 67
    return-void

    .line 65
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incompatible SSLContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
