.class Landroid/nfc/cardemulation/CardEmulation$1;
.super Landroid/nfc/INfcEventCallback$Stub;
.source "CardEmulation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/CardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/nfc/cardemulation/CardEmulation;


# direct methods
.method constructor blacklist <init>(Landroid/nfc/cardemulation/CardEmulation;)V
    .registers 2
    .param p1, "this$0"    # Landroid/nfc/cardemulation/CardEmulation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1426
    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$1;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    invoke-direct {p0}, Landroid/nfc/INfcEventCallback$Stub;-><init>()V

    return-void
.end method

.method private blacklist callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V
    .registers 5
    .param p1, "listenerCall"    # Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;

    .line 1497
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$1;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->-$$Nest$fgetmNfcEventCallbacks(Landroid/nfc/cardemulation/CardEmulation;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 1498
    :try_start_7
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$1;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->-$$Nest$fgetmNfcEventCallbacks(Landroid/nfc/cardemulation/CardEmulation;)Landroid/util/ArrayMap;

    move-result-object v1

    new-instance v2, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda4;-><init>(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1502
    monitor-exit v0

    .line 1503
    return-void

    .line 1502
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method static synthetic blacklist lambda$callListeners$8(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 2
    .param p0, "listenerCall"    # Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1500
    invoke-interface {p0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;->invoke(Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$callListeners$9(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p0, "listenerCall"    # Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1500
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda6;-><init>(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1501
    return-void
.end method

.method static synthetic blacklist lambda$onAidConflictOccurred$3(Ljava/lang/String;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 2
    .param p0, "aid"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1461
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onAidConflictOccurred(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onAidNotRouted$4(Ljava/lang/String;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 2
    .param p0, "aid"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1468
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onAidNotRouted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onInternalErrorReported$7(ILandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 2
    .param p0, "errorType"    # I
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1489
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onInternalErrorReported(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onNfcStateChanged$5(ILandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 2
    .param p0, "state"    # I
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1475
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onNfcStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onObserveModeDisabledInFirmware$2(Landroid/nfc/cardemulation/PollingFrame;Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 2
    .param p0, "exitFrame"    # Landroid/nfc/cardemulation/PollingFrame;
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1454
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onObserveModeDisabledInFirmware(Landroid/nfc/cardemulation/PollingFrame;)V

    return-void
.end method

.method static synthetic blacklist lambda$onObserveModeStateChanged$1(ZLandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 2
    .param p0, "isEnabled"    # Z
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1447
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onObserveModeStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onPreferredServiceChanged$0(ZLandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 2
    .param p0, "isPreferred"    # Z
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1440
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onPreferredServiceChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onRemoteFieldChanged$6(ZLandroid/nfc/cardemulation/CardEmulation$NfcEventCallback;)V
    .registers 2
    .param p0, "isDetected"    # Z
    .param p1, "listener"    # Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;

    .line 1482
    invoke-interface {p1, p0}, Landroid/nfc/cardemulation/CardEmulation$NfcEventCallback;->onRemoteFieldChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onAidConflictOccurred(Ljava/lang/String;)V
    .registers 3
    .param p1, "aid"    # Ljava/lang/String;

    .line 1458
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1459
    return-void

    .line 1461
    :cond_7
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1462
    return-void
.end method

.method public blacklist onAidNotRouted(Ljava/lang/String;)V
    .registers 3
    .param p1, "aid"    # Ljava/lang/String;

    .line 1465
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1466
    return-void

    .line 1468
    :cond_7
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1469
    return-void
.end method

.method public blacklist onInternalErrorReported(I)V
    .registers 3
    .param p1, "errorType"    # I

    .line 1486
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1487
    return-void

    .line 1489
    :cond_7
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1490
    return-void
.end method

.method public blacklist onNfcStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .line 1472
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1473
    return-void

    .line 1475
    :cond_7
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1476
    return-void
.end method

.method public blacklist onObserveModeDisabledInFirmware(Landroid/nfc/cardemulation/PollingFrame;)V
    .registers 3
    .param p1, "exitFrame"    # Landroid/nfc/cardemulation/PollingFrame;

    .line 1451
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1452
    return-void

    .line 1454
    :cond_7
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda8;-><init>(Landroid/nfc/cardemulation/PollingFrame;)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1455
    return-void
.end method

.method public blacklist onObserveModeStateChanged(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z

    .line 1444
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1445
    return-void

    .line 1447
    :cond_7
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1448
    return-void
.end method

.method public blacklist onPreferredServiceChanged(Landroid/nfc/ComponentNameAndUser;)V
    .registers 4
    .param p1, "componentNameAndUser"    # Landroid/nfc/ComponentNameAndUser;

    .line 1428
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1429
    return-void

    .line 1431
    :cond_7
    if-eqz p1, :cond_39

    .line 1433
    invoke-virtual {p1}, Landroid/nfc/ComponentNameAndUser;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$1;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v1, v1, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 1434
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v0, v1, :cond_39

    .line 1435
    invoke-virtual {p1}, Landroid/nfc/ComponentNameAndUser;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$1;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v0, v0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 1437
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1438
    invoke-virtual {p1}, Landroid/nfc/ComponentNameAndUser;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1439
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1436
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    .line 1440
    .local v0, "isPreferred":Z
    :goto_3a
    new-instance v1, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-direct {p0, v1}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1441
    return-void
.end method

.method public blacklist onRemoteFieldChanged(Z)V
    .registers 3
    .param p1, "isDetected"    # Z

    .line 1479
    invoke-static {}, Lcom/android/nfc/x/android/nfc/Flags;->nfcEventListener()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1480
    return-void

    .line 1482
    :cond_7
    new-instance v0, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/nfc/cardemulation/CardEmulation$1$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-direct {p0, v0}, Landroid/nfc/cardemulation/CardEmulation$1;->callListeners(Landroid/nfc/cardemulation/CardEmulation$1$ListenerCall;)V

    .line 1483
    return-void
.end method
