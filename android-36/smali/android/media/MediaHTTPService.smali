.class public Landroid/media/MediaHTTPService;
.super Landroid/media/IMediaHTTPService$Stub;
.source "MediaHTTPService.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaHTTPService"


# instance fields
.field private blacklist mCookieStoreInitialized:Z

.field private final blacklist mCookieStoreInitializedLock:Ljava/lang/Object;

.field private greylist-max-o mCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-direct {p0}, Landroid/media/IMediaHTTPService$Stub;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaHTTPService;->mCookieStoreInitializedLock:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaHTTPService;->mCookieStoreInitialized:Z

    .line 41
    iput-object p1, p0, Landroid/media/MediaHTTPService;->mCookies:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaHTTPService("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): Cookies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaHTTPService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method static greylist createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Landroid/os/IBinder;"
        }
    .end annotation

    .line 100
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_22

    .line 102
    :cond_11
    const-string v0, "widevine://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 103
    const-string v0, "MediaHTTPService"

    const-string v1, "Widevine classic is no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_20
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_22
    :goto_22
    new-instance v0, Landroid/media/MediaHTTPService;

    invoke-direct {v0, p1}, Landroid/media/MediaHTTPService;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/media/MediaHTTPService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o makeHTTPConnection()Landroid/media/IMediaHTTPConnection;
    .registers 11

    .line 47
    iget-object v0, p0, Landroid/media/MediaHTTPService;->mCookieStoreInitializedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    iget-boolean v1, p0, Landroid/media/MediaHTTPService;->mCookieStoreInitialized:Z

    if-nez v1, :cond_c6

    .line 50
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    .line 51
    .local v1, "cookieHandler":Ljava/net/CookieHandler;
    if-nez v1, :cond_2f

    .line 52
    new-instance v2, Ljava/net/CookieManager;

    invoke-direct {v2}, Ljava/net/CookieManager;-><init>()V

    move-object v1, v2

    .line 53
    invoke-static {v1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 54
    const-string v2, "MediaHTTPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeHTTPConnection: CookieManager created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 56
    :cond_2f
    const-string v2, "MediaHTTPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeHTTPConnection: CookieHandler ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_4d
    iget-object v2, p0, Landroid/media/MediaHTTPService;->mCookies:Ljava/util/List;

    if-eqz v2, :cond_95

    .line 61
    instance-of v2, v1, Ljava/net/CookieManager;

    if-eqz v2, :cond_8e

    .line 62
    move-object v2, v1

    check-cast v2, Ljava/net/CookieManager;

    .line 63
    .local v2, "cookieManager":Ljava/net/CookieManager;
    invoke-virtual {v2}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v3

    .line 64
    .local v3, "store":Ljava/net/CookieStore;
    iget-object v4, p0, Landroid/media/MediaHTTPService;->mCookies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/HttpCookie;
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_cd

    .line 66
    .local v5, "cookie":Ljava/net/HttpCookie;
    const/4 v6, 0x0

    :try_start_6f
    invoke-interface {v3, v6, v5}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73
    .catchall {:try_start_6f .. :try_end_72} :catchall_cd

    .line 69
    goto :goto_8c

    .line 67
    :catch_73
    move-exception v6

    .line 68
    .local v6, "e":Ljava/lang/Exception;
    :try_start_74
    const-string v7, "MediaHTTPService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeHTTPConnection: CookieStore.add"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v5    # "cookie":Ljava/net/HttpCookie;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_8c
    goto :goto_62

    .line 74
    .end local v2    # "cookieManager":Ljava/net/CookieManager;
    .end local v3    # "store":Ljava/net/CookieStore;
    :cond_8d
    goto :goto_95

    .line 75
    :cond_8e
    const-string v2, "MediaHTTPService"

    const-string v3, "makeHTTPConnection: The installed CookieHandler is not a CookieManager. Can\u2019t add the provided cookies to the cookie store."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_95
    :goto_95
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaHTTPService;->mCookieStoreInitialized:Z

    .line 83
    const-string v2, "MediaHTTPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeHTTPConnection("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): cookieHandler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Cookies: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaHTTPService;->mCookies:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v1    # "cookieHandler":Ljava/net/CookieHandler;
    :cond_c6
    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_74 .. :try_end_c7} :catchall_cd

    .line 88
    new-instance v0, Landroid/media/MediaHTTPConnection;

    invoke-direct {v0}, Landroid/media/MediaHTTPConnection;-><init>()V

    return-object v0

    .line 86
    :catchall_cd
    move-exception v1

    :try_start_ce
    monitor-exit v0
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw v1
.end method
