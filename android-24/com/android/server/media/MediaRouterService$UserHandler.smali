.class final Lcom/android/server/media/MediaRouterService$UserHandler;
.super Landroid/os/Handler;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;
.implements Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UserHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;,
        Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    }
.end annotation


# static fields
.field private static final MSG_CONNECTION_TIMED_OUT:I = 0x9

.field public static final MSG_REQUEST_SET_VOLUME:I = 0x6

.field public static final MSG_REQUEST_UPDATE_VOLUME:I = 0x7

.field public static final MSG_SELECT_ROUTE:I = 0x4

.field public static final MSG_START:I = 0x1

.field public static final MSG_STOP:I = 0x2

.field public static final MSG_UNSELECT_ROUTE:I = 0x5

.field private static final MSG_UPDATE_CLIENT_STATE:I = 0x8

.field public static final MSG_UPDATE_DISCOVERY_REQUEST:I = 0x3

.field private static final PHASE_CONNECTED:I = 0x2

.field private static final PHASE_CONNECTING:I = 0x1

.field private static final PHASE_NOT_AVAILABLE:I = -0x1

.field private static final PHASE_NOT_CONNECTED:I = 0x0

.field private static final TIMEOUT_REASON_CONNECTION_LOST:I = 0x2

.field private static final TIMEOUT_REASON_NOT_AVAILABLE:I = 0x1

.field private static final TIMEOUT_REASON_WAITING_FOR_CONNECTED:I = 0x4

.field private static final TIMEOUT_REASON_WAITING_FOR_CONNECTING:I = 0x3


# instance fields
.field private mClientStateUpdateScheduled:Z

.field private mConnectionPhase:I

.field private mConnectionTimeoutReason:I

.field private mConnectionTimeoutStartTime:J

.field private mDiscoveryMode:I

.field private mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

.field private final mProviderRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mService:Lcom/android/server/media/MediaRouterService;

.field private final mTempClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/IMediaRouterClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

.field private final mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/media/MediaRouterService;
    .param p2, "userRecord"    # Lcom/android/server/media/MediaRouterService$UserRecord;

    #@0
    .prologue
    .line 654
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@9
    .line 641
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    .line 640
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@10
    .line 643
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 642
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    #@17
    .line 646
    const/4 v0, 0x0

    #@18
    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    #@1a
    .line 648
    const/4 v0, -0x1

    #@1b
    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    #@1d
    .line 655
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    #@1f
    .line 656
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@21
    .line 657
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;

    #@23
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->-get0(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;

    #@26
    move-result-object v1

    #@27
    .line 658
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@29
    iget v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    #@2b
    .line 657
    invoke-direct {v0, v1, p0, p0, v2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V

    #@2e
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    #@30
    .line 653
    return-void
.end method

.method private checkGloballySelectedRouteState()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 877
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 878
    const/4 v1, -0x1

    #@8
    iput v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    #@a
    .line 879
    invoke-direct {p0, v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    #@d
    .line 880
    return-void

    #@e
    .line 884
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@10
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isValid()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 885
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@18
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isEnabled()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 891
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    #@20
    .line 892
    .local v0, "oldPhase":I
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@22
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getStatus()I

    #@25
    move-result v1

    #@26
    invoke-static {v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->getConnectionPhase(I)I

    #@29
    move-result v1

    #@2a
    iput v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    #@2c
    .line 893
    if-lt v0, v2, :cond_2

    #@2e
    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    #@30
    if-ge v1, v2, :cond_2

    #@32
    .line 894
    invoke-direct {p0, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    #@35
    .line 895
    return-void

    #@36
    .line 886
    .end local v0    # "oldPhase":I
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    #@39
    .line 887
    return-void

    #@3a
    .line 899
    .restart local v0    # "oldPhase":I
    :cond_2
    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    #@3c
    packed-switch v1, :pswitch_data_0

    #@3f
    .line 919
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    #@42
    .line 875
    :goto_0
    return-void

    #@43
    .line 901
    :pswitch_0
    if-eq v0, v3, :cond_3

    #@45
    .line 902
    const-string/jumbo v1, "MediaRouterService"

    #@48
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v3, "Connected to global route: "

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    .line 903
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@56
    .line 902
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 905
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    #@64
    goto :goto_0

    #@65
    .line 908
    :pswitch_1
    if-eq v0, v2, :cond_4

    #@67
    .line 909
    const-string/jumbo v1, "MediaRouterService"

    #@6a
    new-instance v2, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v3, "Connecting to global route: "

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    .line 910
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@78
    .line 909
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 912
    :cond_4
    const/4 v1, 0x4

    #@84
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    #@87
    goto :goto_0

    #@88
    .line 915
    :pswitch_2
    const/4 v1, 0x3

    #@89
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    #@8c
    goto :goto_0

    #@8d
    .line 899
    nop

    #@8e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private connectionTimedOut()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 951
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@7
    if-nez v0, :cond_1

    #@9
    .line 953
    :cond_0
    const-string/jumbo v0, "MediaRouterService"

    #@c
    const-string/jumbo v1, "Handled connection timeout for no reason."

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 954
    return-void

    #@13
    .line 957
    :cond_1
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    #@15
    packed-switch v0, :pswitch_data_0

    #@18
    .line 978
    :goto_0
    iput v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    #@1a
    .line 980
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectGloballySelectedRoute()V

    #@1d
    .line 950
    return-void

    #@1e
    .line 959
    :pswitch_0
    const-string/jumbo v0, "MediaRouterService"

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "Global route no longer available: "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 960
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@2f
    .line 959
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    goto :goto_0

    #@3b
    .line 963
    :pswitch_1
    const-string/jumbo v0, "MediaRouterService"

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "Global route connection lost: "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    .line 964
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@4c
    .line 963
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    goto :goto_0

    #@58
    .line 967
    :pswitch_2
    const-string/jumbo v0, "MediaRouterService"

    #@5b
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v2, "Global route timed out while waiting for connection attempt to begin after "

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    .line 969
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6a
    move-result-wide v2

    #@6b
    iget-wide v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    #@6d
    sub-long/2addr v2, v4

    #@6e
    .line 967
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    .line 970
    const-string/jumbo v2, " ms: "

    #@75
    .line 967
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    .line 970
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@7b
    .line 967
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    goto :goto_0

    #@87
    .line 973
    :pswitch_3
    const-string/jumbo v0, "MediaRouterService"

    #@8a
    new-instance v1, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v2, "Global route timed out while connecting after "

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    .line 974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@99
    move-result-wide v2

    #@9a
    iget-wide v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    #@9c
    sub-long/2addr v2, v4

    #@9d
    .line 973
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    .line 975
    const-string/jumbo v2, " ms: "

    #@a4
    .line 973
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    .line 975
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@aa
    .line 973
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b5
    goto/16 :goto_0

    #@b7
    .line 957
    nop

    #@b8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I
    .locals 4
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@0
    .prologue
    .line 1041
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1042
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1043
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    #@11
    .line 1044
    .local v2, "record":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@14
    move-result-object v3

    #@15
    if-ne v3, p1, :cond_0

    #@17
    .line 1045
    return v1

    #@18
    .line 1042
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1048
    .end local v2    # "record":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    :cond_1
    const/4 v3, -0x1

    #@1c
    return v3
.end method

.method private findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .locals 5
    .param p1, "uniqueId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1052
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 1053
    .local v0, "count":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1054
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    #@12
    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@15
    move-result-object v2

    #@16
    .line 1055
    .local v2, "record":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    if-eqz v2, :cond_0

    #@18
    .line 1056
    return-object v2

    #@19
    .line 1053
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1059
    .end local v2    # "record":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_1
    return-object v4
.end method

.method private static getConnectionPhase(I)I
    .locals 1
    .param p0, "status"    # I

    #@0
    .prologue
    .line 1063
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1075
    :pswitch_0
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 1066
    :pswitch_1
    const/4 v0, 0x2

    #@6
    return v0

    #@7
    .line 1068
    :pswitch_2
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 1071
    :pswitch_3
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 1063
    nop

    #@c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private requestSetVolume(Ljava/lang/String;I)V
    .locals 1
    .param p1, "routeId"    # Ljava/lang/String;
    .param p2, "volume"    # I

    #@0
    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 813
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@6
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 812
    if-eqz v0, :cond_0

    #@10
    .line 814
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@12
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayVolume(I)V

    #@19
    .line 811
    :cond_0
    return-void
.end method

.method private requestUpdateVolume(Ljava/lang/String;I)V
    .locals 1
    .param p1, "routeId"    # Ljava/lang/String;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 820
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@6
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 819
    if-eqz v0, :cond_0

    #@10
    .line 821
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@12
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->adjustDisplayVolume(I)V

    #@19
    .line 818
    :cond_0
    return-void
.end method

.method private scheduleUpdateClientState()V
    .locals 1

    #@0
    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 985
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    #@7
    .line 986
    const/16 v0, 0x8

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    #@c
    .line 983
    :cond_0
    return-void
.end method

.method private selectRoute(Ljava/lang/String;)V
    .locals 4
    .param p1, "routeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 775
    if-eqz p1, :cond_0

    #@2
    .line 776
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 777
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@8
    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 774
    :cond_0
    :goto_0
    return-void

    #@13
    .line 778
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@16
    move-result-object v0

    #@17
    .line 779
    .local v0, "routeRecord":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    if-eqz v0, :cond_0

    #@19
    .line 780
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectGloballySelectedRoute()V

    #@1c
    .line 782
    const-string/jumbo v1, "MediaRouterService"

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Selected global route:"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 783
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@38
    .line 784
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkGloballySelectedRouteState()V

    #@3b
    .line 785
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    #@46
    .line 787
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    #@49
    goto :goto_0
.end method

.method private start()V
    .locals 1

    #@0
    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 729
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    #@7
    .line 730
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    #@9
    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->start()V

    #@c
    .line 727
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 1

    #@0
    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 736
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    #@7
    .line 737
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectGloballySelectedRoute()V

    #@a
    .line 738
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    #@c
    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->stop()V

    #@f
    .line 734
    :cond_0
    return-void
.end method

.method private unselectGloballySelectedRoute()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 801
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 802
    const-string/jumbo v0, "MediaRouterService"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Unselected global route:"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 803
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@23
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0, v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    #@2a
    .line 804
    iput-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@2c
    .line 805
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkGloballySelectedRouteState()V

    #@2f
    .line 807
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    #@32
    .line 800
    :cond_0
    return-void
.end method

.method private unselectRoute(Ljava/lang/String;)V
    .locals 1
    .param p1, "routeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 793
    if-eqz p1, :cond_0

    #@2
    .line 794
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 795
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@8
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 793
    if-eqz v0, :cond_0

    #@12
    .line 796
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectGloballySelectedRoute()V

    #@15
    .line 792
    :cond_0
    return-void
.end method

.method private updateClientState()V
    .locals 10

    #@0
    .prologue
    .line 991
    const/4 v7, 0x0

    #@1
    iput-boolean v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    #@3
    .line 993
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 994
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@9
    invoke-virtual {v7}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 997
    :goto_0
    new-instance v5, Landroid/media/MediaRouterClientState;

    #@f
    invoke-direct {v5}, Landroid/media/MediaRouterClientState;-><init>()V

    #@12
    .line 998
    .local v5, "trustedState":Landroid/media/MediaRouterClientState;
    iput-object v2, v5, Landroid/media/MediaRouterClientState;->globallySelectedRouteId:Ljava/lang/String;

    #@14
    .line 999
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v4

    #@1a
    .line 1000
    .local v4, "providerCount":I
    const/4 v3, 0x0

    #@1b
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    #@1d
    .line 1001
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v7

    #@23
    check-cast v7, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    #@25
    invoke-virtual {v7, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->appendClientState(Landroid/media/MediaRouterClientState;)V

    #@28
    .line 1000
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 994
    .end local v3    # "i":I
    .end local v4    # "providerCount":I
    .end local v5    # "trustedState":Landroid/media/MediaRouterClientState;
    :cond_0
    const/4 v2, 0x0

    #@2c
    .local v2, "globallySelectedRouteId":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 1006
    .end local v2    # "globallySelectedRouteId":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "providerCount":I
    .restart local v5    # "trustedState":Landroid/media/MediaRouterClientState;
    :cond_1
    new-instance v6, Landroid/media/MediaRouterClientState;

    #@2f
    invoke-direct {v6}, Landroid/media/MediaRouterClientState;-><init>()V

    #@32
    .line 1007
    .local v6, "untrustedState":Landroid/media/MediaRouterClientState;
    iput-object v2, v6, Landroid/media/MediaRouterClientState;->globallySelectedRouteId:Ljava/lang/String;

    #@34
    .line 1008
    if-eqz v2, :cond_2

    #@36
    .line 1009
    iget-object v7, v6, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v5, v2}, Landroid/media/MediaRouterClientState;->getRoute(Ljava/lang/String;)Landroid/media/MediaRouterClientState$RouteInfo;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    .line 1013
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    #@41
    invoke-static {v7}, Lcom/android/server/media/MediaRouterService;->-get1(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    #@44
    move-result-object v8

    #@45
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@46
    .line 1015
    :try_start_1
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@48
    iput-object v5, v7, Lcom/android/server/media/MediaRouterService$UserRecord;->mTrustedState:Landroid/media/MediaRouterClientState;

    #@4a
    .line 1016
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@4c
    iput-object v6, v7, Lcom/android/server/media/MediaRouterService$UserRecord;->mUntrustedState:Landroid/media/MediaRouterClientState;

    #@4e
    .line 1019
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@50
    iget-object v7, v7, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v0

    #@56
    .line 1020
    .local v0, "count":I
    const/4 v3, 0x0

    #@57
    :goto_2
    if-ge v3, v0, :cond_3

    #@59
    .line 1021
    iget-object v9, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    #@5b
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@5d
    iget-object v7, v7, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v7

    #@63
    check-cast v7, Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@65
    iget-object v7, v7, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    #@67
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 1020
    add-int/lit8 v3, v3, 0x1

    #@6c
    goto :goto_2

    #@6d
    :cond_3
    :try_start_2
    monitor-exit v8

    #@6e
    .line 1026
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    #@70
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@73
    move-result v0

    #@74
    .line 1027
    const/4 v3, 0x0

    #@75
    :goto_3
    if-ge v3, v0, :cond_4

    #@77
    .line 1029
    :try_start_3
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7c
    move-result-object v7

    #@7d
    check-cast v7, Landroid/media/IMediaRouterClient;

    #@7f
    invoke-interface {v7}, Landroid/media/IMediaRouterClient;->onStateChanged()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@82
    .line 1027
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@84
    goto :goto_3

    #@85
    .line 1013
    .end local v0    # "count":I
    :catchall_0
    move-exception v7

    #@86
    :try_start_4
    monitor-exit v8

    #@87
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@88
    .line 1034
    :catchall_1
    move-exception v7

    #@89
    .line 1036
    iget-object v8, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@8e
    .line 1034
    throw v7

    #@8f
    .line 1036
    .restart local v0    # "count":I
    :cond_4
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    #@91
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@94
    .line 990
    return-void

    #@95
    .line 1030
    :catch_0
    move-exception v1

    #@96
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method private updateConnectionTimeout(I)V
    .locals 3
    .param p1, "reason"    # I

    #@0
    .prologue
    const/16 v2, 0x9

    #@2
    .line 925
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    #@4
    if-eq p1, v0, :cond_1

    #@6
    .line 926
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 927
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->removeMessages(I)V

    #@d
    .line 929
    :cond_0
    iput p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    #@f
    .line 930
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    #@15
    .line 931
    packed-switch p1, :pswitch_data_0

    #@18
    .line 924
    :cond_1
    :goto_0
    return-void

    #@19
    .line 936
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    #@1c
    goto :goto_0

    #@1d
    .line 940
    :pswitch_1
    const-wide/16 v0, 0x1388

    #@1f
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessageDelayed(IJ)Z

    #@22
    goto :goto_0

    #@23
    .line 944
    :pswitch_2
    const-wide/32 v0, 0xea60

    #@26
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessageDelayed(IJ)Z

    #@29
    goto :goto_0

    #@2a
    .line 931
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateDiscoveryRequest()V
    .locals 8

    #@0
    .prologue
    .line 743
    const/4 v5, 0x0

    #@1
    .line 744
    .local v5, "routeTypes":I
    const/4 v0, 0x0

    #@2
    .line 745
    .local v0, "activeScan":Z
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    #@4
    invoke-static {v6}, Lcom/android/server/media/MediaRouterService;->-get1(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    #@7
    move-result-object v7

    #@8
    monitor-enter v7

    #@9
    .line 746
    :try_start_0
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@b
    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v2

    #@11
    .line 747
    .local v2, "count":I
    const/4 v3, 0x0

    #@12
    .end local v0    # "activeScan":Z
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@14
    .line 748
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    #@16
    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    #@1e
    .line 749
    .local v1, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    iget v6, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    #@20
    or-int/2addr v5, v6

    #@21
    .line 750
    iget-boolean v6, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    or-int/2addr v0, v6

    #@24
    .line 747
    .local v0, "activeScan":Z
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_0

    #@27
    .end local v0    # "activeScan":Z
    .end local v1    # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    :cond_0
    monitor-exit v7

    #@28
    .line 755
    and-int/lit8 v6, v5, 0x4

    #@2a
    if-eqz v6, :cond_2

    #@2c
    .line 756
    if-eqz v0, :cond_1

    #@2e
    .line 757
    const/4 v4, 0x2

    #@2f
    .line 765
    .local v4, "newDiscoveryMode":I
    :goto_1
    iget v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    #@31
    if-eq v6, v4, :cond_3

    #@33
    .line 766
    iput v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    #@35
    .line 767
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v2

    #@3b
    .line 768
    const/4 v3, 0x0

    #@3c
    :goto_2
    if-ge v3, v2, :cond_3

    #@3e
    .line 769
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v6

    #@44
    check-cast v6, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    #@46
    invoke-virtual {v6}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@49
    move-result-object v6

    #@4a
    iget v7, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    #@4c
    invoke-virtual {v6, v7}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    #@4f
    .line 768
    add-int/lit8 v3, v3, 0x1

    #@51
    goto :goto_2

    #@52
    .line 745
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "newDiscoveryMode":I
    :catchall_0
    move-exception v6

    #@53
    monitor-exit v7

    #@54
    throw v6

    #@55
    .line 759
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    :cond_1
    const/4 v4, 0x1

    #@56
    .restart local v4    # "newDiscoveryMode":I
    goto :goto_1

    #@57
    .line 762
    .end local v4    # "newDiscoveryMode":I
    :cond_2
    const/4 v4, 0x0

    #@58
    .restart local v4    # "newDiscoveryMode":I
    goto :goto_1

    #@59
    .line 742
    :cond_3
    return-void
.end method

.method private updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;
    .param p2, "state"    # Landroid/media/RemoteDisplayState;

    #@0
    .prologue
    .line 860
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    #@3
    move-result v0

    #@4
    .line 861
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    .line 862
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    #@e
    .line 863
    .local v1, "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    invoke-virtual {v1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 864
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkGloballySelectedRouteState()V

    #@17
    .line 865
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    #@1a
    .line 859
    .end local v1    # "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    :cond_0
    return-void
.end method


# virtual methods
.method public addProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@0
    .prologue
    .line 827
    invoke-virtual {p1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    #@3
    .line 828
    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    #@5
    invoke-virtual {p1, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    #@8
    .line 829
    const/4 v1, 0x0

    #@9
    invoke-virtual {p1, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    #@c
    .line 831
    new-instance v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    #@e
    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    #@11
    .line 832
    .local v0, "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 833
    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getDisplayState()Landroid/media/RemoteDisplayState;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    #@1d
    .line 835
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    #@20
    .line 826
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v3

    #@9
    const-string/jumbo v4, "Handler"

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 706
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, "  "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 707
    .local v1, "indent":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    const-string/jumbo v4, "mRunning="

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    iget-boolean v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    const-string/jumbo v4, "mDiscoveryMode="

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    iget v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@65
    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    const-string/jumbo v4, "mGloballySelectedRouteRecord="

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mGloballySelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    #@77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 710
    new-instance v3, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    const-string/jumbo v4, "mConnectionPhase="

    #@8e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    iget v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    #@94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v3

    #@9c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 711
    new-instance v3, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    const-string/jumbo v4, "mConnectionTimeoutReason="

    #@ab
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v3

    #@af
    iget v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    #@b1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bc
    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v3

    #@c5
    const-string/jumbo v4, "mConnectionTimeoutStartTime="

    #@c8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v4

    #@cc
    iget v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    #@ce
    if-eqz v3, :cond_0

    #@d0
    .line 713
    iget-wide v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    #@d2
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    #@d5
    move-result-object v3

    #@d6
    .line 712
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v3

    #@da
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e1
    .line 715
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    #@e3
    invoke-virtual {v3, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@e6
    .line 717
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@e8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@eb
    move-result v2

    #@ec
    .line 718
    .local v2, "providerCount":I
    if-eqz v2, :cond_1

    #@ee
    .line 719
    const/4 v0, 0x0

    #@ef
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    #@f1
    .line 720
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@f3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f6
    move-result-object v3

    #@f7
    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    #@f9
    invoke-virtual {v3, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@fc
    .line 719
    add-int/lit8 v0, v0, 0x1

    #@fe
    goto :goto_1

    #@ff
    .line 713
    .end local v0    # "i":I
    .end local v2    # "providerCount":I
    :cond_0
    const-string/jumbo v3, "<n/a>"

    #@102
    goto :goto_0

    #@103
    .line 723
    .restart local v2    # "providerCount":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v3

    #@10c
    const-string/jumbo v4, "<no providers>"

    #@10f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v3

    #@113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v3

    #@117
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11a
    .line 703
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 663
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 662
    :goto_0
    return-void

    #@6
    .line 665
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->start()V

    #@9
    goto :goto_0

    #@a
    .line 669
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->stop()V

    #@d
    goto :goto_0

    #@e
    .line 673
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateDiscoveryRequest()V

    #@11
    goto :goto_0

    #@12
    .line 677
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->selectRoute(Ljava/lang/String;)V

    #@19
    goto :goto_0

    #@1a
    .line 681
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c
    check-cast v0, Ljava/lang/String;

    #@1e
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectRoute(Ljava/lang/String;)V

    #@21
    goto :goto_0

    #@22
    .line 685
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@24
    check-cast v0, Ljava/lang/String;

    #@26
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@28
    invoke-direct {p0, v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestSetVolume(Ljava/lang/String;I)V

    #@2b
    goto :goto_0

    #@2c
    .line 689
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e
    check-cast v0, Ljava/lang/String;

    #@30
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@32
    invoke-direct {p0, v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestUpdateVolume(Ljava/lang/String;I)V

    #@35
    goto :goto_0

    #@36
    .line 693
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateClientState()V

    #@39
    goto :goto_0

    #@3a
    .line 697
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->connectionTimedOut()V

    #@3d
    goto :goto_0

    #@3e
    .line 663
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V
    .locals 0
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;
    .param p2, "state"    # Landroid/media/RemoteDisplayState;

    #@0
    .prologue
    .line 855
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V

    #@3
    .line 854
    return-void
.end method

.method public removeProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 5
    .param p1, "provider"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 840
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    #@5
    move-result v0

    #@6
    .line 841
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@8
    .line 842
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    #@10
    .line 843
    .local v1, "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    invoke-virtual {v1, v4}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    #@13
    .line 844
    invoke-virtual {p1, v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    #@16
    .line 845
    invoke-virtual {p1, v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    #@19
    .line 847
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkGloballySelectedRouteState()V

    #@1c
    .line 848
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    #@1f
    .line 839
    .end local v1    # "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    :cond_0
    return-void
.end method
