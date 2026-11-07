.class public Landroid/adservices/ondevicepersonalization/ModelManager;
.super Ljava/lang/Object;
.source "ModelManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;


# instance fields
.field private final blacklist mDataService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

.field private final blacklist mModelService:Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/ModelManager;IJI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/ondevicepersonalization/ModelManager;->logApiCallStats(IJI)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->getLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/ModelManager;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    .line 43
    const-class v0, Landroid/adservices/ondevicepersonalization/ModelManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/ModelManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;)V
    .registers 3
    .param p1, "dataService"    # Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;
    .param p2, "modelService"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ModelManager;->mDataService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    .line 52
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/ModelManager;->mModelService:Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;

    .line 53
    return-void
.end method

.method private blacklist logApiCallStats(IJI)V
    .registers 9
    .param p1, "apiName"    # I
    .param p2, "duration"    # J
    .param p4, "responseCode"    # I

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ModelManager;->mDataService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->logApiCallStats(IJI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 150
    goto :goto_24

    .line 148
    :catch_6
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/adservices/ondevicepersonalization/ModelManager;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/adservices/ondevicepersonalization/ModelManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": failed to log metrics"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method


# virtual methods
.method public whitelist run(Landroid/adservices/ondevicepersonalization/InferenceInput;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 12
    .param p1, "input"    # Landroid/adservices/ondevicepersonalization/InferenceInput;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/InferenceInput;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/ondevicepersonalization/InferenceOutput;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/InferenceOutput;Ljava/lang/Exception;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 69
    .local v4, "startTimeMillis":J
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 71
    .local v6, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ModelManager;->mDataService:Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;

    invoke-interface {v0}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "android.ondevicepersonalization.extra.data_access_service_binder"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 72
    new-instance v0, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;

    invoke-direct {v0, p1}, Landroid/adservices/ondevicepersonalization/InferenceInputParcel;-><init>(Landroid/adservices/ondevicepersonalization/InferenceInput;)V

    const-string v1, "android.ondevicepersonalization.extra.inference_input"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    :try_start_22
    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/ModelManager;->mModelService:Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;

    new-instance v0, Landroid/adservices/ondevicepersonalization/ModelManager$1;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_33

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/InferenceOutput;Ljava/lang/Exception;>;"
    .local v2, "executor":Ljava/util/concurrent/Executor;
    .local v3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/InferenceOutput;Ljava/lang/Exception;>;"
    :try_start_29
    invoke-direct/range {v0 .. v5}, Landroid/adservices/ondevicepersonalization/ModelManager$1;-><init>(Landroid/adservices/ondevicepersonalization/ModelManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;J)V

    invoke-interface {v7, v6, v0}, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelService;->runInference(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelServiceCallback;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    .line 142
    goto :goto_3f

    .line 140
    :catch_30
    move-exception v0

    move-object p2, v0

    goto :goto_37

    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/InferenceOutput;Ljava/lang/Exception;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/InferenceOutput;Ljava/lang/Exception;>;"
    :catch_33
    move-exception v0

    move-object v2, p2

    move-object v3, p3

    move-object p2, v0

    .line 141
    .end local p3    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/InferenceOutput;Ljava/lang/Exception;>;"
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/ondevicepersonalization/InferenceOutput;Ljava/lang/Exception;>;"
    .local p2, "e":Landroid/os/RemoteException;
    :goto_37
    new-instance p3, Ljava/lang/IllegalStateException;

    invoke-direct {p3, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, p3}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 143
    .end local p2    # "e":Landroid/os/RemoteException;
    :goto_3f
    return-void
.end method
