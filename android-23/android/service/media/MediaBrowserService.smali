.class public abstract Landroid/service/media/MediaBrowserService;
.super Landroid/app/Service;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/media/MediaBrowserService$ConnectionRecord;,
        Landroid/service/media/MediaBrowserService$Result;,
        Landroid/service/media/MediaBrowserService$ServiceBinder;,
        Landroid/service/media/MediaBrowserService$BrowserRoot;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field private static final TAG:Ljava/lang/String; = "MediaBrowserService"


# instance fields
.field private mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field private final mConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/media/MediaBrowserService$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mSession:Landroid/media/session/MediaSession$Token;


# direct methods
.method static synthetic -get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/service/media/MediaBrowserService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->isValidPackage(Ljava/lang/String;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->performLoadItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mConnections:Landroid/util/ArrayMap;

    #@a
    .line 86
    new-instance v0, Landroid/os/Handler;

    #@c
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@f
    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    #@11
    .line 68
    return-void
.end method

.method private addSubscription(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@0
    .prologue
    .line 456
    iget-object v0, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5
    .line 459
    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    #@8
    .line 454
    return-void
.end method

.method private isValidPackage(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 437
    if-nez p1, :cond_0

    #@3
    .line 438
    return v5

    #@4
    .line 440
    :cond_0
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v3

    #@8
    .line 441
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 442
    .local v2, "packages":[Ljava/lang/String;
    array-length v0, v2

    #@d
    .line 443
    .local v0, "N":I
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@10
    .line 444
    aget-object v4, v2, v1

    #@12
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 445
    const/4 v4, 0x1

    #@19
    return v4

    #@1a
    .line 443
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 448
    :cond_2
    return v5
.end method

.method private performLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V
    .locals 6
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;

    #@0
    .prologue
    .line 469
    new-instance v0, Landroid/service/media/MediaBrowserService$3;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p0

    #@4
    move-object v3, p1

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/service/media/MediaBrowserService$3;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    #@a
    .line 495
    .local v0, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    invoke-virtual {p0, p1, v0}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    #@d
    .line 497
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 498
    new-instance v1, Ljava/lang/IllegalStateException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "onLoadChildren must call detach() or sendResult() before returning for package="

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 499
    iget-object v3, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    #@23
    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 499
    const-string/jumbo v3, " id="

    #@2a
    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 467
    :cond_0
    return-void
.end method

.method private performLoadItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 505
    new-instance v0, Landroid/service/media/MediaBrowserService$4;

    #@2
    invoke-direct {v0, p0, p0, p1, p2}, Landroid/service/media/MediaBrowserService$4;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Landroid/os/ResultReceiver;)V

    #@5
    .line 514
    .local v0, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-virtual {p0, p1, v0}, Landroid/service/media/MediaBrowserService;->onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    #@8
    .line 516
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 517
    new-instance v1, Ljava/lang/IllegalStateException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "onLoadItem must call detach() or sendResult() before returning for id="

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 503
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 304
    return-void
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    #@0
    .prologue
    .line 405
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    #@2
    return-object v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 417
    if-nez p1, :cond_0

    #@2
    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "parentId cannot be null in notifyChildrenChanged"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 420
    :cond_0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    #@d
    new-instance v1, Landroid/service/media/MediaBrowserService$2;

    #@f
    invoke-direct {v1, p0, p1}, Landroid/service/media/MediaBrowserService$2;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;)V

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@15
    .line 416
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 297
    const-string/jumbo v0, "android.media.browse.MediaBrowserService"

    #@3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 298
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@f
    return-object v0

    #@10
    .line 300
    :cond_0
    const/4 v0, 0x0

    #@11
    return-object v0
.end method

.method public onCreate()V
    .locals 2

    #@0
    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@3
    .line 292
    new-instance v0, Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, v1}, Landroid/service/media/MediaBrowserService$ServiceBinder;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ServiceBinder;)V

    #@9
    iput-object v0, p0, Landroid/service/media/MediaBrowserService;->mBinder:Landroid/service/media/MediaBrowserService$ServiceBinder;

    #@b
    .line 290
    return-void
.end method

.method public abstract onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 364
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p2, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    #@4
    .line 363
    return-void
.end method

.method public setSessionToken(Landroid/media/session/MediaSession$Token;)V
    .locals 2
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    #@0
    .prologue
    .line 376
    if-nez p1, :cond_0

    #@2
    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Session token may not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 379
    :cond_0
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 380
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "The session token has already been set."

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 382
    :cond_1
    iput-object p1, p0, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    #@1a
    .line 383
    iget-object v0, p0, Landroid/service/media/MediaBrowserService;->mHandler:Landroid/os/Handler;

    #@1c
    new-instance v1, Landroid/service/media/MediaBrowserService$1;

    #@1e
    invoke-direct {v1, p0, p1}, Landroid/service/media/MediaBrowserService$1;-><init>(Landroid/service/media/MediaBrowserService;Landroid/media/session/MediaSession$Token;)V

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@24
    .line 375
    return-void
.end method
