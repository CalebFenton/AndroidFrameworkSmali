.class public final Landroid/uwb/UwbManager;
.super Ljava/lang/Object;
.source "UwbManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/UwbManager$AdapterStateCallback;,
        Landroid/uwb/UwbManager$UwbVendorUciCallback;,
        Landroid/uwb/UwbManager$UwbOemExtensionCallback;,
        Landroid/uwb/UwbManager$AdfProvisionStateCallback;,
        Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;,
        Landroid/uwb/UwbManager$MessageType;,
        Landroid/uwb/UwbManager$SendVendorUciStatus;,
        Landroid/uwb/UwbManager$RemoveProfileAdf;,
        Landroid/uwb/UwbManager$RemoveServiceProfile;,
        Landroid/uwb/UwbManager$VendorConfigStatus;
    }
.end annotation


# static fields
.field public static final whitelist MESSAGE_TYPE_COMMAND:I = 0x1

.field public static final whitelist MESSAGE_TYPE_TEST_1:I = 0x4

.field public static final whitelist MESSAGE_TYPE_TEST_2:I = 0x5

.field public static final whitelist REMOVE_PROFILE_ADF_ERROR_INTERNAL:I = 0x2

.field public static final whitelist REMOVE_PROFILE_ADF_ERROR_UNKNOWN_SERVICE:I = 0x1

.field public static final whitelist REMOVE_PROFILE_ADF_SUCCESS:I = 0x0

.field public static final whitelist REMOVE_SERVICE_PROFILE_ERROR_INTERNAL:I = 0x2

.field public static final whitelist REMOVE_SERVICE_PROFILE_ERROR_UNKNOWN_SERVICE:I = 0x1

.field public static final whitelist REMOVE_SERVICE_PROFILE_SUCCESS:I = 0x0

.field public static final whitelist SEND_VENDOR_UCI_ERROR_HW:I = 0x1

.field public static final whitelist SEND_VENDOR_UCI_ERROR_INVALID_ARGS:I = 0x3

.field public static final whitelist SEND_VENDOR_UCI_ERROR_INVALID_GID:I = 0x4

.field public static final whitelist SEND_VENDOR_UCI_ERROR_OFF:I = 0x2

.field public static final whitelist SEND_VENDOR_UCI_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "UwbManager"

.field public static final blacklist VENDOR_SET_SESSION_CONFIGURATION_FAILURE:I = 0x1

.field public static final blacklist VENDOR_SET_SESSION_CONFIGURATION_SUCCESS:I


# instance fields
.field private final blacklist mAdapterStateListener:Landroid/uwb/AdapterStateListener;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mRangingManager:Landroid/uwb/RangingManager;

.field private final blacklist mUwbAdapter:Landroid/uwb/IUwbAdapter;

.field private final blacklist mUwbOemExtensionCallbackListener:Landroid/uwb/UwbOemExtensionCallbackListener;

.field private final blacklist mUwbVendorUciCallbackListener:Landroid/uwb/UwbVendorUciCallbackListener;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/uwb/IUwbAdapter;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/uwb/IUwbAdapter;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Landroid/uwb/UwbManager;->mContext:Landroid/content/Context;

    .line 418
    iput-object p2, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    .line 419
    new-instance v0, Landroid/uwb/AdapterStateListener;

    invoke-direct {v0, p2}, Landroid/uwb/AdapterStateListener;-><init>(Landroid/uwb/IUwbAdapter;)V

    iput-object v0, p0, Landroid/uwb/UwbManager;->mAdapterStateListener:Landroid/uwb/AdapterStateListener;

    .line 420
    new-instance v0, Landroid/uwb/RangingManager;

    invoke-direct {v0, p2}, Landroid/uwb/RangingManager;-><init>(Landroid/uwb/IUwbAdapter;)V

    iput-object v0, p0, Landroid/uwb/UwbManager;->mRangingManager:Landroid/uwb/RangingManager;

    .line 421
    new-instance v0, Landroid/uwb/UwbVendorUciCallbackListener;

    invoke-direct {v0, p2}, Landroid/uwb/UwbVendorUciCallbackListener;-><init>(Landroid/uwb/IUwbAdapter;)V

    iput-object v0, p0, Landroid/uwb/UwbManager;->mUwbVendorUciCallbackListener:Landroid/uwb/UwbVendorUciCallbackListener;

    .line 422
    new-instance v0, Landroid/uwb/UwbOemExtensionCallbackListener;

    invoke-direct {v0, p2}, Landroid/uwb/UwbOemExtensionCallbackListener;-><init>(Landroid/uwb/IUwbAdapter;)V

    iput-object v0, p0, Landroid/uwb/UwbManager;->mUwbOemExtensionCallbackListener:Landroid/uwb/UwbOemExtensionCallbackListener;

    .line 423
    return-void
.end method

.method private blacklist elapsedRealtimeResolutionNanosInternal(Ljava/lang/String;)J
    .registers 4
    .param p1, "chipId"    # Ljava/lang/String;

    .line 604
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->getTimestampResolutionNanos(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 605
    :catch_7
    move-exception v0

    .line 606
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getSpecificationInfoInternal(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 4
    .param p1, "chipId"    # Ljava/lang/String;

    .line 551
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->getSpecificationInfo(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 552
    :catch_7
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist openRangingSessionInternal(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;
    .registers 11
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callbacks"    # Landroid/uwb/RangingSession$Callback;
    .param p4, "chipId"    # Ljava/lang/String;

    .line 689
    iget-object v0, p0, Landroid/uwb/UwbManager;->mRangingManager:Landroid/uwb/RangingManager;

    iget-object v1, p0, Landroid/uwb/UwbManager;->mContext:Landroid/content/Context;

    .line 690
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 689
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "parameters":Landroid/os/PersistableBundle;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callbacks":Landroid/uwb/RangingSession$Callback;
    .end local p4    # "chipId":Ljava/lang/String;
    .local v2, "parameters":Landroid/os/PersistableBundle;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "callbacks":Landroid/uwb/RangingSession$Callback;
    .local v5, "chipId":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/uwb/RangingManager;->openSession(Landroid/content/AttributionSource;Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public whitelist addServiceProfile(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 4
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 884
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->addServiceProfile(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 885
    :catch_7
    move-exception v0

    .line 886
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist elapsedRealtimeResolutionNanos()J
    .registers 3

    .line 583
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/uwb/UwbManager;->elapsedRealtimeResolutionNanosInternal(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist elapsedRealtimeResolutionNanos(Ljava/lang/String;)J
    .registers 4
    .param p1, "chipId"    # Ljava/lang/String;

    .line 598
    invoke-static {p1}, Lcom/android/x/uwb/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-direct {p0, p1}, Landroid/uwb/UwbManager;->elapsedRealtimeResolutionNanosInternal(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getAdapterState()I
    .registers 2

    .line 704
    iget-object v0, p0, Landroid/uwb/UwbManager;->mAdapterStateListener:Landroid/uwb/AdapterStateListener;

    invoke-virtual {v0}, Landroid/uwb/AdapterStateListener;->getAdapterState()I

    move-result v0

    return v0
.end method

.method public whitelist getAdfCertificateInfo(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 4
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;

    .line 980
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->getAdfCertificateAndInfo(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 981
    :catch_7
    move-exception v0

    .line 982
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAdfProvisioningAuthorities(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 4
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;

    .line 961
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->getAdfProvisioningAuthorities(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 962
    :catch_7
    move-exception v0

    .line 963
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllServiceProfiles()Landroid/os/PersistableBundle;
    .registers 3

    .line 942
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getAllServiceProfiles()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 943
    :catch_7
    move-exception v0

    .line 944
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getChipInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .line 846
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getChipInfos()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 847
    :catch_7
    move-exception v0

    .line 848
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDefaultChipId()Ljava/lang/String;
    .registers 3

    .line 866
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getDefaultChipId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 867
    :catch_7
    move-exception v0

    .line 868
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSpecificationInfo()Landroid/os/PersistableBundle;
    .registers 2

    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/uwb/UwbManager;->getSpecificationInfoInternal(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSpecificationInfo(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "chipId"    # Ljava/lang/String;

    .line 545
    invoke-static {p1}, Lcom/android/x/uwb/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-direct {p0, p1}, Landroid/uwb/UwbManager;->getSpecificationInfoInternal(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUwbActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/uwb/UwbActivityEnergyInfo;",
            ">;)V"
        }
    .end annotation

    .line 1209
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/uwb/UwbActivityEnergyInfo;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1210
    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1212
    :try_start_a
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    new-instance v1, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;

    invoke-direct {v1, p1, p2}, Landroid/uwb/UwbManager$OnUwbActivityEnergyInfoProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/uwb/IUwbAdapter;->getUwbActivityEnergyInfoAsync(Landroid/uwb/IOnUwbActivityEnergyInfoListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 1216
    nop

    .line 1217
    return-void

    .line 1214
    :catch_16
    move-exception v0

    .line 1215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isUwbEnabled()Z
    .registers 3

    .line 722
    invoke-virtual {p0}, Landroid/uwb/UwbManager;->getAdapterState()I

    move-result v0

    .line 723
    .local v0, "adapterState":I
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public whitelist isUwbHwEnableRequested()Z
    .registers 3

    .line 790
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/UwbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/uwb/IUwbAdapter;->isHwEnableRequested(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 791
    :catch_d
    move-exception v0

    .line 792
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isUwbHwIdleTurnOffEnabled()Z
    .registers 3

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->isHwIdleTurnOffEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 764
    :catch_7
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openRangingSession(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;)Landroid/os/CancellationSignal;
    .registers 5
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callbacks"    # Landroid/uwb/RangingSession$Callback;

    .line 654
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/uwb/UwbManager;->openRangingSessionInternal(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openRangingSession(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;
    .registers 6
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callbacks"    # Landroid/uwb/RangingSession$Callback;
    .param p4, "chipId"    # Ljava/lang/String;

    .line 683
    invoke-static {p4}, Lcom/android/x/uwb/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/uwb/UwbManager;->openRangingSessionInternal(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist provisionProfileAdfByScript(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdfProvisionStateCallback;)V
    .registers 7
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/uwb/UwbManager$AdfProvisionStateCallback;

    .line 997
    if-eqz p2, :cond_20

    .line 998
    if-eqz p3, :cond_18

    .line 999
    invoke-virtual {p3}, Landroid/uwb/UwbManager$AdfProvisionStateCallback;->getProxy()Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;

    move-result-object v0

    .line 1000
    .local v0, "proxy":Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdfProvisionStateCallback;)V

    .line 1002
    :try_start_b
    iget-object v1, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v1, p1, v0}, Landroid/uwb/IUwbAdapter;->provisionProfileAdfByScript(Landroid/os/PersistableBundle;Landroid/uwb/IUwbAdfProvisionStateCallbacks;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 1005
    nop

    .line 1006
    return-void

    .line 1003
    :catch_12
    move-exception v1

    .line 1004
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 998
    .end local v0    # "proxy":Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryUwbsTimestampMicros()J
    .registers 3

    .line 567
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->queryUwbsTimestampMicros()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 568
    :catch_7
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerAdapterStateCallback(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdapterStateCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/UwbManager$AdapterStateCallback;

    .line 440
    iget-object v0, p0, Landroid/uwb/UwbManager;->mAdapterStateListener:Landroid/uwb/AdapterStateListener;

    invoke-virtual {v0, p1, p2}, Landroid/uwb/AdapterStateListener;->register(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdapterStateCallback;)V

    .line 441
    return-void
.end method

.method public whitelist registerUwbOemExtensionCallback(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$UwbOemExtensionCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    .line 499
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbOemExtensionCallbackListener:Landroid/uwb/UwbOemExtensionCallbackListener;

    invoke-virtual {v0, p1, p2}, Landroid/uwb/UwbOemExtensionCallbackListener;->register(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$UwbOemExtensionCallback;)V

    .line 500
    return-void
.end method

.method public whitelist registerUwbVendorUciCallback(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$UwbVendorUciCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/UwbManager$UwbVendorUciCallback;

    .line 471
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbVendorUciCallbackListener:Landroid/uwb/UwbVendorUciCallbackListener;

    invoke-virtual {v0, p1, p2}, Landroid/uwb/UwbVendorUciCallbackListener;->register(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$UwbVendorUciCallback;)V

    .line 472
    return-void
.end method

.method public whitelist removeProfileAdf(Landroid/os/PersistableBundle;)I
    .registers 4
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;

    .line 1043
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->removeProfileAdf(Landroid/os/PersistableBundle;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1044
    :catch_7
    move-exception v0

    .line 1045
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeServiceProfile(Landroid/os/PersistableBundle;)I
    .registers 4
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 927
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->removeServiceProfile(Landroid/os/PersistableBundle;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 928
    :catch_7
    move-exception v0

    .line 929
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestUwbHwEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 819
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    iget-object v1, p0, Landroid/uwb/UwbManager;->mContext:Landroid/content/Context;

    .line 820
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/os/Binder;

    iget-object v3, p0, Landroid/uwb/UwbManager;->mContext:Landroid/content/Context;

    .line 821
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 819
    invoke-interface {v0, p1, v1, v2}, Landroid/uwb/IUwbAdapter;->requestHwEnabled(ZLandroid/content/AttributionSource;Landroid/os/IBinder;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    .line 824
    nop

    .line 825
    return-void

    .line 822
    :catch_18
    move-exception v0

    .line 823
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist sendVendorUciMessage(III[B)I
    .registers 7
    .param p1, "mt"    # I
    .param p2, "gid"    # I
    .param p3, "oid"    # I
    .param p4, "payload"    # [B

    .line 1158
    const-string v0, "Payload must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1160
    :try_start_5
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/uwb/IUwbAdapter;->sendVendorUciMessage(III[B)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    .line 1161
    :catch_c
    move-exception v0

    .line 1162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist sendVendorUciMessage(II[B)I
    .registers 6
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B

    .line 1130
    const-string v0, "Payload must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1132
    :try_start_5
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/uwb/IUwbAdapter;->sendVendorUciMessage(III[B)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    return v0

    .line 1133
    :catch_d
    move-exception v0

    .line 1134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUwbEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 739
    iget-object v0, p0, Landroid/uwb/UwbManager;->mAdapterStateListener:Landroid/uwb/AdapterStateListener;

    invoke-virtual {v0, p1}, Landroid/uwb/AdapterStateListener;->setEnabled(Z)V

    .line 740
    return-void
.end method

.method public whitelist unregisterAdapterStateCallback(Landroid/uwb/UwbManager$AdapterStateCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/uwb/UwbManager$AdapterStateCallback;

    .line 454
    iget-object v0, p0, Landroid/uwb/UwbManager;->mAdapterStateListener:Landroid/uwb/AdapterStateListener;

    invoke-virtual {v0, p1}, Landroid/uwb/AdapterStateListener;->unregister(Landroid/uwb/UwbManager$AdapterStateCallback;)V

    .line 455
    return-void
.end method

.method public whitelist unregisterUwbOemExtensionCallback(Landroid/uwb/UwbManager$UwbOemExtensionCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    .line 515
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbOemExtensionCallbackListener:Landroid/uwb/UwbOemExtensionCallbackListener;

    invoke-virtual {v0, p1}, Landroid/uwb/UwbOemExtensionCallbackListener;->unregister(Landroid/uwb/UwbManager$UwbOemExtensionCallback;)V

    .line 516
    return-void
.end method

.method public whitelist unregisterUwbVendorUciCallback(Landroid/uwb/UwbManager$UwbVendorUciCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/uwb/UwbManager$UwbVendorUciCallback;

    .line 485
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbVendorUciCallbackListener:Landroid/uwb/UwbVendorUciCallbackListener;

    invoke-virtual {v0, p1}, Landroid/uwb/UwbVendorUciCallbackListener;->unregister(Landroid/uwb/UwbManager$UwbVendorUciCallback;)V

    .line 486
    return-void
.end method
