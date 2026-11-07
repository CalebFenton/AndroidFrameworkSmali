.class Landroid/net/wifi/WifiManager$SoftApCallbackProxy;
.super Landroid/net/wifi/ISoftApCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApCallbackProxy"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private blacklist mCurrentClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mCurrentInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SoftApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIpMode:I

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$-e1ECZnW1d8rYOFRle5evaGm3XU(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onConnectedClientsOrInfoChanged$4(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LSv9Q3CNNAXFwUDbwlqS-ZdeKys(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onStateChanged$0(Landroid/net/wifi/SoftApState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OJDwYbMagixH5PNDcVdOTO552CA(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onConnectedClientsOrInfoChanged$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$baVOf4jL88hdnleAAHhJuFXPK7Q(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/WifiClient;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onBlockedClientConnecting$6(Landroid/net/wifi/WifiClient;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cObI_DPlxSHWHvCr9STncfkXiCw(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApCapability;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onCapabilityChanged$5(Landroid/net/wifi/SoftApCapability;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nBlV-O8Sq6LtojaS37G97m-uQB4(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onConnectedClientsOrInfoChanged$2(Landroid/net/wifi/SoftApInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rS9pkhvJbXJ56rypa_9NHey1mr8(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onConnectedClientsOrInfoChanged$1(Landroid/net/wifi/SoftApInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v1Z-cG5TzeVrA0rBJiqfapuAZe0(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onClientsDisconnected$7(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;I)V
    .registers 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/WifiManager$SoftApCallback;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 6972
    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/wifi/ISoftApCallback$Stub;-><init>()V

    .line 6961
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentClients:Ljava/util/Map;

    .line 6962
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentInfos:Ljava/util/Map;

    .line 6973
    iput-object p2, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 6974
    iput-object p3, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 6975
    iput p4, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    .line 6976
    return-void
.end method

.method private blacklist getConnectedClientList(Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;"
        }
    .end annotation

    .line 6965
    .local p1, "clientsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/WifiClient;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6966
    .local v0, "connectedClientList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 6967
    .local v2, "it":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6968
    .end local v2    # "it":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    goto :goto_d

    .line 6969
    :cond_1d
    return-object v0
.end method

.method private synthetic blacklist lambda$onBlockedClientConnecting$6(Landroid/net/wifi/WifiClient;I)V
    .registers 4
    .param p1, "client"    # Landroid/net/wifi/WifiClient;
    .param p2, "blockedReason"    # I

    .line 7123
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    .line 7124
    return-void
.end method

.method private synthetic blacklist lambda$onCapabilityChanged$5(Landroid/net/wifi/SoftApCapability;)V
    .registers 3
    .param p1, "capability"    # Landroid/net/wifi/SoftApCapability;

    .line 7109
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V

    .line 7110
    return-void
.end method

.method private synthetic blacklist lambda$onClientsDisconnected$7(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .registers 4
    .param p1, "info"    # Landroid/net/wifi/SoftApInfo;
    .param p2, "clients"    # Ljava/util/List;

    .line 7136
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onClientsDisconnected(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onConnectedClientsOrInfoChanged$1(Landroid/net/wifi/SoftApInfo;Ljava/util/Map;)V
    .registers 5
    .param p1, "changedInfo"    # Landroid/net/wifi/SoftApInfo;
    .param p2, "changedInfoClients"    # Ljava/util/Map;

    .line 7067
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 7068
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7067
    invoke-interface {v0, p1, v1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onConnectedClientsChanged(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V

    .line 7069
    return-void
.end method

.method private synthetic blacklist lambda$onConnectedClientsOrInfoChanged$2(Landroid/net/wifi/SoftApInfo;)V
    .registers 3
    .param p1, "newInfo"    # Landroid/net/wifi/SoftApInfo;

    .line 7079
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onInfoChanged(Landroid/net/wifi/SoftApInfo;)V

    .line 7080
    return-void
.end method

.method private synthetic blacklist lambda$onConnectedClientsOrInfoChanged$3(Ljava/util/List;)V
    .registers 3
    .param p1, "changedInfoList"    # Ljava/util/List;

    .line 7085
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onInfoChanged(Ljava/util/List;)V

    .line 7086
    return-void
.end method

.method private synthetic blacklist lambda$onConnectedClientsOrInfoChanged$4(Ljava/util/Map;)V
    .registers 4
    .param p1, "clients"    # Ljava/util/Map;

    .line 7095
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->getConnectedClientList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onConnectedClientsChanged(Ljava/util/List;)V

    .line 7096
    return-void
.end method

.method private synthetic blacklist lambda$onStateChanged$0(Landroid/net/wifi/SoftApState;)V
    .registers 3
    .param p1, "state"    # Landroid/net/wifi/SoftApState;

    .line 6987
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStateChanged(Landroid/net/wifi/SoftApState;)V

    .line 6988
    return-void
.end method


# virtual methods
.method public blacklist onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V
    .registers 5
    .param p1, "client"    # Landroid/net/wifi/WifiClient;
    .param p2, "blockedReason"    # I

    .line 7115
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 7116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApCallbackProxy on mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onBlockedClientConnecting: client ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7121
    :cond_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7122
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda7;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/WifiClient;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7125
    return-void
.end method

.method public blacklist onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .registers 4
    .param p1, "capability"    # Landroid/net/wifi/SoftApCapability;

    .line 7102
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 7103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApCallbackProxy on mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  onCapabilityChanged: SoftApCapability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7107
    :cond_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7108
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApCapability;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7111
    return-void
.end method

.method public blacklist onClientsDisconnected(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .registers 5
    .param p1, "info"    # Landroid/net/wifi/SoftApInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApInfo;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 7129
    .local p2, "clients":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 7130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApCallbackProxy on mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onClientsDisconnected: info ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with clients = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7135
    :cond_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7136
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda6;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7137
    return-void
.end method

.method public blacklist onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;ZZ)V
    .registers 22
    .param p3, "isBridged"    # Z
    .param p4, "isRegistration"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SoftApInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;ZZ)V"
        }
    .end annotation

    .line 6994
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/SoftApInfo;>;"
    .local p2, "clients":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/WifiClient;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v5}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v5

    const-string v6, "SoftApCallbackProxy on mode "

    const-string v7, "WifiManager"

    if-eqz v5, :cond_54

    .line 6995
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", onConnectedClientsOrInfoChanged: clients: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", infos: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", isBridged is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", isRegistration is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7001
    :cond_54
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7002
    .local v5, "changedInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/SoftApInfo;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 7005
    .local v8, "changedInfoClients":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/wifi/SoftApInfo;Ljava/util/List<Landroid/net/wifi/WifiClient;>;>;"
    nop

    .line 7006
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_80

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->getConnectedClientList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget-object v12, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentClients:Ljava/util/Map;

    .line 7007
    invoke-direct {v0, v12}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->getConnectedClientList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eq v9, v12, :cond_80

    move v9, v10

    goto :goto_81

    :cond_80
    const/4 v9, 0x0

    .line 7008
    .local v9, "areClientsChangedWithoutInfosChanged":Z
    :goto_81
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v12

    iget-object v13, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentInfos:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    if-eq v12, v13, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v10, 0x0

    .line 7010
    .local v10, "isInfoChanged":Z
    :goto_8f
    if-eqz v4, :cond_c3

    .line 7012
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_99
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/SoftApInfo;

    .line 7013
    .local v13, "currentInfo":Landroid/net/wifi/SoftApInfo;
    invoke-virtual {v13}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v14

    .line 7014
    .local v14, "instance":Ljava/lang/String;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_c2

    .line 7015
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v8, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7017
    .end local v13    # "currentInfo":Landroid/net/wifi/SoftApInfo;
    .end local v14    # "instance":Ljava/lang/String;
    :cond_c2
    goto :goto_99

    .line 7021
    :cond_c3
    iget-object v12, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentInfos:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_cd
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_173

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/SoftApInfo;

    .line 7022
    .local v13, "info":Landroid/net/wifi/SoftApInfo;
    invoke-virtual {v13}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v14

    .line 7023
    .local v14, "changedInstance":Ljava/lang/String;
    nop

    .line 7024
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 7023
    invoke-interface {v2, v14, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 7025
    .local v15, "changedClientList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    invoke-interface {v5, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_154

    .line 7026
    const/4 v10, 0x1

    .line 7027
    iget-object v11, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentClients:Ljava/util/Map;

    .line 7028
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 7027
    invoke-interface {v11, v14, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 7028
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_16d

    .line 7029
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SoftApInfo;

    .line 7030
    .local v3, "changedInfo":Landroid/net/wifi/SoftApInfo;
    if-eqz v3, :cond_130

    invoke-virtual {v3}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    move-result v11

    if-nez v11, :cond_110

    goto :goto_130

    .line 7036
    :cond_110
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v4, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", info changed on client connected instance"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7038
    invoke-interface {v8, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_153

    .line 7031
    :cond_130
    :goto_130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", info changed on client connected instance(AP disabled)"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7034
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v8, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7040
    .end local v3    # "changedInfo":Landroid/net/wifi/SoftApInfo;
    :goto_153
    goto :goto_16d

    .line 7043
    :cond_154
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentClients:Ljava/util/Map;

    .line 7045
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v4, v14, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_16d

    .line 7047
    invoke-interface {v8, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7050
    .end local v13    # "info":Landroid/net/wifi/SoftApInfo;
    .end local v14    # "changedInstance":Ljava/lang/String;
    .end local v15    # "changedClientList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiClient;>;"
    :cond_16d
    :goto_16d
    move/from16 v3, p3

    move/from16 v4, p4

    goto/16 :goto_cd

    .line 7052
    :cond_173
    iput-object v2, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentClients:Ljava/util/Map;

    .line 7053
    iput-object v1, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentInfos:Ljava/util/Map;

    .line 7054
    if-nez v10, :cond_1a0

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a0

    if-nez p4, :cond_1a0

    if-nez v9, :cond_1a0

    .line 7056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", No changed & Not Registration don\'t need to notify the client"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7058
    return-void

    .line 7060
    :cond_1a0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7062
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1ab
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/SoftApInfo;

    .line 7063
    .local v4, "changedInfo":Landroid/net/wifi/SoftApInfo;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", send onConnectedClientsChanged, changedInfo is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and clients are "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 7065
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 7063
    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7066
    iget-object v11, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v12, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0, v4, v8}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;Ljava/util/Map;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7070
    .end local v4    # "changedInfo":Landroid/net/wifi/SoftApInfo;
    goto :goto_1ab

    .line 7072
    :cond_1f0
    if-nez v10, :cond_1f4

    if-eqz p4, :cond_25d

    .line 7073
    :cond_1f4
    if-nez p3, :cond_233

    .line 7074
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_202

    .line 7075
    new-instance v3, Landroid/net/wifi/SoftApInfo;

    invoke-direct {v3}, Landroid/net/wifi/SoftApInfo;-><init>()V

    goto :goto_209

    :cond_202
    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SoftApInfo;

    .line 7076
    .local v3, "newInfo":Landroid/net/wifi/SoftApInfo;
    :goto_209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", send InfoChanged, newInfo: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7078
    iget-object v4, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v11, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0, v3}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;)V

    invoke-interface {v4, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7082
    .end local v3    # "newInfo":Landroid/net/wifi/SoftApInfo;
    :cond_233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", send InfoChanged, changedInfoList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7084
    iget-object v3, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v5}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7089
    :cond_25d
    if-nez p4, :cond_267

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_267

    if-eqz v9, :cond_295

    .line 7091
    :cond_267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", send onConnectedClientsChanged(clients): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7093
    invoke-direct {v0, v2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->getConnectedClientList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7091
    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7094
    iget-object v3, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/util/Map;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7098
    :cond_295
    return-void
.end method

.method public blacklist onStateChanged(Landroid/net/wifi/SoftApState;)V
    .registers 4
    .param p1, "state"    # Landroid/net/wifi/SoftApState;

    .line 6980
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApCallbackProxy on mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mIpMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6985
    :cond_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6986
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6989
    return-void
.end method
