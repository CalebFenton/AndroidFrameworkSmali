.class public final Landroid/uwb/UwbOemExtensionCallbackListener;
.super Landroid/uwb/IUwbOemExtensionCallback$Stub;
.source "UwbOemExtensionCallbackListener.java"


# static fields
.field private static final blacklist OEM_EXTENSION_RESPONSE_THRESHOLD_MS:I = 0x7d0

.field private static final blacklist TAG:Ljava/lang/String; = "Uwb.UwbOemExtensionCallback"


# instance fields
.field private final blacklist mAdapter:Landroid/uwb/IUwbAdapter;

.field private blacklist mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$27q0tAR4deLant_fDuwEbB2wUKI(Landroid/uwb/UwbOemExtensionCallbackListener;Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/UwbOemExtensionCallbackListener;->lambda$onRangingReportReceived$3(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$bSXBF7bNfMG69W6oDcI9b9Ggu_c(Landroid/uwb/UwbOemExtensionCallbackListener;Landroid/os/PersistableBundle;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/UwbOemExtensionCallbackListener;->lambda$onCheckPointedTarget$4(Landroid/os/PersistableBundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ne9tdxBuRyQms2gfPJ7BVmrYam8(Landroid/uwb/UwbOemExtensionCallbackListener;Landroid/os/PersistableBundle;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/uwb/UwbOemExtensionCallbackListener;->lambda$onSessionConfigurationReceived$2(Landroid/os/PersistableBundle;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/uwb/IUwbAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/uwb/IUwbAdapter;

    .line 46
    invoke-direct {p0}, Landroid/uwb/IUwbOemExtensionCallback$Stub;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 44
    iput-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    .line 47
    iput-object p1, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mAdapter:Landroid/uwb/IUwbAdapter;

    .line 48
    return-void
.end method

.method private synthetic blacklist lambda$onCheckPointedTarget$4(Landroid/os/PersistableBundle;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "pointedTargetBundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    invoke-interface {v0, p1}, Landroid/uwb/UwbManager$UwbOemExtensionCallback;->onCheckPointedTarget(Landroid/os/PersistableBundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$onDeviceStatusNotificationReceived$1(Landroid/uwb/UwbManager$UwbOemExtensionCallback;Landroid/os/PersistableBundle;)V
    .registers 2
    .param p0, "callback"    # Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    .param p1, "deviceStateBundle"    # Landroid/os/PersistableBundle;

    .line 125
    invoke-interface {p0, p1}, Landroid/uwb/UwbManager$UwbOemExtensionCallback;->onDeviceStatusNotificationReceived(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRangingReportReceived$3(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;
    .registers 3
    .param p1, "rangingReport"    # Landroid/uwb/RangingReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    invoke-interface {v0, p1}, Landroid/uwb/UwbManager$UwbOemExtensionCallback;->onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$onSessionConfigurationReceived$2(Landroid/os/PersistableBundle;)Ljava/lang/Integer;
    .registers 3
    .param p1, "openSessionBundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    invoke-interface {v0, p1}, Landroid/uwb/UwbManager$UwbOemExtensionCallback;->onSessionConfigurationComplete(Landroid/os/PersistableBundle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$onSessionStatusNotificationReceived$0(Landroid/uwb/UwbManager$UwbOemExtensionCallback;Landroid/os/PersistableBundle;)V
    .registers 2
    .param p0, "callback"    # Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    .param p1, "sessionStatusBundle"    # Landroid/os/PersistableBundle;

    .line 102
    invoke-interface {p0, p1}, Landroid/uwb/UwbManager$UwbOemExtensionCallback;->onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V

    return-void
.end method


# virtual methods
.method public blacklist onCheckPointedTarget(Landroid/os/PersistableBundle;)Z
    .registers 10
    .param p1, "pointedTargetBundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    if-nez v0, :cond_8

    .line 207
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 210
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_51

    .line 211
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 213
    .local v2, "result":Z
    :try_start_d
    invoke-static {}, Lcom/android/x/uwb/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 214
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 215
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v5, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p1}, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda1;-><init>(Landroid/uwb/UwbOemExtensionCallbackListener;Landroid/os/PersistableBundle;)V

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 218
    .local v4, "getCheckPointedTarget":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_4b

    .line 220
    :try_start_24
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_24 .. :try_end_32} :catch_40
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_32} :catch_40
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_24 .. :try_end_32} :catch_34
    .catchall {:try_start_24 .. :try_end_32} :catchall_4b

    move v2, v5

    .line 227
    :goto_33
    goto :goto_45

    .line 224
    :catch_34
    move-exception v5

    .line 225
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_35
    const-string v6, "Uwb.UwbOemExtensionCallback"

    const-string v7, "Check pointed target failed: TIMEOUT"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_45

    .line 222
    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_40
    move-exception v5

    .line 223
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_4b

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_33

    .line 230
    .end local v3    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v4    # "getCheckPointedTarget":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    :cond_45
    :goto_45
    :try_start_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 231
    nop

    .line 232
    monitor-exit p0

    return v2

    .line 230
    :catchall_4b
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 231
    nop

    .end local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .end local p1    # "pointedTargetBundle":Landroid/os/PersistableBundle;
    throw v3

    .line 233
    .end local v0    # "identity":J
    .end local v2    # "result":Z
    .restart local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .restart local p1    # "pointedTargetBundle":Landroid/os/PersistableBundle;
    :catchall_51
    move-exception v0

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public blacklist onDeviceStatusNotificationReceived(Landroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "deviceStateBundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_a

    goto :goto_2c

    .line 119
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2e

    .line 121
    .local v0, "identity":J
    :try_start_e
    iget-object v2, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    .line 122
    .local v2, "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    iget-object v3, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 123
    .local v3, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Lcom/android/x/uwb/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 124
    new-instance v4, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, p1}, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda4;-><init>(Landroid/uwb/UwbManager$UwbOemExtensionCallback;Landroid/os/PersistableBundle;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_26

    .line 128
    :cond_20
    :try_start_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    nop

    .line 130
    .end local v0    # "identity":J
    .end local v2    # "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    monitor-exit p0

    .line 131
    return-void

    .line 128
    .restart local v0    # "identity":J
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    nop

    .end local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .end local p1    # "deviceStateBundle":Landroid/os/PersistableBundle;
    throw v2

    .line 115
    .end local v0    # "identity":J
    .restart local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .restart local p1    # "deviceStateBundle":Landroid/os/PersistableBundle;
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 130
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;
    .registers 10
    .param p1, "rangingReport"    # Landroid/uwb/RangingReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    if-nez v0, :cond_7

    .line 172
    monitor-exit p0

    return-object p1

    .line 174
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_55

    .line 175
    .local v0, "identity":J
    move-object v2, p1

    .line 177
    .local v2, "vendorRangingReport":Landroid/uwb/RangingReport;
    :try_start_c
    invoke-static {}, Lcom/android/x/uwb/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 178
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 179
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v5, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p1}, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda3;-><init>(Landroid/uwb/UwbOemExtensionCallbackListener;Landroid/uwb/RangingReport;)V

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 182
    .local v4, "getOemRangingReport":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Landroid/uwb/RangingReport;>;"
    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_4f

    .line 184
    :try_start_23
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/uwb/RangingReport;
    :try_end_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23 .. :try_end_2d} :catch_44
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2d} :catch_44
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_23 .. :try_end_2d} :catch_38
    .catchall {:try_start_23 .. :try_end_2d} :catchall_4f

    .line 186
    .end local v2    # "vendorRangingReport":Landroid/uwb/RangingReport;
    .local v5, "vendorRangingReport":Landroid/uwb/RangingReport;
    if-nez v5, :cond_31

    move-object v2, p1

    goto :goto_32

    .line 187
    :cond_31
    move-object v2, v5

    :goto_32
    nop

    .line 196
    :try_start_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_55

    .line 186
    return-object v2

    .line 190
    .end local v5    # "vendorRangingReport":Landroid/uwb/RangingReport;
    .restart local v2    # "vendorRangingReport":Landroid/uwb/RangingReport;
    :catch_38
    move-exception v5

    .line 191
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_39
    const-string v6, "Uwb.UwbOemExtensionCallback"

    const-string v7, "Failed to get ranging report from vendor: TIMEOUT"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_49

    .line 188
    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_44
    move-exception v5

    .line 189
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_4f

    .line 193
    .end local v5    # "e":Ljava/lang/Exception;
    nop

    .line 196
    .end local v3    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v4    # "getOemRangingReport":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Landroid/uwb/RangingReport;>;"
    :cond_49
    :goto_49
    :try_start_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    nop

    .line 198
    monitor-exit p0

    return-object v2

    .line 196
    :catchall_4f
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    nop

    .end local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .end local p1    # "rangingReport":Landroid/uwb/RangingReport;
    throw v3

    .line 199
    .end local v0    # "identity":J
    .end local v2    # "vendorRangingReport":Landroid/uwb/RangingReport;
    .restart local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .restart local p1    # "rangingReport":Landroid/uwb/RangingReport;
    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public blacklist onSessionConfigurationReceived(Landroid/os/PersistableBundle;)I
    .registers 10
    .param p1, "openSessionBundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    monitor-enter p0

    .line 137
    :try_start_1
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    if-nez v0, :cond_8

    .line 138
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 141
    :cond_8
    const/4 v0, 0x0

    .line 142
    .local v0, "status":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_51

    .line 144
    .local v1, "identity":J
    :try_start_d
    invoke-static {}, Lcom/android/x/uwb/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 145
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 146
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v5, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1}, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda2;-><init>(Landroid/uwb/UwbOemExtensionCallbackListener;Landroid/os/PersistableBundle;)V

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 148
    .local v4, "p":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_4b

    .line 150
    :try_start_24
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_24 .. :try_end_32} :catch_40
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_32} :catch_40
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_24 .. :try_end_32} :catch_34
    .catchall {:try_start_24 .. :try_end_32} :catchall_4b

    move v0, v5

    .line 158
    :goto_33
    goto :goto_45

    .line 153
    :catch_34
    move-exception v5

    .line 154
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_35
    const-string v6, "Uwb.UwbOemExtensionCallback"

    const-string v7, "Failed to get response for session config from vendor - status : TIMEOUT"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_45

    .line 151
    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_40
    move-exception v5

    .line 152
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_4b

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_33

    .line 161
    .end local v3    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v4    # "p":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    :cond_45
    :goto_45
    :try_start_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    nop

    .line 163
    monitor-exit p0

    return v0

    .line 161
    :catchall_4b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    nop

    .end local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .end local p1    # "openSessionBundle":Landroid/os/PersistableBundle;
    throw v3

    .line 164
    .end local v0    # "status":I
    .end local v1    # "identity":J
    .restart local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .restart local p1    # "openSessionBundle":Landroid/os/PersistableBundle;
    :catchall_51
    move-exception v0

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public blacklist onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "sessionStatusBundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_a

    goto :goto_2c

    .line 96
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2e

    .line 98
    .local v0, "identity":J
    :try_start_e
    iget-object v2, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    .line 99
    .local v2, "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    iget-object v3, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 100
    .local v3, "executor":Ljava/util/concurrent/Executor;
    invoke-static {}, Lcom/android/x/uwb/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 101
    new-instance v4, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Landroid/uwb/UwbOemExtensionCallbackListener$$ExternalSyntheticLambda0;-><init>(Landroid/uwb/UwbManager$UwbOemExtensionCallback;Landroid/os/PersistableBundle;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_26

    .line 105
    :cond_20
    :try_start_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    nop

    .line 107
    .end local v0    # "identity":J
    .end local v2    # "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    monitor-exit p0

    .line 108
    return-void

    .line 105
    .restart local v0    # "identity":J
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    nop

    .end local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .end local p1    # "sessionStatusBundle":Landroid/os/PersistableBundle;
    throw v2

    .line 92
    .end local v0    # "identity":J
    .restart local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .restart local p1    # "sessionStatusBundle":Landroid/os/PersistableBundle;
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 107
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist register(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$UwbOemExtensionCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    .line 52
    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    if-nez v0, :cond_1e

    .line 59
    :try_start_5
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p0}, Landroid/uwb/IUwbAdapter;->registerOemExtensionCallback(Landroid/uwb/IUwbOemExtensionCallback;)V

    .line 60
    iput-object p1, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 61
    iput-object p2, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_11
    .catchall {:try_start_5 .. :try_end_e} :catchall_2b

    .line 65
    nop

    .line 66
    :try_start_f
    monitor-exit p0

    .line 67
    return-void

    .line 62
    :catch_11
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Uwb.UwbOemExtensionCallback"

    const-string v2, "Failed to register Oem extension callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    throw v1

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    :cond_1e
    const-string v0, "Uwb.UwbOemExtensionCallback"

    const-string v1, "Callback already registered. Unregister existing callback beforeregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    throw v0

    .line 66
    .restart local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public blacklist unregister(Landroid/uwb/UwbManager$UwbOemExtensionCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    .line 71
    monitor-enter p0

    .line 72
    :try_start_1
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_30

    if-ne v0, p1, :cond_23

    .line 77
    :try_start_9
    iget-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p0}, Landroid/uwb/IUwbAdapter;->unregisterOemExtensionCallback(Landroid/uwb/IUwbOemExtensionCallback;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    .line 79
    iput-object v0, p0, Landroid/uwb/UwbOemExtensionCallbackListener;->mExecutor:Ljava/util/concurrent/Executor;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_16
    .catchall {:try_start_9 .. :try_end_13} :catchall_30

    .line 83
    nop

    .line 84
    :try_start_14
    monitor-exit p0

    .line 85
    return-void

    .line 80
    :catch_16
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Uwb.UwbOemExtensionCallback"

    const-string v2, "Failed to unregister Oem extension callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .end local p1    # "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    throw v1

    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .restart local p1    # "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    :cond_23
    const-string v0, "Uwb.UwbOemExtensionCallback"

    const-string v1, "Callback not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .end local p1    # "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    throw v0

    .line 84
    .restart local p0    # "this":Landroid/uwb/UwbOemExtensionCallbackListener;
    .restart local p1    # "callback":Landroid/uwb/UwbManager$UwbOemExtensionCallback;
    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_30

    throw v0
.end method
