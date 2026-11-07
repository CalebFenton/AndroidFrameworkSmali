.class public final Landroid/nfc/NfcOemExtension;
.super Ljava/lang/Object;
.source "NfcOemExtension.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;,
        Landroid/nfc/NfcOemExtension$Callback;,
        Landroid/nfc/NfcOemExtension$ReceiverWrapper;,
        Landroid/nfc/NfcOemExtension$CommitRoutingStatusCode;,
        Landroid/nfc/NfcOemExtension$StatusCode;,
        Landroid/nfc/NfcOemExtension$PollingStateChangeStatusCode;,
        Landroid/nfc/NfcOemExtension$HostCardEmulationAction;,
        Landroid/nfc/NfcOemExtension$NfceeTechnology;,
        Landroid/nfc/NfcOemExtension$ControllerMode;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_OEM_EXTENSION_INIT:Ljava/lang/String; = "android.nfc.action.OEM_EXTENSION_INIT"

.field public static final whitelist COMMIT_ROUTING_STATUS_FAILED:I = 0x3

.field public static final whitelist COMMIT_ROUTING_STATUS_FAILED_UPDATE_IN_PROGRESS:I = 0x6

.field public static final whitelist COMMIT_ROUTING_STATUS_OK:I = 0x0

.field public static final whitelist DISABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENABLE_DEFAULT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENABLE_EE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENABLE_TRANSPARENT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HCE_ACTIVATE:I = 0x1

.field public static final whitelist HCE_DATA_TRANSFERRED:I = 0x2

.field public static final whitelist HCE_DEACTIVATE:I = 0x3

.field public static final whitelist NFCEE_TECH_A:I = 0x1

.field public static final whitelist NFCEE_TECH_B:I = 0x2

.field public static final whitelist NFCEE_TECH_F:I = 0x4

.field public static final whitelist NFCEE_TECH_NONE:I = 0x0

.field private static final blacklist OEM_EXTENSION_RESPONSE_THRESHOLD_MS:I = 0x7d0

.field public static final whitelist POLLING_STATE_CHANGE_ALREADY_IN_REQUESTED_STATE:I = 0x2

.field public static final whitelist POLLING_STATE_CHANGE_SUCCEEDED:I = 0x1

.field public static final whitelist STATUS_OK:I = 0x0

.field public static final whitelist STATUS_UNKNOWN_ERROR:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "NfcOemExtension"

.field private static final blacklist TYPE_AID:I = 0x2

.field private static final blacklist TYPE_PROTOCOL:I = 0x1

.field private static final blacklist TYPE_SYSTEMCODE:I = 0x3

.field private static final blacklist TYPE_TECHNOLOGY:I


# instance fields
.field private final blacklist mAdapter:Landroid/nfc/NfcAdapter;

.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/nfc/NfcOemExtension$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCardEmulationActivated:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mEeListenActivated:Z

.field private blacklist mIsRegistered:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mOemNfcExtensionCallback:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

.field private blacklist mRfDiscoveryStarted:Z

.field private blacklist mRfFieldActivated:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$3eiFpVztRgXiRAeiWRflGmZBiQE(Landroid/nfc/NfcOemExtension;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/nfc/NfcOemExtension;->lambda$overwriteRoutingTable$17(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4rXvq2V6rVh4wul1h-lVfSKZ7m0(Landroid/nfc/NfcOemExtension;Landroid/nfc/NfcOemExtension$Callback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nfc/NfcOemExtension;->lambda$unregisterCallback$2(Landroid/nfc/NfcOemExtension$Callback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Js3viyGvddyoejdPDGNSmT_mtes(Landroid/nfc/NfcOemExtension;Landroid/nfc/NfcOemExtension$Callback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/nfc/NfcOemExtension;->lambda$updateNfCState$1(Landroid/nfc/NfcOemExtension$Callback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x9O9bBfCx9Lpp778tEHkW7Zyl9U(Landroid/nfc/NfcOemExtension;)V
    .registers 1

    invoke-direct {p0}, Landroid/nfc/NfcOemExtension;->lambda$registerCallback$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackMap(Landroid/nfc/NfcOemExtension;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/nfc/NfcOemExtension;->mCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/nfc/NfcOemExtension;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/nfc/NfcOemExtension;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCardEmulationActivated(Landroid/nfc/NfcOemExtension;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/nfc/NfcOemExtension;->mCardEmulationActivated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEeListenActivated(Landroid/nfc/NfcOemExtension;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/nfc/NfcOemExtension;->mEeListenActivated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRfDiscoveryStarted(Landroid/nfc/NfcOemExtension;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/nfc/NfcOemExtension;->mRfDiscoveryStarted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRfFieldActivated(Landroid/nfc/NfcOemExtension;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/nfc/NfcOemExtension;->mRfFieldActivated:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/nfc/NfcAdapter;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcOemExtension;->mIsRegistered:Z

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/nfc/NfcOemExtension;->mCallbackMap:Ljava/util/Map;

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/nfc/NfcOemExtension;->mLock:Ljava/lang/Object;

    .line 90
    iput-boolean v0, p0, Landroid/nfc/NfcOemExtension;->mCardEmulationActivated:Z

    .line 91
    iput-boolean v0, p0, Landroid/nfc/NfcOemExtension;->mRfFieldActivated:Z

    .line 92
    iput-boolean v0, p0, Landroid/nfc/NfcOemExtension;->mRfDiscoveryStarted:Z

    .line 93
    iput-boolean v0, p0, Landroid/nfc/NfcOemExtension;->mEeListenActivated:Z

    .line 531
    iput-object p1, p0, Landroid/nfc/NfcOemExtension;->mContext:Landroid/content/Context;

    .line 532
    iput-object p2, p0, Landroid/nfc/NfcOemExtension;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 533
    new-instance v0, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    invoke-direct {v0, p0}, Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;-><init>(Landroid/nfc/NfcOemExtension;)V

    iput-object v0, p0, Landroid/nfc/NfcOemExtension;->mOemNfcExtensionCallback:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    .line 534
    return-void
.end method

.method static synthetic blacklist lambda$clearPreference$3()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->clearPreference()V

    return-void
.end method

.method static synthetic blacklist lambda$forceRoutingTableCommit$19()Ljava/lang/Integer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->commitRouting()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getActiveNfceeList$6()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->fetchActiveNfceeList()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getMaxPausePollingTimeoutMills$13()Ljava/lang/Long;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getMaxPausePollingTimeoutMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getRoutingStatus$16()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->getRoutingStatus()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getRoutingTable$18()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 892
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getRoutingTableEntryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$hasUserEnabledNfc$9()Ljava/lang/Boolean;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getSettingStatus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isAutoChangeEnabled$15()Ljava/lang/Boolean;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 821
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->isAutoChangeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isTagPresent$10()Ljava/lang/Boolean;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 753
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isTagPresent()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$maybeTriggerFirmwareUpdate$5()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 672
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->checkFirmware()V

    return-void
.end method

.method private synthetic blacklist lambda$overwriteRoutingTable$17(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "emptyAidRoute"    # Ljava/lang/String;
    .param p2, "protocolRoute"    # Ljava/lang/String;
    .param p3, "technologyRoute"    # Ljava/lang/String;
    .param p4, "systemCodeRoute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 874
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension;->mContext:Landroid/content/Context;

    .line 875
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 874
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "emptyAidRoute":Ljava/lang/String;
    .end local p2    # "protocolRoute":Ljava/lang/String;
    .end local p3    # "technologyRoute":Ljava/lang/String;
    .end local p4    # "systemCodeRoute":Ljava/lang/String;
    .local v2, "emptyAidRoute":Ljava/lang/String;
    .local v3, "protocolRoute":Ljava/lang/String;
    .local v4, "technologyRoute":Ljava/lang/String;
    .local v5, "systemCodeRoute":Ljava/lang/String;
    invoke-interface/range {v0 .. v5}, Landroid/nfc/INfcCardEmulation;->overwriteRoutingTable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$pausePolling$11(J)Ljava/lang/Integer;
    .registers 3
    .param p0, "timeoutInMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0, p1}, Landroid/nfc/INfcAdapter;->pausePolling(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$registerCallback$0()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension;->mOemNfcExtensionCallback:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->registerOemExtensionCallback(Landroid/nfc/INfcOemExtensionCallback;)V

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/nfc/NfcOemExtension;->mIsRegistered:Z

    .line 596
    return-void
.end method

.method static synthetic blacklist lambda$resumePolling$12()Ljava/lang/Integer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 783
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->resumePolling()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setAutoChangeEnabled$14(Z)V
    .registers 2
    .param p0, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p0}, Landroid/nfc/INfcCardEmulation;->setAutoChangeStatus(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$setControllerAlwaysOnMode$7(I)V
    .registers 2
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->setControllerAlwaysOn(I)V

    return-void
.end method

.method static synthetic blacklist lambda$synchronizeScreenState$4()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->setScreenState()V

    return-void
.end method

.method static synthetic blacklist lambda$triggerInitialization$8()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->triggerInitialization()V

    return-void
.end method

.method private synthetic blacklist lambda$unregisterCallback$2(Landroid/nfc/NfcOemExtension$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/nfc/NfcOemExtension$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcOemExtension;->mOemNfcExtensionCallback:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->unregisterOemExtensionCallback(Landroid/nfc/INfcOemExtensionCallback;)V

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcOemExtension;->mIsRegistered:Z

    .line 637
    iget-object v0, p0, Landroid/nfc/NfcOemExtension;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    return-void
.end method

.method private synthetic blacklist lambda$updateNfCState$1(Landroid/nfc/NfcOemExtension$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/nfc/NfcOemExtension$Callback;

    .line 607
    iget-boolean v0, p0, Landroid/nfc/NfcOemExtension;->mCardEmulationActivated:Z

    invoke-interface {p1, v0}, Landroid/nfc/NfcOemExtension$Callback;->onCardEmulationActivated(Z)V

    .line 608
    iget-boolean v0, p0, Landroid/nfc/NfcOemExtension;->mRfFieldActivated:Z

    invoke-interface {p1, v0}, Landroid/nfc/NfcOemExtension$Callback;->onRfFieldDetected(Z)V

    .line 609
    iget-boolean v0, p0, Landroid/nfc/NfcOemExtension;->mRfDiscoveryStarted:Z

    invoke-interface {p1, v0}, Landroid/nfc/NfcOemExtension$Callback;->onRfDiscoveryStarted(Z)V

    .line 610
    iget-boolean v0, p0, Landroid/nfc/NfcOemExtension;->mEeListenActivated:Z

    invoke-interface {p1, v0}, Landroid/nfc/NfcOemExtension$Callback;->onEeListenActivated(Z)V

    .line 611
    return-void
.end method

.method private blacklist routeStringToInt(Ljava/lang/String;)I
    .registers 5
    .param p1, "route"    # Ljava/lang/String;

    .line 1217
    const-string v0, "DH"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1218
    const/4 v0, 0x0

    return v0

    .line 1219
    :cond_a
    const-string v0, "eSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1220
    const/4 v0, 0x1

    return v0

    .line 1221
    :cond_14
    const-string v0, "SIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1222
    const/4 v0, 0x2

    return v0

    .line 1223
    :cond_1e
    const-string v0, "NDEF-NFCEE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1224
    const/4 v0, 0x4

    return v0

    .line 1226
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateNfCState(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "callback"    # Landroid/nfc/NfcOemExtension$Callback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 604
    if-eqz p1, :cond_11

    .line 605
    const-string v0, "NfcOemExtension"

    const-string v1, "updateNfCState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda14;-><init>(Landroid/nfc/NfcOemExtension;Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 613
    :cond_11
    return-void
.end method


# virtual methods
.method public whitelist clearPreference()V
    .registers 2

    .line 652
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 653
    return-void
.end method

.method public whitelist forceRoutingTableCommit()I
    .registers 3

    .line 928
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda17;-><init>()V

    .line 929
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 928
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getActiveNfceeList()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 691
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda18;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getMaxPausePollingTimeoutMills()J
    .registers 4

    .line 795
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda5;-><init>()V

    .line 796
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 795
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getOemNfcExtensionCallback()Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;
    .registers 2

    .line 539
    iget-object v0, p0, Landroid/nfc/NfcOemExtension;->mOemNfcExtensionCallback:Landroid/nfc/NfcOemExtension$NfcOemExtensionCallback;

    return-object v0
.end method

.method public whitelist getRoutingStatus()Landroid/nfc/RoutingStatus;
    .registers 6

    .line 834
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 836
    .local v0, "status":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/nfc/RoutingStatus;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/nfc/NfcOemExtension;->routeStringToInt(Ljava/lang/String;)I

    move-result v2

    .line 837
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/nfc/NfcOemExtension;->routeStringToInt(Ljava/lang/String;)I

    move-result v3

    .line 838
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/nfc/NfcOemExtension;->routeStringToInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/nfc/RoutingStatus;-><init>(III)V

    .line 836
    return-object v1
.end method

.method public whitelist getRoutingTable()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nfc/NfcRoutingTableEntry;",
            ">;"
        }
    .end annotation

    .line 891
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda13;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 893
    .local v0, "entryList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/Entry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NfcRoutingTableEntry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/Entry;

    .line 895
    .local v3, "entry":Landroid/nfc/Entry;
    invoke-virtual {v3}, Landroid/nfc/Entry;->getType()B

    move-result v4

    packed-switch v4, :pswitch_data_9e

    goto :goto_9a

    .line 910
    :pswitch_29
    new-instance v4, Landroid/nfc/RoutingTableSystemCodeEntry;

    .line 911
    invoke-virtual {v3}, Landroid/nfc/Entry;->getNfceeId()B

    move-result v5

    .line 912
    invoke-virtual {v3}, Landroid/nfc/Entry;->getEntry()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 913
    invoke-virtual {v3}, Landroid/nfc/Entry;->getRoutingType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/nfc/NfcOemExtension;->routeStringToInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Landroid/nfc/RoutingTableSystemCodeEntry;-><init>(I[BI)V

    .line 910
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 906
    :pswitch_48
    new-instance v4, Landroid/nfc/RoutingTableAidEntry;

    .line 907
    invoke-virtual {v3}, Landroid/nfc/Entry;->getNfceeId()B

    move-result v5

    invoke-virtual {v3}, Landroid/nfc/Entry;->getEntry()Ljava/lang/String;

    move-result-object v6

    .line 908
    invoke-virtual {v3}, Landroid/nfc/Entry;->getRoutingType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/nfc/NfcOemExtension;->routeStringToInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Landroid/nfc/RoutingTableAidEntry;-><init>(ILjava/lang/String;I)V

    .line 906
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 901
    :pswitch_61
    new-instance v4, Landroid/nfc/RoutingTableProtocolEntry;

    .line 902
    invoke-virtual {v3}, Landroid/nfc/Entry;->getNfceeId()B

    move-result v5

    .line 903
    invoke-virtual {v3}, Landroid/nfc/Entry;->getEntry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/nfc/RoutingTableProtocolEntry;->protocolStringToInt(Ljava/lang/String;)I

    move-result v6

    .line 904
    invoke-virtual {v3}, Landroid/nfc/Entry;->getRoutingType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/nfc/NfcOemExtension;->routeStringToInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Landroid/nfc/RoutingTableProtocolEntry;-><init>(III)V

    .line 901
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 896
    :pswitch_7e
    new-instance v4, Landroid/nfc/RoutingTableTechnologyEntry;

    .line 897
    invoke-virtual {v3}, Landroid/nfc/Entry;->getNfceeId()B

    move-result v5

    .line 898
    invoke-virtual {v3}, Landroid/nfc/Entry;->getEntry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/nfc/RoutingTableTechnologyEntry;->techStringToInt(Ljava/lang/String;)I

    move-result v6

    .line 899
    invoke-virtual {v3}, Landroid/nfc/Entry;->getRoutingType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/nfc/NfcOemExtension;->routeStringToInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Landroid/nfc/RoutingTableTechnologyEntry;-><init>(III)V

    .line 896
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    .end local v3    # "entry":Landroid/nfc/Entry;
    :goto_9a
    goto/16 :goto_15

    .line 917
    :cond_9c
    return-object v1

    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_61
        :pswitch_48
        :pswitch_29
    .end packed-switch
.end method

.method public whitelist getT4tNdefNfcee()Landroid/nfc/T4tNdefNfcee;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 561
    invoke-static {}, Landroid/nfc/T4tNdefNfcee;->getInstance()Landroid/nfc/T4tNdefNfcee;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasUserEnabledNfc()Z
    .registers 3

    .line 743
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda6;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isAutoChangeEnabled()Z
    .registers 3

    .line 820
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda2;-><init>()V

    .line 821
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 820
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isTagPresent()Z
    .registers 3

    .line 753
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda12;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist maybeTriggerFirmwareUpdate()V
    .registers 2

    .line 672
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 673
    return-void
.end method

.method public whitelist overwriteRoutingTable(IIII)V
    .registers 11
    .param p1, "protocol"    # I
    .param p2, "technology"    # I
    .param p3, "emptyAid"    # I
    .param p4, "systemCode"    # I

    .line 868
    invoke-static {p1}, Landroid/nfc/cardemulation/CardEmulation;->routeIntToString(I)Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, "protocolRoute":Ljava/lang/String;
    invoke-static {p2}, Landroid/nfc/cardemulation/CardEmulation;->routeIntToString(I)Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, "technologyRoute":Ljava/lang/String;
    invoke-static {p3}, Landroid/nfc/cardemulation/CardEmulation;->routeIntToString(I)Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, "emptyAidRoute":Ljava/lang/String;
    invoke-static {p4}, Landroid/nfc/cardemulation/CardEmulation;->routeIntToString(I)Ljava/lang/String;

    move-result-object v5

    .line 873
    .local v5, "systemCodeRoute":Ljava/lang/String;
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda16;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda16;-><init>(Landroid/nfc/NfcOemExtension;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 881
    return-void
.end method

.method public whitelist pausePolling(J)I
    .registers 5
    .param p1, "timeoutInMs"    # J

    .line 769
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda10;-><init>(J)V

    .line 771
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 769
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/nfc/NfcOemExtension$Callback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/nfc/NfcOemExtension$Callback;

    .line 580
    iget-object v0, p0, Landroid/nfc/NfcOemExtension;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    if-eqz p1, :cond_33

    if-eqz p2, :cond_33

    .line 586
    :try_start_7
    iget-object v1, p0, Landroid/nfc/NfcOemExtension;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 591
    iget-object v1, p0, Landroid/nfc/NfcOemExtension;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-boolean v1, p0, Landroid/nfc/NfcOemExtension;->mIsRegistered:Z

    if-nez v1, :cond_21

    .line 593
    new-instance v1, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda11;-><init>(Landroid/nfc/NfcOemExtension;)V

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    goto :goto_24

    .line 598
    :cond_21
    invoke-direct {p0, p2, p1}, Landroid/nfc/NfcOemExtension;->updateNfCState(Landroid/nfc/NfcOemExtension$Callback;Ljava/util/concurrent/Executor;)V

    .line 600
    :goto_24
    monitor-exit v0

    .line 601
    return-void

    .line 587
    :cond_26
    const-string v1, "NfcOemExtension"

    const-string v2, "Callback already registered. Unregister existing callback beforeregistering"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcOemExtension;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/nfc/NfcOemExtension$Callback;
    throw v1

    .line 582
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/nfc/NfcOemExtension$Callback;
    :cond_33
    const-string v1, "NfcOemExtension"

    const-string v2, "Executor and Callback must not be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcOemExtension;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/nfc/NfcOemExtension$Callback;
    throw v1

    .line 600
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/nfc/NfcOemExtension$Callback;
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public whitelist resumePolling()I
    .registers 3

    .line 782
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda9;-><init>()V

    .line 784
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 782
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist setAutoChangeEnabled(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 808
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda15;-><init>(Z)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 810
    return-void
.end method

.method public whitelist setControllerAlwaysOnMode(I)V
    .registers 3
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 719
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v0, :cond_f

    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasCeFeature:Z

    if-eqz v0, :cond_9

    goto :goto_f

    .line 720
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 722
    :cond_f
    :goto_f
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 723
    return-void
.end method

.method public whitelist synchronizeScreenState()V
    .registers 2

    .line 661
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 662
    return-void
.end method

.method public whitelist triggerInitialization()V
    .registers 2

    .line 733
    new-instance v0, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 734
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/nfc/NfcOemExtension$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/nfc/NfcOemExtension$Callback;

    .line 628
    iget-object v0, p0, Landroid/nfc/NfcOemExtension;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_3
    iget-object v1, p0, Landroid/nfc/NfcOemExtension;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Landroid/nfc/NfcOemExtension;->mIsRegistered:Z

    if-eqz v1, :cond_28

    .line 633
    iget-object v1, p0, Landroid/nfc/NfcOemExtension;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 634
    new-instance v1, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcOemExtension$$ExternalSyntheticLambda3;-><init>(Landroid/nfc/NfcOemExtension;Landroid/nfc/NfcOemExtension$Callback;)V

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    goto :goto_26

    .line 640
    :cond_21
    iget-object v1, p0, Landroid/nfc/NfcOemExtension;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :goto_26
    monitor-exit v0

    .line 643
    return-void

    .line 630
    :cond_28
    const-string v1, "NfcOemExtension"

    const-string v2, "Callback not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcOemExtension;
    .end local p1    # "callback":Landroid/nfc/NfcOemExtension$Callback;
    throw v1

    .line 642
    .restart local p0    # "this":Landroid/nfc/NfcOemExtension;
    .restart local p1    # "callback":Landroid/nfc/NfcOemExtension$Callback;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method
