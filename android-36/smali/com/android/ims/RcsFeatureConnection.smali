.class public Lcom/android/ims/RcsFeatureConnection;
.super Lcom/android/ims/FeatureConnection;
.source "RcsFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;,
        Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RcsFeatureConnection"


# instance fields
.field private final blacklist mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

.field private final blacklist mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddCapabilityCallback(Lcom/android/ims/RcsFeatureConnection;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/ims/RcsFeatureConnection;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogi(Lcom/android/ims/RcsFeatureConnection;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveCapabilityCallback(Lcom/android/ims/RcsFeatureConnection;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsRcsFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "subId"    # I
    .param p4, "feature"    # Landroid/telephony/ims/aidl/IImsRcsFeature;
    .param p5, "c"    # Landroid/telephony/ims/aidl/IImsConfig;
    .param p6, "r"    # Landroid/telephony/ims/aidl/IImsRegistration;
    .param p7, "s"    # Landroid/telephony/ims/aidl/ISipTransport;

    .line 120
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

    .line 121
    new-instance p1, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    iget-object p2, v0, Lcom/android/ims/RcsFeatureConnection;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;-><init>(Lcom/android/ims/RcsFeatureConnection;Landroid/content/Context;)V

    iput-object p1, v0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    .line 122
    new-instance p1, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    iget-object p2, v0, Lcom/android/ims/RcsFeatureConnection;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;-><init>(Lcom/android/ims/RcsFeatureConnection;Landroid/content/Context;)V

    iput-object p1, v0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    .line 123
    if-eqz p4, :cond_23

    invoke-interface {p4}, Landroid/telephony/ims/aidl/IImsRcsFeature;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    invoke-virtual {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->setBinder(Landroid/os/IBinder;)V

    .line 124
    return-void
.end method

.method private blacklist addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 199
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private blacklist checkServiceIsAlive()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    sget-boolean v0, Lcom/android/ims/RcsFeatureConnection;->sImsSupportedOnDevice:Z

    if-eqz v0, :cond_13

    .line 159
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    return-void

    .line 160
    :cond_b
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ImsServiceProxy is not alive."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_13
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IMS is not supported on this device."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureConnection ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureConnection ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureConnection ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method private blacklist removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 207
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 208
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method


# virtual methods
.method public blacklist addCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 180
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->addCallback(Landroid/os/IInterface;)V

    .line 181
    return-void
.end method

.method public blacklist addCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 172
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 173
    return-void
.end method

.method public blacklist addCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 176
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 177
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

    .line 221
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 223
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsFeature;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 224
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist close()V
    .registers 2

    .line 127
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->removeCapabilityExchangeEventListener()V

    .line 128
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->close()V

    .line 129
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->close()V

    .line 130
    return-void
.end method

.method public blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 3
    .param p1, "b"    # Landroid/os/IBinder;

    .line 273
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onFeatureCapabilitiesUpdated(J)V
    .registers 3
    .param p1, "capabilities"    # J

    .line 269
    return-void
.end method

.method protected blacklist onRemovedOrDied()V
    .registers 1

    .line 134
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->close()V

    .line 135
    invoke-super {p0}, Lcom/android/ims/FeatureConnection;->onRemovedOrDied()V

    .line 136
    return-void
.end method

.method public blacklist queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 215
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsRcsFeature;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist queryCapabilityStatus()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 167
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->queryCapabilityStatus()I

    move-result v1

    monitor-exit v0

    return v1

    .line 168
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist removeCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 192
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 193
    return-void
.end method

.method public blacklist removeCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 184
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    invoke-virtual {v0, p2}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 185
    return-void
.end method

.method public blacklist removeCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 188
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p2}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 189
    return-void
.end method

.method public blacklist removeCapabilityExchangeEventListener()V
    .registers 2

    .line 149
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/ims/RcsFeatureConnection;->setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 152
    goto :goto_6

    .line 150
    :catch_5
    move-exception v0

    .line 153
    :goto_6
    return-void
.end method

.method public blacklist requestCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .registers 5
    .param p2, "c"    # Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/ISubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 239
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsFeature;->subscribeForCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist requestPublication(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .registers 5
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "responseCallback"    # Landroid/telephony/ims/aidl/IPublishResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 231
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsFeature;->publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V

    .line 232
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist retrieveFeatureState()Ljava/lang/Integer;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_14

    .line 257
    :try_start_4
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsRcsFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return-object v0

    .line 258
    :catch_13
    move-exception v0

    .line 262
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .registers 6
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IOptionsResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    .local p2, "myCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 247
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsRcsFeature;->sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V

    .line 249
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    invoke-direct {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsAlive()V

    .line 143
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
