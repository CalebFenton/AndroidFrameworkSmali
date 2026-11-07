.class public final Landroid/companion/virtual/VirtualDeviceParams$Builder;
.super Ljava/lang/Object;
.source "VirtualDeviceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;
    }
.end annotation


# static fields
.field private static final blacklist INFINITE_TIMEOUT:Ljava/time/Duration;


# instance fields
.field private blacklist mActivityPolicyExemptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAudioPlaybackSessionId:I

.field private blacklist mAudioRecordingSessionId:I

.field private blacklist mCrossTaskNavigationExemptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDefaultActivityPolicy:I

.field private blacklist mDefaultActivityPolicyConfigured:Z

.field private blacklist mDefaultNavigationPolicy:I

.field private blacklist mDefaultNavigationPolicyConfigured:Z

.field private final blacklist mDevicePolicies:Landroid/util/SparseIntArray;

.field private blacklist mDimDuration:Ljava/time/Duration;

.field private blacklist mHomeComponent:Landroid/content/ComponentName;

.field private blacklist mInputMethodComponent:Landroid/content/ComponentName;

.field private blacklist mLockState:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mScreenOffTimeout:Ljava/time/Duration;

.field private blacklist mUsersWithMatchingAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

.field private blacklist mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mVirtualSensorConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

.field private blacklist mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 759
    const-wide/32 v0, 0x591c8

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->INFINITE_TIMEOUT:Ljava/time/Duration;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    .line 762
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    .line 763
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    .line 764
    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    .line 766
    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    .line 767
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 768
    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    .line 770
    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    .line 772
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 773
    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    .line 774
    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    .line 783
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    .line 784
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public whitelist addVirtualSensorConfig(Landroid/companion/virtual/sensor/VirtualSensorConfig;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .param p1, "virtualSensorConfig"    # Landroid/companion/virtual/sensor/VirtualSensorConfig;

    .line 1151
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    return-object p0
.end method

.method public whitelist build()Landroid/companion/virtual/VirtualDeviceParams;
    .registers 26

    .line 1247
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1248
    .local v1, "virtualSensorCallbackDelegate":Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;
    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_61

    .line 1249
    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_59

    .line 1255
    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    if-eqz v2, :cond_51

    .line 1260
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    iget-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_40

    .line 1261
    iget-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    invoke-virtual {v5}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getDirectChannelTypesSupported()I

    move-result v5

    if-lez v5, :cond_3d

    .line 1262
    iget-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    if-eqz v5, :cond_35

    goto :goto_40

    .line 1263
    :cond_35
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "VirtualSensorDirectChannelCallback is required for creating virtual sensors that support direct channel."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1260
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1270
    .end local v2    # "i":I
    :cond_40
    :goto_40
    new-instance v2, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;

    iget-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    iget-object v7, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v8, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorCallback;Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;)V

    move-object v1, v2

    move-object/from16 v16, v1

    goto :goto_63

    .line 1256
    :cond_51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "VirtualSensorCallback is required for creating virtual sensors."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1251
    :cond_59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DEVICE_POLICY_CUSTOM for POLICY_TYPE_SENSORS is required for creating virtual sensors."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1248
    :cond_61
    move-object/from16 v16, v1

    .line 1277
    .end local v1    # "virtualSensorCallbackDelegate":Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;
    .local v16, "virtualSensorCallbackDelegate":Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;
    :goto_63
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    packed-switch v1, :pswitch_data_164

    .line 1297
    iget-boolean v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v1, :cond_9e

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-ne v1, v4, :cond_9e

    .line 1299
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_9e

    .line 1288
    :pswitch_7c
    iget-boolean v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v1, :cond_9e

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-eqz v1, :cond_85

    goto :goto_9e

    .line 1290
    :cond_85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DEVICE_POLICY_CUSTOM is explicitly configured for POLICY_TYPE_ACTIVITY, which is exclusive with setBlockedActivities."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1279
    :pswitch_8d
    iget-boolean v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v1, :cond_9e

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-eq v1, v4, :cond_96

    goto :goto_9e

    .line 1281
    :cond_96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DEVICE_POLICY_DEFAULT is explicitly configured for POLICY_TYPE_ACTIVITY, which is exclusive with setAllowedActivities."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1304
    :cond_9e
    :goto_9e
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-gtz v1, :cond_15b

    .line 1308
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    sget-object v2, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-nez v1, :cond_b6

    .line 1309
    sget-object v1, Landroid/companion/virtual/VirtualDeviceParams$Builder;->INFINITE_TIMEOUT:Ljava/time/Duration;

    iput-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    .line 1312
    :cond_b6
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->defaultDeviceCameraAccessPolicy()Z

    move-result v1

    if-nez v1, :cond_c2

    .line 1313
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1316
    :cond_c2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->activityControlApi()Z

    move-result v1

    if-nez v1, :cond_ce

    .line 1317
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1320
    :cond_ce
    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    if-nez v1, :cond_d6

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    if-eqz v1, :cond_de

    :cond_d6
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 1322
    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v4, :cond_153

    .line 1328
    :cond_de
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1329
    .local v1, "sensorNameByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e4
    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11f

    .line 1330
    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    .line 1331
    .local v3, "config":Landroid/companion/virtual/sensor/VirtualSensorConfig;
    invoke-virtual {v3}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v4

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 1332
    .local v4, "sensorNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 1336
    invoke-virtual {v3}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1329
    .end local v3    # "config":Landroid/companion/virtual/sensor/VirtualSensorConfig;
    .end local v4    # "sensorNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_e4

    .line 1333
    .restart local v3    # "config":Landroid/companion/virtual/sensor/VirtualSensorConfig;
    .restart local v4    # "sensorNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_117
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Sensor names must be unique for a particular sensor type."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1339
    .end local v2    # "i":I
    .end local v3    # "config":Landroid/companion/virtual/sensor/VirtualSensorConfig;
    .end local v4    # "sensorNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11f
    new-instance v4, Landroid/companion/virtual/VirtualDeviceParams;

    iget v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    iget-object v6, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    iget v7, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iget-object v8, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    iget v9, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    iget-object v10, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    iget-object v11, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mName:Ljava/lang/String;

    iget-object v12, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    iget-object v13, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mHomeComponent:Landroid/content/ComponentName;

    iget-object v14, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mInputMethodComponent:Landroid/content/ComponentName;

    iget-object v15, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    iget v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    iget v3, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    move-object/from16 v24, v1

    .end local v1    # "sensorNameByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v24, "sensorNameByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    .line 1354
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v19

    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    .line 1355
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v21

    const/16 v23, 0x0

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-direct/range {v4 .. v23}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;IIJJLandroid/companion/virtual/VirtualDeviceParams-IA;)V

    .line 1339
    return-object v4

    .line 1324
    .end local v24    # "sensorNameByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DEVICE_POLICY_CUSTOM for POLICY_TYPE_AUDIO is required for configuration of device-specific audio session ids."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1305
    :cond_15b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The dim duration cannot be greater than the screen off timeout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_7c
    .end packed-switch
.end method

.method public whitelist setAllowedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1067
    .local p1, "allowedActivities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-ne v0, v1, :cond_a

    goto :goto_12

    .line 1069
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_12
    :goto_12
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    .line 1073
    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    .line 1074
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 1075
    return-object p0
.end method

.method public whitelist setAllowedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1001
    .local p1, "allowedCrossTaskNavigations":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-ne v0, v1, :cond_a

    goto :goto_12

    .line 1003
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed cross task navigations and blocked cross task navigations cannot  both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_12
    :goto_12
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    .line 1008
    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    .line 1009
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    .line 1010
    return-object p0
.end method

.method public whitelist setAudioPlaybackSessionId(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .param p1, "playbackSessionId"    # I

    .line 1207
    if-ltz p1, :cond_5

    .line 1210
    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    .line 1211
    return-object p0

    .line 1208
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid playback audio session id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioRecordingSessionId(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .param p1, "recordingSessionId"    # I

    .line 1231
    if-ltz p1, :cond_5

    .line 1234
    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    .line 1235
    return-object p0

    .line 1232
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid recording audio session id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBlockedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1097
    .local p1, "blockedActivities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v0, :cond_11

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-nez v0, :cond_9

    goto :goto_11

    .line 1099
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    .line 1104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 1105
    return-object p0
.end method

.method public whitelist setBlockedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1036
    .local p1, "blockedCrossTaskNavigations":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    if-eqz v0, :cond_11

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-nez v0, :cond_9

    goto :goto_11

    .line 1038
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed cross task navigation and blocked task navigation cannot  be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    .line 1044
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    .line 1045
    return-object p0
.end method

.method public whitelist setDevicePolicy(II)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .param p1, "policyType"    # I
    .param p2, "devicePolicy"    # I

    .line 1134
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1135
    return-object p0
.end method

.method public whitelist setDimDuration(Ljava/time/Duration;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .param p1, "dimDuration"    # Ljava/time/Duration;

    .line 880
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-ltz v0, :cond_11

    .line 883
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    .line 884
    return-object p0

    .line 881
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dim duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHomeComponent(Landroid/content/ComponentName;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2
    .param p1, "homeComponent"    # Landroid/content/ComponentName;

    .line 925
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mHomeComponent:Landroid/content/ComponentName;

    .line 926
    return-object p0
.end method

.method public whitelist setInputMethodComponent(Landroid/content/ComponentName;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2
    .param p1, "inputMethodComponent"    # Landroid/content/ComponentName;

    .line 947
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mInputMethodComponent:Landroid/content/ComponentName;

    .line 948
    return-object p0
.end method

.method public whitelist setLockState(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2
    .param p1, "lockState"    # I

    .line 857
    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    .line 858
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1119
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mName:Ljava/lang/String;

    .line 1120
    return-object p0
.end method

.method public whitelist setScreenOffTimeout(Ljava/time/Duration;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .param p1, "screenOffTimeout"    # Ljava/time/Duration;

    .line 905
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-ltz v0, :cond_11

    .line 908
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    .line 909
    return-object p0

    .line 906
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The screen off timeout cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUsersWithMatchingAccounts(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .line 974
    .local p1, "usersWithMatchingAccounts":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/UserHandle;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    .line 975
    return-object p0
.end method

.method public whitelist setVirtualSensorCallback(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorCallback;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/companion/virtual/sensor/VirtualSensorCallback;

    .line 1167
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1168
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/sensor/VirtualSensorCallback;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    .line 1169
    return-object p0
.end method

.method public whitelist setVirtualSensorDirectChannelCallback(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    .line 1185
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1186
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    .line 1187
    return-object p0
.end method
