.class public abstract Landroid/telephony/NetworkService$NetworkServiceProvider;
.super Ljava/lang/Object;
.source "NetworkService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "NetworkServiceProvider"
.end annotation


# instance fields
.field private final blacklist mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/INetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field final synthetic blacklist this$0:Landroid/telephony/NetworkService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyInfoChangedToCallbacks(Landroid/telephony/NetworkService$NetworkServiceProvider;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/NetworkService$NetworkServiceProvider;->notifyInfoChangedToCallbacks()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterForInfoChanged(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->registerForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterForInfoChanged(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->unregisterForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/NetworkService;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/NetworkService;
    .param p2, "slotIndex"    # I
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

    .line 98
    iput-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->this$0:Landroid/telephony/NetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    .line 99
    iput p2, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    .line 100
    return-void
.end method

.method private blacklist notifyInfoChangedToCallbacks()V
    .registers 4

    .line 142
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/INetworkServiceCallback;

    .line 144
    .local v1, "callback":Landroid/telephony/INetworkServiceCallback;
    :try_start_12
    invoke-interface {v1}, Landroid/telephony/INetworkServiceCallback;->onNetworkStateChanged()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 147
    goto :goto_17

    .line 145
    :catch_16
    move-exception v2

    .line 148
    .end local v1    # "callback":Landroid/telephony/INetworkServiceCallback;
    :goto_17
    goto :goto_6

    .line 149
    :cond_18
    return-void
.end method

.method private blacklist registerForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/INetworkServiceCallback;

    .line 130
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object v1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist unregisterForInfoChanged(Landroid/telephony/INetworkServiceCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/INetworkServiceCallback;

    .line 136
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mNetworkRegistrationInfoChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public final whitelist getSlotIndex()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    return v0
.end method

.method public final whitelist notifyNetworkRegistrationInfoChanged()V
    .registers 6

    .line 125
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkService$NetworkServiceProvider;->mSlotIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void
.end method

.method public whitelist requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V
    .registers 5
    .param p1, "domain"    # I
    .param p2, "callback"    # Landroid/telephony/NetworkServiceCallback;

    .line 117
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    .line 119
    return-void
.end method
