.class public Lcom/android/ims/MmTelFeatureConnection;
.super Lcom/android/ims/FeatureConnection;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;,
        Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;,
        Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;,
        Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;,
        Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;
    }
.end annotation


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "MmTelFeatureConn"


# instance fields
.field private final blacklist mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

.field private blacklist mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/MmTelFeatureConnection$BinderAccessState<",
            "Lcom/android/ims/ImsEcbm;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEmergencyRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

.field private blacklist mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

.field private blacklist mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/MmTelFeatureConnection$BinderAccessState<",
            "Lcom/android/ims/ImsMultiEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

.field private final blacklist mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

.field private blacklist mSupportsEmergencyCalling:Z

.field private blacklist mUt:Lcom/android/ims/ImsUt;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetServiceInterface(Lcom/android/ims/MmTelFeatureConnection;Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsMmTelFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "subId"    # I
    .param p4, "f"    # Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .param p5, "c"    # Landroid/telephony/ims/aidl/IImsConfig;
    .param p6, "r"    # Landroid/telephony/ims/aidl/IImsRegistration;
    .param p7, "s"    # Landroid/telephony/ims/aidl/ISipTransport;

    .line 302
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "slotId":I
    .end local p3    # "subId":I
    .end local p5    # "c":Landroid/telephony/ims/aidl/IImsConfig;
    .end local p6    # "r":Landroid/telephony/ims/aidl/IImsRegistration;
    .end local p7    # "s":Landroid/telephony/ims/aidl/ISipTransport;
    .local v1, "context":Landroid/content/Context;
    .local v2, "slotId":I
    .local v3, "subId":I
    .local v4, "c":Landroid/telephony/ims/aidl/IImsConfig;
    .local v5, "r":Landroid/telephony/ims/aidl/IImsRegistration;
    .local v6, "s":Landroid/telephony/ims/aidl/ISipTransport;
    invoke-direct/range {v0 .. v6}, Lcom/android/ims/FeatureConnection;-><init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V

    .line 287
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    .line 288
    new-instance p2, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {p2, p1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 290
    new-instance p2, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {p2, p1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 304
    if-eqz p4, :cond_22

    invoke-interface {p4}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    invoke-virtual {p0, p1}, Lcom/android/ims/MmTelFeatureConnection;->setBinder(Landroid/os/IBinder;)V

    .line 305
    new-instance p1, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    iget-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p0, v1, p2}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    .line 306
    new-instance p1, Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

    iget-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p0, v1, p2}, Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/ims/MmTelFeatureConnection;->mEmergencyRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

    .line 308
    new-instance p1, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    iget-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p0, v1, p2}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    .line 309
    new-instance p1, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    iget-object p2, v0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p0, v1, p2}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    .line 310
    return-void
.end method

.method private blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 3
    .param p1, "b"    # Landroid/os/IBinder;

    .line 725
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setEcbmInterface(Lcom/android/ims/ImsEcbmStateListener;)V
    .registers 6
    .param p1, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-nez v1, :cond_42

    .line 527
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 528
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    .line 529
    .local v1, "imsEcbm":Lcom/android/ims/internal/IImsEcbm;
    if-eqz v1, :cond_24

    new-instance v2, Lcom/android/ims/ImsEcbm;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsEcbm;-><init>(Lcom/android/ims/internal/IImsEcbm;)V

    invoke-static {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->of(Ljava/lang/Object;)Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    move-result-object v2

    goto :goto_2a

    .line 530
    :cond_24
    new-instance v2, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    :goto_2a
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 531
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    .line 533
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsEcbm;

    invoke-virtual {v2, p1}, Lcom/android/ims/ImsEcbm;->setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 535
    .end local v1    # "imsEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_40
    monitor-exit v0

    .line 536
    return-void

    .line 524
    :cond_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ECBM interface already open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .end local p1    # "ecbmListener":Lcom/android/ims/ImsEcbmStateListener;
    throw v1

    .line 535
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .restart local p1    # "ecbmListener":Lcom/android/ims/ImsEcbmStateListener;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private blacklist setMultiEndpointInterface(Lcom/android/ims/ImsExternalCallStateListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-nez v1, :cond_42

    .line 564
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 565
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    .line 566
    .local v1, "imEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    if-eqz v1, :cond_24

    .line 567
    new-instance v2, Lcom/android/ims/ImsMultiEndpoint;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsMultiEndpoint;-><init>(Lcom/android/ims/internal/IImsMultiEndpoint;)V

    invoke-static {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->of(Ljava/lang/Object;)Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    move-result-object v2

    goto :goto_2a

    .line 568
    :cond_24
    new-instance v2, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    :goto_2a
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 569
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    .line 571
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsMultiEndpoint;

    invoke-virtual {v2, p1}, Lcom/android/ims/ImsMultiEndpoint;->setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 573
    .end local v1    # "imEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    :cond_40
    monitor-exit v0

    .line 574
    return-void

    .line 561
    :cond_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "multiendpoint interface is already open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .end local p1    # "listener":Lcom/android/ims/ImsExternalCallStateListener;
    throw v1

    .line 573
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .restart local p1    # "listener":Lcom/android/ims/ImsExternalCallStateListener;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method


# virtual methods
.method public blacklist acknowledgeSms(III)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 596
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSms(III)V

    .line 597
    monitor-exit v0

    .line 598
    return-void

    .line 597
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist acknowledgeSms(III[B)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 604
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSmsWithPdu(III[B)V

    .line 605
    monitor-exit v0

    .line 606
    return-void

    .line 605
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist acknowledgeSmsReport(III)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 612
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSmsReport(III)V

    .line 613
    monitor-exit v0

    .line 614
    return-void

    .line 613
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 414
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->addCallback(Landroid/os/IInterface;)V

    .line 415
    return-void
.end method

.method public blacklist addCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I

    .line 419
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 420
    return-void
.end method

.method public blacklist addEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 405
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mEmergencyRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 406
    return-void
.end method

.method public blacklist addProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 433
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 434
    return-void
.end method

.method public blacklist addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 386
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->addCallback(Landroid/os/IInterface;)V

    .line 387
    return-void
.end method

.method public blacklist addRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 391
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 392
    return-void
.end method

.method public blacklist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 461
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 462
    monitor-exit v0

    .line 463
    return-void

    .line 462
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist changeOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 494
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/List;)V

    .line 496
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist closeConnection()V
    .registers 6

    .line 363
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8a

    return-void

    .line 366
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 367
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

    .line 368
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 370
    :cond_1b
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_37

    .line 371
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsEcbm;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsEcbm;->setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 372
    new-instance v1, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {v1, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 374
    :cond_37
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-ne v1, v4, :cond_51

    .line 375
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsMultiEndpoint;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsMultiEndpoint;->setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 376
    new-instance v1, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {v1, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_51} :catch_52
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_51} :catch_52
    .catchall {:try_start_b .. :try_end_51} :catchall_8a

    .line 381
    :cond_51
    goto :goto_88

    .line 378
    :catch_52
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/Exception;
    :try_start_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTelFeatureConn ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeConnection: couldn\'t remove listeners! Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 380
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_88
    monitor-exit v0

    .line 383
    return-void

    .line 382
    :catchall_8a
    move-exception v1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_53 .. :try_end_8c} :catchall_8a

    throw v1
.end method

.method public blacklist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .registers 5
    .param p1, "callServiceType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 486
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 487
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 503
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 504
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist createOrGetUtInterface()Lcom/android/ims/ImsUt;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    monitor-exit v0

    return-object v1

    .line 511
    :cond_b
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 512
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 516
    .local v1, "imsUt":Lcom/android/ims/internal/IImsUt;
    if-eqz v1, :cond_26

    new-instance v2, Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/ims/ImsUt;-><init>(Lcom/android/ims/internal/IImsUt;Ljava/util/concurrent/Executor;)V

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    .line 517
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    monitor-exit v0

    return-object v2

    .line 518
    .end local v1    # "imsUt":Lcom/android/ims/internal/IImsUt;
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .registers 4

    .line 539
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-eqz v1, :cond_20

    .line 544
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 545
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsEcbm;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    monitor-exit v0

    .line 544
    return-object v1

    .line 541
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ECBM interface has not been opened"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    throw v1

    .line 546
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist getSmsFormat()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 619
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getSmsFormat()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 620
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist isEmergencyMmTelAvailable()Z
    .registers 2

    .line 334
    iget-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    return v0
.end method

.method public blacklist notifySrvccCanceled()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 662
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->notifySrvccCanceled()V

    .line 663
    monitor-exit v0

    .line 664
    return-void

    .line 663
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist notifySrvccCompleted()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 648
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->notifySrvccCompleted()V

    .line 649
    monitor-exit v0

    .line 650
    return-void

    .line 649
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist notifySrvccFailed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 655
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->notifySrvccFailed()V

    .line 656
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V
    .registers 4
    .param p1, "cb"    # Landroid/telephony/ims/aidl/ISrvccStartedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 641
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->notifySrvccStarted(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V

    .line 642
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist onFeatureCapabilitiesUpdated(J)V
    .registers 8
    .param p1, "capabilities"    # J

    .line 705
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    const-wide/16 v1, 0x1

    or-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    :try_start_f
    iput-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    .line 708
    monitor-exit v0

    .line 709
    return-void

    .line 708
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v1
.end method

.method public blacklist onMemoryAvailable(I)V
    .registers 4
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 588
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->onMemoryAvailable(I)V

    .line 589
    monitor-exit v0

    .line 590
    return-void

    .line 589
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected blacklist onRemovedOrDied()V
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->close()V

    .line 316
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mEmergencyRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;->close()V

    .line 317
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->close()V

    .line 318
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->close()V

    .line 323
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_17
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    if-eqz v1, :cond_23

    .line 325
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    invoke-virtual {v1}, Lcom/android/ims/ImsUt;->close()V

    .line 326
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    .line 328
    :cond_23
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->closeConnection()V

    .line 329
    invoke-super {p0}, Lcom/android/ims/FeatureConnection;->onRemovedOrDied()V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist onSmsReady()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 626
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->onSmsReady()V

    .line 627
    monitor-exit v0

    .line 628
    return-void

    .line 627
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist openConnection(Landroid/telephony/ims/feature/MmTelFeature$Listener;Lcom/android/ims/ImsEcbmStateListener;Lcom/android/ims/ImsExternalCallStateListener;)V
    .registers 6
    .param p1, "mmTelListener"    # Landroid/telephony/ims/feature/MmTelFeature$Listener;
    .param p2, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .param p3, "multiEndpointListener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 351
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

    .line 352
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 353
    invoke-direct {p0, p2}, Lcom/android/ims/MmTelFeatureConnection;->setEcbmInterface(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 354
    invoke-direct {p0, p3}, Lcom/android/ims/MmTelFeatureConnection;->setMultiEndpointInterface(Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public blacklist queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 477
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    .line 478
    invoke-direct {p0, v2}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryCapabilityStatus()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    monitor-exit v0

    .line 477
    return-object v1

    .line 479
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist queryEnabledCapabilities(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 469
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 471
    monitor-exit v0

    .line 472
    return-void

    .line 471
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;
    .registers 4
    .param p1, "sessionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 453
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 454
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 423
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 424
    return-void
.end method

.method public blacklist removeCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I

    .line 428
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 429
    return-void
.end method

.method public blacklist removeEmergencyRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 410
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mEmergencyRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsEmergencyRegistrationCallbackAdapter;->removeCallback(Landroid/os/IInterface;)V

    .line 411
    return-void
.end method

.method public blacklist removeProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 438
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 439
    return-void
.end method

.method public blacklist removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 395
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->removeCallback(Landroid/os/IInterface;)V

    .line 396
    return-void
.end method

.method public blacklist removeRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 400
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->removeCallback(Landroid/os/IInterface;)V

    .line 401
    return-void
.end method

.method protected blacklist retrieveFeatureState()Ljava/lang/Integer;
    .registers 2

    .line 692
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_14

    .line 694
    :try_start_4
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return-object v0

    .line 695
    :catch_13
    move-exception v0

    .line 699
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 16
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 580
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "smsc":Ljava/lang/String;
    .end local p5    # "isRetry":Z
    .end local p6    # "pdu":[B
    .local v3, "token":I
    .local v4, "messageRef":I
    .local v5, "format":Ljava/lang/String;
    .local v6, "smsc":Ljava/lang/String;
    .local v7, "isRetry":Z
    .local v8, "pdu":[B
    :try_start_12
    invoke-interface/range {v2 .. v8}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 582
    monitor-exit v1

    .line 583
    return-void

    .line 582
    .end local v3    # "token":I
    .end local v4    # "messageRef":I
    .end local v5    # "format":Ljava/lang/String;
    .end local v6    # "smsc":Ljava/lang/String;
    .end local v7    # "isRetry":Z
    .end local v8    # "pdu":[B
    .restart local p1    # "token":I
    .restart local p2    # "messageRef":I
    .restart local p3    # "format":Ljava/lang/String;
    .restart local p4    # "smsc":Ljava/lang/String;
    .restart local p5    # "isRetry":Z
    .restart local p6    # "pdu":[B
    :catchall_17
    move-exception v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    move-object p1, v0

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "format":Ljava/lang/String;
    .end local p4    # "smsc":Ljava/lang/String;
    .end local p5    # "isRetry":Z
    .end local p6    # "pdu":[B
    .restart local v3    # "token":I
    .restart local v4    # "messageRef":I
    .restart local v5    # "format":Ljava/lang/String;
    .restart local v6    # "smsc":Ljava/lang/String;
    .restart local v7    # "isRetry":Z
    .restart local v8    # "pdu":[B
    :goto_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_21

    throw p1

    :catchall_21
    move-exception v0

    move-object p1, v0

    goto :goto_1f
.end method

.method public blacklist setMediaThreshold(ILandroid/telephony/ims/MediaThreshold;)V
    .registers 5
    .param p1, "sessionType"    # I
    .param p2, "threshold"    # Landroid/telephony/ims/MediaThreshold;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 445
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setMediaQualityThreshold(ILandroid/telephony/ims/MediaThreshold;)V

    .line 446
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 633
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 634
    monitor-exit v0

    .line 635
    return-void

    .line 634
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist setTerminalBasedCallWaitingStatus(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 720
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setTerminalBasedCallWaitingStatus(Z)V

    .line 721
    monitor-exit v0

    .line 722
    return-void

    .line 721
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .registers 5
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 553
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setUiTtyMode(ILandroid/os/Message;)V

    .line 554
    monitor-exit v0

    .line 555
    return-void

    .line 554
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist shouldProcessCall(Z[Ljava/lang/String;)I
    .registers 5
    .param p1, "isEmergency"    # Z
    .param p2, "numbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isEmergencyMmTelAvailable()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmTelFeatureConn ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTel does not support emergency over IMS, fallback to CS."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v0, 0x1

    return v0

    .line 684
    :cond_2a
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 686
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->shouldProcessCall([Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 687
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public blacklist triggerDeregistration(I)V
    .registers 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 669
    .local v0, "registration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_a

    .line 670
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsRegistration;->triggerDeregistration(I)V

    goto :goto_2a

    .line 672
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmTelFeatureConn ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "triggerDeregistration IImsRegistration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_2a
    return-void
.end method
