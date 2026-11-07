.class public abstract Landroid/net/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/HttpEngine$Builder;
    }
.end annotation


# static fields
.field private static blacklist sPreloaded:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/http/HttpEngine;->sPreloaded:Z

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist builder(Landroid/content/Context;)Landroid/net/http/HttpEngine$Builder;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    new-instance v0, Landroid/net/http/HttpEngine$Builder;

    invoke-direct {v0, p0}, Landroid/net/http/HttpEngine$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static whitelist getVersionString()Ljava/lang/String;
    .registers 1

    .line 440
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/ApiVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist preload()V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 64
    sget-boolean v0, Landroid/net/http/HttpEngine;->sPreloaded:Z

    if-nez v0, :cond_36

    .line 68
    invoke-static {}, Landroid/net/http/Flags;->preloadHttpengineSharedLibrary()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 69
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;->preload()V

    .line 73
    :cond_d
    const/4 v0, 0x1

    :try_start_e
    invoke-static {}, Landroid/net/http/Flags;->preloadHttpengineJavaImplClasses()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 74
    sget-object v1, Landroid/net/http/HttpEngineJavaClasses;->ALL_CLASSES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 80
    .local v4, "clazz":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_20} :catch_2a
    .catchall {:try_start_e .. :try_end_20} :catchall_28

    .line 74
    nop

    .end local v4    # "clazz":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 86
    :cond_24
    sput-boolean v0, Landroid/net/http/HttpEngine;->sPreloaded:Z

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :catchall_28
    move-exception v1

    goto :goto_33

    .line 83
    :catch_2a
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to preload class"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_28

    .line 86
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_33
    sput-boolean v0, Landroid/net/http/HttpEngine;->sPreloaded:Z

    .line 87
    throw v1

    .line 65
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HttpEngine already preloaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist bindToNetwork(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 461
    return-void
.end method

.method public abstract whitelist createUrlStreamHandlerFactory()Ljava/net/URLStreamHandlerFactory;
.end method

.method public abstract whitelist newBidirectionalStreamBuilder(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/BidirectionalStream$Callback;)Landroid/net/http/BidirectionalStream$Builder;
.end method

.method public abstract whitelist newUrlRequestBuilder(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/http/UrlRequest$Callback;)Landroid/net/http/UrlRequest$Builder;
.end method

.method public abstract whitelist openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist shutdown()V
.end method
