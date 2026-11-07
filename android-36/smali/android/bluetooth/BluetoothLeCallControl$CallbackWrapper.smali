.class Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;
.super Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;
.source "BluetoothLeCallControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeCallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothLeCallControl;


# direct methods
.method public static synthetic blacklist $r8$lambda$7oIvK-u6KOZAy6TZ9WELalz-vm4(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->lambda$onUnholdCall$3(ILandroid/os/ParcelUuid;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Gw7kJPS0-4WMrOX_mhAWtVPGuEQ(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->lambda$onTerminateCall$1(ILandroid/os/ParcelUuid;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Re8vvQyiBzJEjHOVIK1ZWf90_mc(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->lambda$onAcceptCall$0(ILandroid/os/ParcelUuid;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X--SZ2LNYJYEyySRuJJF-8fZUas(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->lambda$onHoldCall$2(ILandroid/os/ParcelUuid;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ffB2oltpXIWxgX00jGo5q6eBxBE(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->lambda$onJoinCalls$5(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vUXCVktmhUF0tPWOTOowenXNsjw(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->lambda$onPlaceCall$4(ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/BluetoothLeCallControl;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeCallControl$Callback;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/bluetooth/BluetoothLeCallControl$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;-><init>()V

    .line 155
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 156
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 157
    return-void
.end method

.method private synthetic blacklist lambda$onAcceptCall$0(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 172
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onAcceptCall(ILjava/util/UUID;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHoldCall$2(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 183
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onHoldCall(ILjava/util/UUID;)V

    return-void
.end method

.method private synthetic blacklist lambda$onJoinCalls$5(ILjava/util/List;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "uuids"    # Ljava/util/List;

    .line 204
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onJoinCalls(ILjava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPlaceCall$4(ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "uri"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onPlaceCall(ILjava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTerminateCall$1(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 178
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onTerminateCall(ILjava/util/UUID;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnholdCall$3(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 188
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onUnholdCall(ILjava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public blacklist onAcceptCall(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 172
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public blacklist onBearerRegistered(I)V
    .registers 5
    .param p1, "ccid"    # I

    .line 161
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    if-eqz v0, :cond_24

    .line 162
    invoke-static {}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBearerRegistered: ccid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fputmCcid(Landroid/bluetooth/BluetoothLeCallControl;I)V

    goto :goto_2d

    .line 166
    :cond_24
    invoke-static {}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBearerRegistered: mCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_2d
    return-void
.end method

.method public blacklist onHoldCall(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 183
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public blacklist onJoinCalls(ILjava/util/List;)V
    .registers 7
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p2, "parcelUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 201
    .local v2, "parcelUuid":Landroid/os/ParcelUuid;
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v2    # "parcelUuid":Landroid/os/ParcelUuid;
    goto :goto_9

    .line 204
    :cond_1d
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILjava/util/List;)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public blacklist onPlaceCall(ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "uri"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method public blacklist onTerminateCall(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 177
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public blacklist onUnholdCall(ILandroid/os/ParcelUuid;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 188
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUtils;->executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method
