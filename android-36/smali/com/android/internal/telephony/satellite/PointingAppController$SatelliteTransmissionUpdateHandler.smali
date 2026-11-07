.class final Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;
.super Landroid/os/Handler;
.source "PointingAppController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/PointingAppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SatelliteTransmissionUpdateHandler"
.end annotation


# static fields
.field public static final blacklist EVENT_DATAGRAM_TRANSFER_STATE_CHANGED:I = 0x4

.field public static final blacklist EVENT_POSITION_INFO_CHANGED:I = 0x1

.field public static final blacklist EVENT_RECEIVE_DATAGRAM_STATE_CHANGED:I = 0x3

.field public static final blacklist EVENT_SEND_DATAGRAM_REQUESTED:I = 0x5

.field public static final blacklist EVENT_SEND_DATAGRAM_STATE_CHANGED:I = 0x2


# instance fields
.field private final blacklist mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$5faRvxSw-BUQojLXhkZfNyngZpk(ILjava/util/List;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 5

    .line 289
    :try_start_0
    invoke-interface {p2, p0}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;->onSendDatagramRequested(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SEND_DATAGRAM_REQUESTED RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 292
    invoke-interface {p2}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NxtxZheHq0_K2v8MtGD4xAz4b4g(Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->lambda$handleMessage$3(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$REbvDwlblbSaxAJeNWZNkuAhJmU(Landroid/telephony/satellite/PointingInfo;Ljava/util/List;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 5

    .line 224
    :try_start_0
    invoke-interface {p2, p0}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;->onSatellitePositionChanged(Landroid/telephony/satellite/PointingInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_POSITION_INFO_CHANGED RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 227
    invoke-interface {p2}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TanZEYsdOvO7REYZU0GCcPK_p38(Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->lambda$handleMessage$1(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UGZ5m_yHYBuW226wCdPEqq3GELA(Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->lambda$handleMessage$7(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XiUSexeVbMSU1Yo4o-lbwge1vNs(Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->lambda$handleMessage$5(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fYdUkv3CmOKmJre-ppzjsSyNH_M(Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;Ljava/util/List;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 6

    .line 249
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;->datagramType:I

    iget v1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;->datagramTransferState:I

    iget v2, p0, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;->pendingCount:I

    iget p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;->errorCode:I

    invoke-interface {p2, v0, v1, v2, p0}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;->onSendDatagramStateChanged(IIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SEND_DATAGRAM_STATE_CHANGED RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 254
    invoke-interface {p2}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tg99K65PYy7W2QCgpciGawR4umA(Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;Ljava/util/List;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 5

    .line 270
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;->datagramTransferState:I

    iget v1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;->pendingCount:I

    iget p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;->errorCode:I

    invoke-interface {p2, v0, v1, p0}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;->onReceiveDatagramStateChanged(III)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RECEIVE_DATAGRAM_STATE_CHANGED RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 274
    invoke-interface {p2}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Looper;)V
    .registers 2

    .line 199
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 200
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$1(Landroid/os/IBinder;)V
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$3(Landroid/os/IBinder;)V
    .registers 2

    .line 258
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$5(Landroid/os/IBinder;)V
    .registers 2

    .line 278
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$7(Landroid/os/IBinder;)V
    .registers 2

    .line 296
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist addListener(Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 3

    .line 204
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_bc

    const/4 v1, 0x2

    if-eq v0, v1, :cond_97

    const/4 v1, 0x3

    if-eq v0, v1, :cond_72

    const/4 v1, 0x4

    if-eq v0, v1, :cond_51

    const/4 v1, 0x5

    if-eq v0, v1, :cond_28

    .line 302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SatelliteTransmissionUpdateHandler unknown event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$smloge(Ljava/lang/String;)V

    return-void

    .line 284
    :cond_28
    const-string v0, "Received EVENT_SEND_DATAGRAM_REQUESTED"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 285
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda6;-><init>(ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 295
    new-instance p1, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;)V

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 237
    :cond_51
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive EVENT_DATAGRAM_TRANSFER_STATE_CHANGED state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$smlogd(Ljava/lang/String;)V

    return-void

    .line 264
    :cond_72
    const-string v0, "Received EVENT_RECEIVE_DATAGRAM_STATE_CHANGED"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 265
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 277
    new-instance p1, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;)V

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 243
    :cond_97
    const-string v0, "Received EVENT_SEND_DATAGRAM_STATE_CHANGED"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/PointingAppController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 244
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/satellite/PointingAppController$DatagramTransferStateHandlerRequest;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 257
    new-instance p1, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;)V

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 219
    :cond_bc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 220
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/satellite/PointingInfo;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/PointingInfo;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 230
    new-instance p1, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;)V

    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist hasListeners()Z
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist removeListener(Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 2

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/PointingAppController$SatelliteTransmissionUpdateHandler;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
