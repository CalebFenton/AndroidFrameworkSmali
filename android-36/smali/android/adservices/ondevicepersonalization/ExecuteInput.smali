.class public final Landroid/adservices/ondevicepersonalization/ExecuteInput;
.super Ljava/lang/Object;
.source "ExecuteInput.java"


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private volatile blacklist mAppParams:Landroid/os/PersistableBundle;

.field private final blacklist mAppParamsLock:Ljava/lang/Object;

.field private blacklist mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParamsLock:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParams:Landroid/os/PersistableBundle;

    .line 42
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppPackageName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/ExecuteInputParcel;->getSerializedAppParams()Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 44
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "appParams"    # Landroid/os/PersistableBundle;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParamsLock:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParams:Landroid/os/PersistableBundle;

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppPackageName:Ljava/lang/String;

    .line 55
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParams:Landroid/os/PersistableBundle;

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAppParams()Landroid/os/PersistableBundle;
    .registers 4

    .line 70
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParams:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParams:Landroid/os/PersistableBundle;

    return-object v0

    .line 73
    :cond_7
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParamsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_a
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParams:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_12

    .line 75
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParams:Landroid/os/PersistableBundle;

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_33

    return-object v1

    .line 78
    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    if-eqz v1, :cond_21

    .line 79
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 80
    invoke-virtual {v1}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;->getByteArray()[B

    move-result-object v1

    .line 79
    invoke-static {v1}, Lcom/android/ondevicepersonalization/internal/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_23

    .line 81
    :cond_21
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    :goto_23
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParams:Landroid/os/PersistableBundle;

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mSerializedAppParams:Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledSlice;

    .line 83
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteInput;->mAppParams:Landroid/os/PersistableBundle;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2a} :catch_2c
    .catchall {:try_start_12 .. :try_end_2a} :catchall_33

    :try_start_2a
    monitor-exit v0

    return-object v1

    .line 84
    :catch_2c
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/adservices/ondevicepersonalization/ExecuteInput;
    throw v2

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/adservices/ondevicepersonalization/ExecuteInput;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_33

    throw v1
.end method
