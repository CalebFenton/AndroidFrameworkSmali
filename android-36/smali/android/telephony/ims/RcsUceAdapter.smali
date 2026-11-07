.class public Landroid/telephony/ims/RcsUceAdapter;
.super Ljava/lang/Object;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;,
        Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;,
        Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;,
        Landroid/telephony/ims/RcsUceAdapter$PublishState;,
        Landroid/telephony/ims/RcsUceAdapter$StackPublishTriggerType;,
        Landroid/telephony/ims/RcsUceAdapter$ErrorCode;,
        Landroid/telephony/ims/RcsUceAdapter$RcsImsCapabilityFlag;
    }
.end annotation


# static fields
.field public static final blacklist CAPABILITY_TYPE_OPTIONS_UCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_TYPE_PRESENCE_UCE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_ETAG_EXPIRED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_2G:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_3G:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_EHRPD:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_HSPAPLUS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_INTERNET_PDN:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_IWLAN:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_LTE_VOPS_DISABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_LTE_VOPS_ENABLED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_NR5G_VOPS_DISABLED:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_NR5G_VOPS_ENABLED:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_WLAN:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_FORBIDDEN:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_GENERIC_FAILURE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_INSUFFICIENT_MEMORY:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_LOST_NETWORK:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_AUTHORIZED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_AVAILABLE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_ENABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_FOUND:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_REGISTERED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_REQUEST_TIMEOUT:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_REQUEST_TOO_LARGE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_SERVER_UNAVAILABLE:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_NOT_PUBLISHED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_OK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_OTHER_ERROR:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_PUBLISHING:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_RCS_PROVISION_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_REQUEST_TIMEOUT:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_VOICE_PROVISION_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "RcsUceAdapter"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPublishStateCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;",
            "Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubId:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 563
    iput p2, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    .line 564
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    .line 565
    return-void
.end method

.method private blacklist addPublishStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    .line 1011
    new-instance v0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V

    .line 1012
    .local v0, "adapter":Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    iget-object v1, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 1013
    :try_start_8
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    monitor-exit v1

    .line 1015
    return-object v0

    .line 1014
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

.method private blacklist getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;
    .registers 3

    .line 1033
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1034
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1035
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1036
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v1

    return-object v1
.end method

.method private blacklist removePublishStateCallback(Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    .registers 4
    .param p1, "listener"    # Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    .line 1026
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1027
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    monitor-exit v0

    return-object v1

    .line 1028
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method


# virtual methods
.method public whitelist addOnPublishStateChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 826
    if-eqz p1, :cond_4c

    .line 829
    if-eqz p2, :cond_44

    .line 834
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 835
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_37

    .line 841
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsUceAdapter;->addPublishStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    move-result-object v3

    .line 843
    .local v3, "stateCallback":Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    :try_start_11
    iget v4, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-virtual {v3}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/telephony/ims/aidl/IImsRcsController;->registerUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    :try_end_1a
    .catch Landroid/os/ServiceSpecificException; {:try_start_11 .. :try_end_1a} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1c

    .line 850
    nop

    .line 851
    return-void

    .line 846
    :catch_1c
    move-exception v4

    .line 847
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Error calling IImsRcsController#registerUcePublishStateCallback"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v5, "Remote IMS Service is not available"

    invoke-direct {v2, v5, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 844
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2a
    move-exception v1

    .line 845
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 836
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v3    # "stateCallback":Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    :cond_37
    const-string v3, "addOnPublishStateChangedListener : IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 830
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null OnPublishStateChangedListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUcePublishState()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 782
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 783
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_2b

    .line 790
    :try_start_9
    iget v3, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-interface {v0, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->getUcePublishState(I)I

    move-result v1
    :try_end_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_f} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    return v1

    .line 793
    :catch_10
    move-exception v3

    .line 794
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#getUcePublishState"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 791
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1e
    move-exception v1

    .line 792
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 784
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2b
    const-string/jumbo v3, "getUcePublishState: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Can not find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist isUceSettingEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 928
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 929
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_2a

    .line 936
    :try_start_9
    iget v3, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    iget-object v4, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 937
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 936
    invoke-interface {v0, v3, v4, v5}, Landroid/telephony/ims/aidl/IImsRcsController;->isUceSettingEnabled(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_1c

    return v1

    .line 938
    :catch_1c
    move-exception v3

    .line 939
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#isUceSettingEnabled"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 930
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2a
    const-string/jumbo v3, "isUceSettingEnabled: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Can not find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist removeOnPublishStateChangedListener(Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 873
    if-eqz p1, :cond_46

    .line 877
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 878
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_38

    .line 884
    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsUceAdapter;->removePublishStateCallback(Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    move-result-object v3

    .line 885
    .local v3, "callback":Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    if-nez v3, :cond_12

    .line 886
    return-void

    .line 890
    :cond_12
    :try_start_12
    iget v4, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-virtual {v3}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    :try_end_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_12 .. :try_end_1b} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1d

    .line 897
    nop

    .line 898
    return-void

    .line 893
    :catch_1d
    move-exception v4

    .line 894
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Error calling IImsRcsController#unregisterUcePublishStateCallback"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v5, "Remote IMS Service is not available"

    invoke-direct {v2, v5, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 891
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2b
    move-exception v1

    .line 892
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 879
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v3    # "callback":Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    :cond_38
    const-string/jumbo v3, "removeOnPublishStateChangedListener: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 874
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null OnPublishStateChangedListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestAvailability(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .registers 13
    .param p1, "contactNumber"    # Landroid/net/Uri;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 706
    if-eqz p2, :cond_6e

    .line 709
    if-eqz p1, :cond_65

    .line 712
    if-eqz p3, :cond_5c

    .line 716
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v1

    .line 717
    .local v1, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v7, 0x1

    const-string v8, "RcsUceAdapter"

    if-eqz v1, :cond_4d

    .line 723
    new-instance v6, Landroid/telephony/ims/RcsUceAdapter$2;

    invoke-direct {v6, p0, p2, p3}, Landroid/telephony/ims/RcsUceAdapter$2;-><init>(Landroid/telephony/ims/RcsUceAdapter;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V

    .line 755
    .local v6, "internalCallback":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    :try_start_14
    iget v2, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 756
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4
    :try_end_22
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_22} :catch_3e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_22} :catch_2e

    .line 755
    move-object v5, p1

    .end local p1    # "contactNumber":Landroid/net/Uri;
    .local v5, "contactNumber":Landroid/net/Uri;
    :try_start_23
    invoke-interface/range {v1 .. v6}, Landroid/telephony/ims/aidl/IImsRcsController;->requestAvailability(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    :try_end_26
    .catch Landroid/os/ServiceSpecificException; {:try_start_23 .. :try_end_26} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_28

    .line 763
    nop

    .line 764
    return-void

    .line 759
    :catch_28
    move-exception v0

    move-object p1, v0

    goto :goto_31

    .line 757
    :catch_2b
    move-exception v0

    move-object p1, v0

    goto :goto_41

    .line 759
    .end local v5    # "contactNumber":Landroid/net/Uri;
    .restart local p1    # "contactNumber":Landroid/net/Uri;
    :catch_2e
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .line 760
    .restart local v5    # "contactNumber":Landroid/net/Uri;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_31
    const-string v0, "Error calling IImsRcsController#requestAvailability"

    invoke-static {v8, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    new-instance v0, Landroid/telephony/ims/ImsException;

    const-string v2, "Remote IMS Service is not available"

    invoke-direct {v0, v2, v7}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 757
    .end local v5    # "contactNumber":Landroid/net/Uri;
    .local p1, "contactNumber":Landroid/net/Uri;
    :catch_3e
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .line 758
    .restart local v5    # "contactNumber":Landroid/net/Uri;
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_41
    new-instance v0, Landroid/telephony/ims/ImsException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v0, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 718
    .end local v5    # "contactNumber":Landroid/net/Uri;
    .end local v6    # "internalCallback":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .local p1, "contactNumber":Landroid/net/Uri;
    :cond_4d
    move-object v5, p1

    .end local p1    # "contactNumber":Landroid/net/Uri;
    .restart local v5    # "contactNumber":Landroid/net/Uri;
    const-string/jumbo p1, "requestAvailability: IImsRcsController is null"

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance p1, Landroid/telephony/ims/ImsException;

    const-string v0, "Cannot find remote IMS service"

    invoke-direct {p1, v0, v7}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 713
    .end local v1    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    .end local v5    # "contactNumber":Landroid/net/Uri;
    .restart local p1    # "contactNumber":Landroid/net/Uri;
    :cond_5c
    move-object v5, p1

    .end local p1    # "contactNumber":Landroid/net/Uri;
    .restart local v5    # "contactNumber":Landroid/net/Uri;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must include a non-null CapabilitiesCallback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 710
    .end local v5    # "contactNumber":Landroid/net/Uri;
    .restart local p1    # "contactNumber":Landroid/net/Uri;
    :cond_65
    move-object v5, p1

    .end local p1    # "contactNumber":Landroid/net/Uri;
    .restart local v5    # "contactNumber":Landroid/net/Uri;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must include non-null contact number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 707
    .end local v5    # "contactNumber":Landroid/net/Uri;
    .restart local p1    # "contactNumber":Landroid/net/Uri;
    :cond_6e
    move-object v5, p1

    .end local p1    # "contactNumber":Landroid/net/Uri;
    .restart local v5    # "contactNumber":Landroid/net/Uri;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must include a non-null Executor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist requestCapabilities(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .registers 13
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 607
    .local p1, "contactNumbers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    if-eqz p3, :cond_65

    .line 610
    if-eqz p2, :cond_5d

    .line 613
    if-eqz p1, :cond_55

    .line 617
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v1

    .line 618
    .local v1, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v7, 0x1

    const-string v8, "RcsUceAdapter"

    if-eqz v1, :cond_47

    .line 624
    new-instance v6, Landroid/telephony/ims/RcsUceAdapter$1;

    invoke-direct {v6, p0, p2, p3}, Landroid/telephony/ims/RcsUceAdapter$1;-><init>(Landroid/telephony/ims/RcsUceAdapter;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V

    .line 656
    .local v6, "internalCallback":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    :try_start_14
    iget v2, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 657
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 656
    invoke-interface/range {v1 .. v6}, Landroid/telephony/ims/aidl/IImsRcsController;->requestCapabilities(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    :try_end_2a
    .catch Landroid/os/ServiceSpecificException; {:try_start_14 .. :try_end_2a} :catch_3a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2a} :catch_2c

    .line 664
    nop

    .line 665
    return-void

    .line 660
    :catch_2c
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling IImsRcsController#requestCapabilities"

    invoke-static {v8, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Remote IMS Service is not available"

    invoke-direct {v2, v3, v7}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 658
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3a
    move-exception v0

    .line 659
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 619
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v6    # "internalCallback":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    :cond_47
    const-string/jumbo v0, "requestCapabilities: IImsRcsController is null"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v0, Landroid/telephony/ims/ImsException;

    const-string v2, "Can not find remote IMS service"

    invoke-direct {v0, v2, v7}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 614
    .end local v1    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include non-null contact number list."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null CapabilitiesCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUceSettingEnabled(Z)V
    .registers 7
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 985
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 986
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_1e

    .line 993
    :try_start_9
    iget v3, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-interface {v0, v3, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->setUceSettingEnabled(IZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    .line 998
    nop

    .line 999
    return-void

    .line 994
    :catch_10
    move-exception v3

    .line 995
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#setUceSettingEnabled"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 996
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 987
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1e
    const-string/jumbo v3, "setUceSettingEnabled: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Can not find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
