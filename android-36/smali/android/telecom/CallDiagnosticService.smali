.class public abstract Landroid/telecom/CallDiagnosticService;
.super Landroid/app/Service;
.source "CallDiagnosticService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallDiagnosticService"


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

.field private final blacklist mCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call$Details;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDiagnosticCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/CallDiagnostics;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$3vbqIExCyIhISmunk1D_iCb7UAE(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->lambda$handleBluetoothCallQualityReport$4(Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XQOrrV2eTQXcCYv45uNhD_aEROU(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->lambda$handleCallRemoved$2(Landroid/telecom/CallDiagnostics;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iCptmB9yLGHEJYrokTsSX-iL0Tg(Landroid/telecom/CallDiagnosticService;Landroid/telecom/Call$Details;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->lambda$handleCallAdded$0(Landroid/telecom/Call$Details;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBluetoothCallQualityReport(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallAdded(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallAdded(Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallDisconnected(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallQualityChanged(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleCallQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallRemoved(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallUpdated(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallUpdated(Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleClearDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleReceivedD2DMessage(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleReceivedD2DMessage(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetAdapter(Landroid/telecom/CallDiagnosticService;Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleSetAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 127
    new-instance v0, Landroid/telecom/CallDiagnosticService$1;

    invoke-direct {v0, p0}, Landroid/telecom/CallDiagnosticService$1;-><init>(Landroid/telecom/CallDiagnosticService;)V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    .line 160
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist handleBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V
    .registers 4
    .param p1, "qualityReport"    # Landroid/telecom/BluetoothCallQualityReport;

    .line 388
    const-string/jumbo v0, "handleBluetoothCallQualityReport; report=%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method private blacklist handleCallAdded(Landroid/telecom/ParcelableCall;)V
    .registers 6
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .line 263
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "telecomCallId":Ljava/lang/String;
    const-string/jumbo v1, "handleCallAdded: callId=%s - added"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v1

    .line 266
    .local v1, "newCallDetails":Landroid/telecom/Call$Details;
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 267
    :try_start_15
    iget-object v3, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_28

    .line 270
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v0}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/Call$Details;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void

    .line 268
    :catchall_28
    move-exception v3

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method private blacklist handleCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .registers 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 359
    const-string/jumbo v0, "handleCallDisconnected: call=%s; cause=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_d
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    .line 363
    .local v1, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_44

    .line 365
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 366
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/telecom/CallDiagnostics;->onCallDisconnected(Landroid/telephony/ims/ImsReasonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "message":Ljava/lang/CharSequence;
    goto :goto_32

    .line 368
    .end local v0    # "message":Ljava/lang/CharSequence;
    :cond_25
    nop

    .line 369
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getTelephonyDisconnectCause()I

    move-result v0

    .line 370
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getTelephonyPreciseDisconnectCause()I

    move-result v2

    .line 368
    invoke-virtual {v1, v0, v2}, Landroid/telecom/CallDiagnostics;->onCallDisconnected(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 373
    .restart local v0    # "message":Ljava/lang/CharSequence;
    :goto_32
    :try_start_32
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->overrideDisconnectMessage(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38

    .line 377
    goto :goto_43

    .line 374
    :catch_38
    move-exception v2

    .line 375
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "handleCallDisconnected: call=%s; cause=%s; %s"

    filled-new-array {p1, p2, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_43
    return-void

    .line 363
    .end local v0    # "message":Ljava/lang/CharSequence;
    .end local v1    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method private blacklist handleCallQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callQuality"    # Landroid/telephony/CallQuality;

    .line 399
    const-string/jumbo v0, "handleCallQualityChanged; call=%s, cq=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_d
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    .line 403
    .local v1, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1c

    .line 404
    if-eqz v1, :cond_1b

    .line 405
    invoke-virtual {v1, p2}, Landroid/telecom/CallDiagnostics;->onCallQualityReceived(Landroid/telephony/CallQuality;)V

    .line 407
    :cond_1b
    return-void

    .line 403
    .end local v1    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private blacklist handleCallRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1, "telecomCallId"    # Ljava/lang/String;

    .line 311
    const-string/jumbo v0, "handleCallRemoved: callId=%s - removed"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_d
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 316
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_1a
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 320
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    .local v1, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    goto :goto_2c

    .line 322
    .end local v1    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :cond_2b
    const/4 v1, 0x0

    .line 324
    .restart local v1    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_3c

    .line 327
    if-eqz v1, :cond_3b

    .line 328
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 330
    :cond_3b
    return-void

    .line 324
    .end local v1    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private blacklist handleCallUpdated(Landroid/telecom/ParcelableCall;)V
    .registers 7
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .line 291
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "telecomCallId":Ljava/lang/String;
    const-string/jumbo v1, "handleCallUpdated: callId=%s - updated"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-static {p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v1

    .line 295
    .local v1, "newCallDetails":Landroid/telecom/Call$Details;
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 296
    :try_start_15
    iget-object v3, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallDiagnostics;

    .line 297
    .local v3, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    if-nez v3, :cond_21

    .line 299
    monitor-exit v2

    return-void

    .line 301
    :cond_21
    iget-object v4, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_34

    .line 303
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, v1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/CallDiagnostics;Landroid/telecom/Call$Details;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 304
    return-void

    .line 302
    .end local v3    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :catchall_34
    move-exception v3

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v3
.end method

.method private blacklist handleClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V
    .registers 7
    .param p1, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p2, "messageId"    # I

    .line 457
    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "callId":Ljava/lang/String;
    :try_start_4
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->clearDiagnosticMessage(Ljava/lang/String;I)V

    .line 460
    const-string/jumbo v1, "handleClearDiagnosticMessage: call=%s; msg=%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    .line 464
    goto :goto_28

    .line 461
    :catch_18
    move-exception v1

    .line 462
    .local v1, "e":Landroid/os/RemoteException;
    nop

    .line 463
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 462
    const-string/jumbo v3, "handleClearDiagnosticMessage: call=%s; msg=%d failed %s"

    invoke-static {p0, v3, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method private blacklist handleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V
    .registers 8
    .param p1, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p2, "messageId"    # I
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 438
    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "callId":Ljava/lang/String;
    :try_start_4
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->displayDiagnosticMessage(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 441
    const-string/jumbo v1, "handleDisplayDiagnosticMessage: call=%s; msg=%d/%s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    .line 446
    goto :goto_28

    .line 443
    :catch_18
    move-exception v1

    .line 444
    .local v1, "e":Landroid/os/RemoteException;
    nop

    .line 445
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2, p3, v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 444
    const-string/jumbo v3, "handleDisplayDiagnosticMessage: call=%s; msg=%d/%s failed %s"

    invoke-static {p0, v3, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method private blacklist handleReceivedD2DMessage(Ljava/lang/String;II)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "value"    # I

    .line 340
    const-string/jumbo v0, "handleReceivedD2DMessage: callId=%s, msg=%d/%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_15
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    .line 344
    .local v1, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_2d

    .line 345
    if-eqz v1, :cond_2c

    .line 346
    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p2, p3}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;-><init>(Landroid/telecom/CallDiagnostics;II)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 349
    :cond_2c
    return-void

    .line 344
    .end local v1    # "callDiagnostics":Landroid/telecom/CallDiagnostics;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private blacklist handleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V
    .registers 8
    .param p1, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p2, "message"    # I
    .param p3, "value"    # I

    .line 418
    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "callId":Ljava/lang/String;
    :try_start_4
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->sendDeviceToDeviceMessage(Ljava/lang/String;II)V

    .line 421
    const-string/jumbo v1, "handleSendDeviceToDeviceMessage: call=%s; msg=%d/%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 422
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 421
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    .line 426
    goto :goto_30

    .line 423
    :catch_1c
    move-exception v1

    .line 424
    .local v1, "e":Landroid/os/RemoteException;
    nop

    .line 425
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 424
    const-string/jumbo v3, "handleSendDeviceToDeviceMessage: call=%s; msg=%d/%d failed %s"

    invoke-static {p0, v3, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method private blacklist handleSetAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    .line 255
    iput-object p1, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    .line 256
    return-void
.end method

.method private synthetic blacklist lambda$handleBluetoothCallQualityReport$4(Landroid/telecom/BluetoothCallQualityReport;)V
    .registers 2
    .param p1, "qualityReport"    # Landroid/telecom/BluetoothCallQualityReport;

    .line 389
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onBluetoothCallQualityReportReceived(Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleCallAdded$0(Landroid/telecom/Call$Details;Ljava/lang/String;)V
    .registers 6
    .param p1, "newCallDetails"    # Landroid/telecom/Call$Details;
    .param p2, "telecomCallId"    # Ljava/lang/String;

    .line 271
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onInitializeCallDiagnostics(Landroid/telecom/Call$Details;)Landroid/telecom/CallDiagnostics;

    move-result-object v0

    .line 272
    .local v0, "callDiagnostics":Landroid/telecom/CallDiagnostics;
    if-eqz v0, :cond_1b

    .line 276
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_9
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/CallDiagnostics;->setListener(Landroid/telecom/CallDiagnostics$Listener;)V

    .line 278
    invoke-virtual {v0, p2}, Landroid/telecom/CallDiagnostics;->setCallId(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw v2

    .line 273
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A valid DiagnosticCall instance was not provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private synthetic blacklist lambda$handleCallRemoved$2(Landroid/telecom/CallDiagnostics;)V
    .registers 2
    .param p1, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;

    .line 328
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onRemoveCallDiagnostics(Landroid/telecom/CallDiagnostics;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleCallUpdated$1(Landroid/telecom/CallDiagnostics;Landroid/telecom/Call$Details;)V
    .registers 2
    .param p0, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p1, "newCallDetails"    # Landroid/telecom/Call$Details;

    .line 303
    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnostics;->handleCallUpdated(Landroid/telecom/Call$Details;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleReceivedD2DMessage$3(Landroid/telecom/CallDiagnostics;II)V
    .registers 3
    .param p0, "callDiagnostics"    # Landroid/telecom/CallDiagnostics;
    .param p1, "message"    # I
    .param p2, "value"    # I

    .line 347
    invoke-virtual {p0, p1, p2}, Landroid/telecom/CallDiagnostics;->onReceiveDeviceToDeviceMessage(II)V

    return-void
.end method


# virtual methods
.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .registers 3

    .line 192
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 176
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onBind!"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance v0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnosticService-IA;)V

    return-object v0
.end method

.method public abstract whitelist onBluetoothCallQualityReportReceived(Landroid/telecom/BluetoothCallQualityReport;)V
.end method

.method public abstract whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
.end method

.method public abstract whitelist onInitializeCallDiagnostics(Landroid/telecom/Call$Details;)Landroid/telecom/CallDiagnostics;
.end method

.method public abstract whitelist onRemoveCallDiagnostics(Landroid/telecom/CallDiagnostics;)V
.end method
