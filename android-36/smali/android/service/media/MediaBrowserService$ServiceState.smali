.class Landroid/service/media/MediaBrowserService$ServiceState;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceState"
.end annotation


# instance fields
.field private final blacklist mConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/service/media/MediaBrowserService$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSession:Landroid/media/session/MediaSession$Token;

.field final synthetic blacklist this$0:Landroid/service/media/MediaBrowserService;


# direct methods
.method public static synthetic blacklist $r8$lambda$q_IDS0UBWytZoZ88cflfXtgsATE(Landroid/service/media/MediaBrowserService$ServiceState;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/media/MediaBrowserService$ServiceState;->clearConnectionsOnHandler()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/media/session/MediaSession$Token;
    .registers 1

    iget-object p0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/media/session/MediaSession$Token;)V
    .registers 2

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/media/MediaBrowserService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 650
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceState;-><init>(Landroid/service/media/MediaBrowserService;)V

    return-void
.end method

.method private blacklist clearConnectionsOnHandler()V
    .registers 6

    .line 671
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 672
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/media/MediaBrowserService$ConnectionRecord;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 673
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 674
    .local v1, "record":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 676
    :try_start_19
    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onDisconnect()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 682
    goto :goto_32

    .line 677
    :catch_1f
    move-exception v2

    .line 678
    .local v2, "exception":Landroid/os/RemoteException;
    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 680
    const-string/jumbo v4, "onDisconnectRequest for %s failed"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 678
    const-string v4, "MediaBrowserService"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    .end local v1    # "record":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .end local v2    # "exception":Landroid/os/RemoteException;
    :goto_32
    goto :goto_a

    .line 684
    :cond_33
    return-void
.end method


# virtual methods
.method public blacklist addSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 726
    invoke-interface {p2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 728
    .local v0, "b":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 729
    .local v1, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    if-nez v1, :cond_27

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSubscription for callback that isn\'t registered id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaBrowserService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void

    .line 735
    :cond_27
    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 736
    .local v2, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-nez v2, :cond_37

    .line 737
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 739
    :cond_37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 740
    .local v4, "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v5, :cond_56

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 741
    invoke-static {p4, v5}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 742
    return-void

    .line 744
    .end local v4    # "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    :cond_56
    goto :goto_3b

    .line 745
    :cond_57
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-virtual {p0, p1, v1, p4}, Landroid/service/media/MediaBrowserService$ServiceState;->performLoadChildrenOnHandler(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V

    .line 749
    return-void
.end method

.method public blacklist connectOnHandler(Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "rootHints"    # Landroid/os/Bundle;
    .param p5, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 757
    invoke-interface {p5}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 759
    .local v8, "b":Landroid/os/IBinder;
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iget-object v9, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    new-instance v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService$BrowserRoot;)V

    invoke-static {v9, v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 772
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {v0, p1, p3, p4}, Landroid/service/media/MediaBrowserService;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;

    move-result-object v7

    .line 773
    .local v7, "root":Landroid/service/media/MediaBrowserService$BrowserRoot;
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 776
    const-string v9, "MediaBrowserService"

    if-nez v7, :cond_6e

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No root for client "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :try_start_52
    invoke-interface {p5}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnectFailed()V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_55} :catch_56

    .line 782
    :goto_55
    goto :goto_b4

    .line 780
    :catch_56
    move-exception v0

    .line 781
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_55

    .line 785
    :cond_6e
    :try_start_6e
    new-instance v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService$BrowserRoot;)V

    .line 794
    .local v0, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const/4 v3, 0x0

    invoke-interface {v8, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 796
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    if-eqz v3, :cond_97

    .line 797
    iget-object v3, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 798
    invoke-virtual {v3}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    iget-object v5, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v5}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 797
    invoke-interface {p5, v3, v4, v5}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_97} :catch_98

    .line 803
    .end local v0    # "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    :cond_97
    goto :goto_b4

    .line 800
    :catch_98
    move-exception v0

    .line 801
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_b4
    return-void
.end method

.method public blacklist getBinder()Landroid/service/media/MediaBrowserService$ServiceBinder;
    .registers 2

    .line 659
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmBinder(Landroid/service/media/MediaBrowserService;)Landroid/service/media/MediaBrowserService$ServiceBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isValidPackage(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "providedPackage"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 956
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 957
    return v0

    .line 959
    :cond_4
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 960
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_10
    if-ge v4, v3, :cond_1f

    aget-object v5, v2, v4

    .line 961
    .local v5, "packageForUid":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 962
    const/4 v0, 0x1

    return v0

    .line 960
    .end local v5    # "packageForUid":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 965
    :cond_1f
    return v0
.end method

.method public blacklist notifyChildrenChangeOnHandler(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 710
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 711
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 712
    .local v2, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    iget-object v3, v2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 713
    .local v3, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-eqz v3, :cond_4a

    .line 714
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 715
    .local v5, "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-static {p2, v6}, Landroid/media/browse/MediaBrowserUtils;->hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 716
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {p0, p1, v2, v6}, Landroid/service/media/MediaBrowserService$ServiceState;->performLoadChildrenOnHandler(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V

    .line 718
    .end local v5    # "callback":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    :cond_49
    goto :goto_2c

    .line 720
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .end local v3    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_4a
    goto :goto_a

    .line 721
    :cond_4b
    return-void
.end method

.method public blacklist notifySessionTokenInitializedOnHandler(Landroid/media/session/MediaSession$Token;)V
    .registers 7
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .line 696
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 697
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/media/MediaBrowserService$ConnectionRecord;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 698
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 700
    .local v1, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    :try_start_16
    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 701
    invoke-virtual {v3}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v4}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 700
    invoke-interface {v2, v3, p1, v4}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_27} :catch_28

    .line 705
    goto :goto_4c

    .line 702
    :catch_28
    move-exception v2

    .line 703
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is no longer valid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaBrowserService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 706
    .end local v1    # "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4c
    goto :goto_a

    .line 707
    :cond_4d
    return-void
.end method

.method public blacklist performLoadChildrenOnHandler(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 845
    new-instance v0, Landroid/service/media/MediaBrowserService$ServiceState$1;

    move-object v4, p1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .end local p1    # "parentId":Ljava/lang/String;
    .end local p2    # "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .end local p3    # "options":Landroid/os/Bundle;
    .local v2, "parentId":Ljava/lang/String;
    .local v3, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    .local v5, "options":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v5}, Landroid/service/media/MediaBrowserService$ServiceState$1;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 888
    .local v0, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    iget-object p1, v1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {p1, v3}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 889
    if-nez v5, :cond_17

    .line 890
    iget-object p1, v1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {p1, v2, v0}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_1c

    .line 892
    :cond_17
    iget-object p1, v1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {p1, v2, v0, v5}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V

    .line 894
    :goto_1c
    iget-object p1, v1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 896
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 904
    return-void

    .line 897
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v3, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist performLoadItemOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V
    .registers 12
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .line 910
    invoke-interface {p2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 911
    .local v0, "b":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 912
    .local v5, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    if-nez v5, :cond_28

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaItem for callback that isn\'t registered id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaBrowserService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return-void

    .line 917
    :cond_28
    new-instance v2, Landroid/service/media/MediaBrowserService$ServiceState$2;

    move-object v6, p1

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    .end local p1    # "itemId":Ljava/lang/String;
    .end local p3    # "receiver":Landroid/os/ResultReceiver;
    .local v4, "itemId":Ljava/lang/String;
    .local v7, "receiver":Landroid/os/ResultReceiver;
    invoke-direct/range {v2 .. v7}, Landroid/service/media/MediaBrowserService$ServiceState$2;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 943
    .local v2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object p1, v3, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {p1, v5}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 944
    iget-object p1, v3, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {p1, v4, v2}, Landroid/service/media/MediaBrowserService;->onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    .line 945
    iget-object p1, v3, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 947
    invoke-virtual {v2}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 952
    return-void

    .line 948
    :cond_48
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist postOnHandler(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 663
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 664
    return-void
.end method

.method public blacklist release()V
    .registers 3

    .line 667
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/media/MediaBrowserService$ServiceState$$ExternalSyntheticLambda0;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 668
    return-void
.end method

.method public blacklist removeConnectionRecordOnHandler(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 6
    .param p1, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    .line 687
    invoke-interface {p1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 689
    .local v0, "b":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 690
    .local v1, "old":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    if-eqz v1, :cond_18

    .line 691
    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 693
    :cond_18
    return-void
.end method

.method public blacklist removeSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)Z
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 810
    invoke-interface {p2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 812
    .local v0, "b":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 813
    .local v1, "connection":Landroid/service/media/MediaBrowserService$ConnectionRecord;
    const/4 v2, 0x1

    if-nez v1, :cond_29

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSubscription for callback that isn\'t registered id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaBrowserService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return v2

    .line 818
    :cond_29
    if-nez p3, :cond_36

    .line 819
    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    return v2

    .line 821
    :cond_36
    const/4 v2, 0x0

    .line 822
    .local v2, "removed":Z
    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 823
    .local v3, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-eqz v3, :cond_65

    .line 824
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 825
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_45
    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 826
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v5, :cond_45

    .line 827
    const/4 v2, 0x1

    .line 828
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_45

    .line 831
    :cond_5a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 832
    iget-object v5, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_65
    return v2
.end method
