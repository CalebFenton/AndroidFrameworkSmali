.class public Landroid/media/MediaRouter2$RoutingController;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoutingController"
.end annotation


# static fields
.field private static final blacklist CONTROLLER_STATE_ACTIVE:I = 0x1

.field private static final blacklist CONTROLLER_STATE_RELEASED:I = 0x3

.field private static final blacklist CONTROLLER_STATE_RELEASING:I = 0x2

.field private static final blacklist CONTROLLER_STATE_UNKNOWN:I


# instance fields
.field private final blacklist mControllerLock:Ljava/lang/Object;

.field private blacklist mSessionInfo:Landroid/media/RoutingSessionInfo;

.field private blacklist mState:I

.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/MediaRouter2;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1906
    iput-object p1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1893
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    .line 1907
    iput-object p2, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 1908
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 1909
    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/MediaRouter2;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1911
    iput-object p1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1893
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    .line 1912
    iput-object p2, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 1913
    iput p3, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 1914
    return-void
.end method

.method private static blacklist containsRouteInfoWithId(Ljava/util/List;Ljava/lang/String;)Z
    .registers 5
    .param p1, "routeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2340
    .local p0, "routeList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 2341
    .local v1, "info":Landroid/media/MediaRoute2Info;
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2342
    const/4 v0, 0x1

    return v0

    .line 2344
    .end local v1    # "info":Landroid/media/MediaRoute2Info;
    :cond_1c
    goto :goto_4

    .line 2345
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist deselectRoute(Landroid/media/MediaRoute2Info;)V
    .registers 7
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 2137
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2138
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v0

    const-string v1, "MR2"

    if-eqz v0, :cond_13

    .line 2139
    const-string v0, "deselectRoute: called on released controller. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    return-void

    .line 2143
    :cond_13
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    .line 2144
    .local v0, "selectedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/media/MediaRouter2$RoutingController;->containsRouteInfoWithId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 2145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring deselecting a route that is not selected. route="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    return-void

    .line 2149
    :cond_38
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v2

    .line 2150
    .local v2, "deselectableRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/MediaRouter2$RoutingController;->containsRouteInfoWithId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 2151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring deselecting a non-deselectable route="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    return-void

    .line 2155
    :cond_5d
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmImpl(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Impl;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->deselectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V

    .line 2156
    return-void
.end method

.method public whitelist getControlHints()Landroid/os/Bundle;
    .registers 3

    .line 1946
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1947
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getControlHints()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1948
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getDeselectableRoutes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1987
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1988
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v1

    .line 1989
    .local v1, "deselectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    .line 1990
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mgetRoutesWithIds(Landroid/media/MediaRouter2;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1989
    .end local v1    # "deselectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 3

    .line 1921
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1922
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1923
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist getOriginalId()Ljava/lang/String;
    .registers 3

    .line 1935
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1936
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1937
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 3

    .line 2022
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2023
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    monitor-exit v0

    return-object v1

    .line 2024
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getSelectableRoutes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1973
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1974
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v1

    .line 1975
    .local v1, "selectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    .line 1976
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mgetRoutesWithIds(Landroid/media/MediaRouter2;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1975
    .end local v1    # "selectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getSelectedRoutes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1959
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1960
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    .line 1961
    .local v1, "selectedRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    .line 1962
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mgetRoutesWithIds(Landroid/media/MediaRouter2;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1961
    .end local v1    # "selectedRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getTransferableRoutes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 2002
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2003
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v1

    .line 2004
    .local v1, "transferableRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    .line 2005
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mgetRoutesWithIds(Landroid/media/MediaRouter2;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2004
    .end local v1    # "transferableRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getVolume()I
    .registers 3

    .line 2059
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2060
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2061
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getVolumeHandling()I
    .registers 3

    .line 2038
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2039
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getVolumeHandling()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2040
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getVolumeMax()I
    .registers 3

    .line 2045
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2046
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2047
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist isReleased()Z
    .registers 4

    .line 2072
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2073
    :try_start_3
    iget v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    .line 2074
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist release()V
    .registers 2

    .line 2248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter2$RoutingController;->releaseInternal(Z)V

    .line 2249
    return-void
.end method

.method blacklist releaseInternal(Z)V
    .registers 6
    .param p1, "shouldReleaseSession"    # Z

    .line 2283
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2284
    :try_start_3
    iget v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    .line 2285
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2286
    const-string v1, "MR2"

    const-string v2, "releaseInternal: Called on released controller. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    :cond_15
    monitor-exit v0

    return-void

    .line 2290
    :cond_17
    iget v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    .line 2291
    .local v3, "shouldNotifyStop":Z
    :goto_1e
    iput v2, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 2292
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2b

    .line 2294
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmImpl(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Impl;

    move-result-object v0

    invoke-interface {v0, p1, v3, p0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->releaseSession(ZZLandroid/media/MediaRouter2$RoutingController;)V

    .line 2295
    return-void

    .line 2292
    .end local v3    # "shouldNotifyStop":Z
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method blacklist scheduleRelease()Z
    .registers 6

    .line 2258
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2259
    :try_start_3
    iget v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    .line 2260
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2262
    :cond_b
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 2263
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3d

    .line 2265
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2268
    :try_start_16
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 2271
    monitor-exit v1

    return v2

    .line 2273
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_3a

    .line 2275
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaRouter2$RoutingController;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2277
    return v2

    .line 2273
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0

    .line 2263
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public whitelist selectRoute(Landroid/media/MediaRoute2Info;)V
    .registers 7
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 2098
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2099
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v0

    const-string v1, "MR2"

    if-eqz v0, :cond_13

    .line 2100
    const-string v0, "selectRoute: Called on released controller. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    return-void

    .line 2104
    :cond_13
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    .line 2105
    .local v0, "selectedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/media/MediaRouter2$RoutingController;->containsRouteInfoWithId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring selecting a route that is already selected. route="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    return-void

    .line 2110
    :cond_38
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectableRoutes()Ljava/util/List;

    move-result-object v2

    .line 2111
    .local v2, "selectableRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/MediaRouter2$RoutingController;->containsRouteInfoWithId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 2112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring selecting a non-selectable route="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    return-void

    .line 2116
    :cond_5d
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmImpl(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Impl;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->selectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V

    .line 2117
    return-void
.end method

.method blacklist setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/media/RoutingSessionInfo;

    .line 2332
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2333
    :try_start_3
    iput-object p1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 2334
    monitor-exit v0

    .line 2335
    return-void

    .line 2334
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist setVolume(I)V
    .registers 4
    .param p1, "volume"    # I

    .line 2225
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getVolumeHandling()I

    move-result v0

    const-string v1, "MR2"

    if-nez v0, :cond_e

    .line 2226
    const-string v0, "setVolume: The routing session has fixed volume. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    return-void

    .line 2229
    :cond_e
    if-ltz p1, :cond_31

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getVolumeMax()I

    move-result v0

    if-le p1, v0, :cond_17

    goto :goto_31

    .line 2234
    :cond_17
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2235
    const-string v0, "setVolume: Called on released controller. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    return-void

    .line 2239
    :cond_23
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmImpl(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Impl;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setSessionVolume(ILandroid/media/RoutingSessionInfo;)V

    .line 2240
    return-void

    .line 2230
    :cond_31
    :goto_31
    const-string v0, "setVolume: The target volume is out of range. Ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 2300
    nop

    .line 2301
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;-><init>()V

    .line 2302
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2303
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2304
    .local v0, "selectedRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 2305
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;-><init>()V

    .line 2306
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 2307
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2308
    .local v1, "selectableRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 2309
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;-><init>()V

    .line 2310
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 2311
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2313
    .local v2, "deselectableRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2315
    const-string v4, "RoutingController{ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2316
    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2317
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2318
    const-string v4, ", selectedRoutes={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2319
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2320
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2321
    const-string v5, ", selectableRoutes={"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2322
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2323
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2324
    const-string v5, ", deselectableRoutes={"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2325
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2327
    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2328
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method blacklist tryTransferWithinProvider(Landroid/media/MediaRoute2Info;)Z
    .registers 8
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 2174
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2175
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2176
    :try_start_8
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 2177
    const-string v1, "MR2"

    const-string v3, "tryTransferWithinProvider: Called on released controller. Ignoring."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    monitor-exit v0

    return v2

    .line 2187
    :cond_18
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 2188
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2189
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 2190
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    move v1, v2

    goto :goto_40

    :cond_3f
    move v1, v3

    .line 2191
    .local v1, "isSystemRouteReselection":Z
    :goto_40
    if-nez v1, :cond_7c

    iget-object v4, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 2192
    invoke-virtual {v4}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 2193
    const-string v2, "MR2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transferring to a non-transferable route="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " session= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 2198
    invoke-virtual {v5}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2193
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    monitor-exit v0

    return v3

    .line 2201
    .end local v1    # "isSystemRouteReselection":Z
    :cond_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_8 .. :try_end_7d} :catchall_a7

    .line 2204
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2205
    :try_start_84
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-result-object v0

    .line 2206
    .local v0, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_a4

    .line 2207
    if-eqz v0, :cond_a3

    .line 2209
    :try_start_8d
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3, p1}, Landroid/media/IMediaRouterService;->transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_9a} :catch_9b

    .line 2212
    goto :goto_a3

    .line 2210
    :catch_9b
    move-exception v1

    .line 2211
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2"

    const-string v4, "Unable to transfer to route for session."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2214
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_a3
    :goto_a3
    return v2

    .line 2206
    .end local v0    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_a4
    move-exception v0

    :try_start_a5
    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v0

    .line 2201
    :catchall_a7
    move-exception v1

    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method public whitelist wasTransferInitiatedBySelf()Z
    .registers 3

    .line 2014
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmImpl(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Impl;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->wasTransferredBySelf(Landroid/media/RoutingSessionInfo;)Z

    move-result v0

    return v0
.end method
