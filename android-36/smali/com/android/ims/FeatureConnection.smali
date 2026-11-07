.class public abstract Lcom/android/ims/FeatureConnection;
.super Ljava/lang/Object;
.source "FeatureConnection.java"


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "FeatureConnection"

.field protected static blacklist sImsSupportedOnDevice:Z


# instance fields
.field protected blacklist mBinder:Landroid/os/IBinder;

.field private final blacklist mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

.field protected blacklist mContext:Landroid/content/Context;

.field protected final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field protected blacklist mFeatureCapabilities:J

.field protected blacklist mFeatureStateCached:Ljava/lang/Integer;

.field protected volatile blacklist mIsAvailable:Z

.field protected final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

.field private final blacklist mSipTransportBinder:Landroid/telephony/ims/aidl/ISipTransport;

.field protected final blacklist mSlotId:I

.field protected final blacklist mSubId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$30G9N4_zGFoaxWOvgjvOjPeZt2E(Lcom/android/ims/FeatureConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/FeatureConnection;->lambda$new$0()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/ims/FeatureConnection;->sImsSupportedOnDevice:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "subId"    # I
    .param p4, "c"    # Landroid/telephony/ims/aidl/IImsConfig;
    .param p5, "r"    # Landroid/telephony/ims/aidl/IImsRegistration;
    .param p6, "s"    # Landroid/telephony/ims/aidl/ISipTransport;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/FeatureConnection;->mIsAvailable:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/FeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/FeatureConnection;)V

    iput-object v0, p0, Lcom/android/ims/FeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 62
    iput p2, p0, Lcom/android/ims/FeatureConnection;->mSlotId:I

    .line 63
    iput p3, p0, Lcom/android/ims/FeatureConnection;->mSubId:I

    .line 64
    iput-object p1, p0, Lcom/android/ims/FeatureConnection;->mContext:Landroid/content/Context;

    .line 65
    iput-object p5, p0, Lcom/android/ims/FeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 66
    iput-object p4, p0, Lcom/android/ims/FeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    .line 67
    iput-object p6, p0, Lcom/android/ims/FeatureConnection;->mSipTransportBinder:Landroid/telephony/ims/aidl/ISipTransport;

    .line 68
    return-void
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 3

    .line 93
    const-string v0, "FeatureConnection"

    const-string v1, "DeathRecipient triggered, binder died."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 97
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/FeatureConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void

    .line 101
    :cond_20
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->onRemovedOrDied()V

    .line 102
    return-void
.end method


# virtual methods
.method public blacklist checkServiceIsReady()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    sget-boolean v0, Lcom/android/ims/FeatureConnection;->sImsSupportedOnDevice:Z

    if-eqz v0, :cond_13

    .line 150
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->isBinderReady()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 153
    return-void

    .line 151
    :cond_b
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ImsServiceProxy is not ready to accept commands."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_13
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IMS is not supported on this device."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    return-object v0
.end method

.method public blacklist getFeatureCapabilties()J
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-wide v1, p0, Lcom/android/ims/FeatureConnection;->mFeatureCapabilities:J

    monitor-exit v0

    return-wide v1

    .line 184
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getFeatureState()I
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/ims/FeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    .line 211
    iget-object v1, p0, Lcom/android/ims/FeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 213
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_66

    .line 215
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->retrieveFeatureState()Ljava/lang/Integer;

    move-result-object v1

    .line 216
    .local v1, "state":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 217
    if-nez v1, :cond_22

    .line 218
    :try_start_1f
    monitor-exit v2

    const/4 v0, 0x0

    return v0

    .line 221
    :cond_22
    iput-object v1, p0, Lcom/android/ims/FeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    .line 222
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_63

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeatureConnection ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/FeatureConnection;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFeatureState - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/ims/feature/ImsFeature;->STATE_LOG_MAP:Ljava/util/Map;

    .line 224
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 222
    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0

    .line 213
    .end local v1    # "state":Ljava/lang/Integer;
    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1
.end method

.method public blacklist getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0
.end method

.method public blacklist getRegistrationTech()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 125
    .local v0, "registration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_b

    .line 126
    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsRegistration;->getRegistrationTechnology()I

    move-result v1

    return v1

    .line 128
    :cond_b
    const-string v1, "FeatureConnection"

    const-string v2, "getRegistrationTech: ImsRegistration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getSipTransport()Landroid/telephony/ims/aidl/ISipTransport;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mSipTransportBinder:Landroid/telephony/ims/aidl/ISipTransport;

    return-object v0
.end method

.method public blacklist getSubId()I
    .registers 2

    .line 229
    iget v0, p0, Lcom/android/ims/FeatureConnection;->mSubId:I

    return v0
.end method

.method protected blacklist getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public blacklist isBinderAlive()Z
    .registers 2

    .line 172
    iget-boolean v0, p0, Lcom/android/ims/FeatureConnection;->mIsAvailable:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist isBinderReady()Z
    .registers 3

    .line 165
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist isCapable(J)Z
    .registers 7
    .param p1, "capabilities"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 201
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->getFeatureCapabilties()J

    move-result-wide v0

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    .line 199
    :cond_15
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "isCapable: ImsService is not alive"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract blacklist onFeatureCapabilitiesUpdated(J)V
.end method

.method protected blacklist onRemovedOrDied()V
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/FeatureConnection;->mIsAvailable:Z

    if-eqz v1, :cond_1e

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/FeatureConnection;->mIsAvailable:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_20

    .line 112
    :try_start_a
    iget-object v2, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v2, :cond_15

    .line 113
    iget-object v2, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/ims/FeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_15
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_15} :catch_16
    .catchall {:try_start_a .. :try_end_15} :catchall_20

    .line 117
    :cond_15
    goto :goto_1e

    .line 115
    :catch_16
    move-exception v1

    .line 116
    .local v1, "e":Ljava/util/NoSuchElementException;
    :try_start_17
    const-string v2, "FeatureConnection"

    const-string v3, "onRemovedOrDied: unlinkToDeath called on unlinked Binder."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw v1
.end method

.method protected abstract blacklist retrieveFeatureState()Ljava/lang/Integer;
.end method

.method public blacklist setBinder(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 79
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iput-object p1, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1f

    .line 82
    :try_start_5
    iget-object v1, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_11

    .line 83
    iget-object v1, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/ims/FeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12
    .catchall {:try_start_5 .. :try_end_11} :catchall_1f

    .line 88
    :cond_11
    goto :goto_1d

    .line 85
    :catch_12
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string v2, "FeatureConnection"

    const-string v3, "setBinder: linkToDeath on already dead Binder, setting null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;

    .line 89
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1d
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public blacklist updateFeatureCapabilities(J)V
    .registers 6
    .param p1, "caps"    # J

    .line 188
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-wide v1, p0, Lcom/android/ims/FeatureConnection;->mFeatureCapabilities:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_e

    .line 190
    iput-wide p1, p0, Lcom/android/ims/FeatureConnection;->mFeatureCapabilities:J

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/FeatureConnection;->onFeatureCapabilitiesUpdated(J)V

    .line 193
    :cond_e
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist updateFeatureState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 176
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/FeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    .line 178
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
