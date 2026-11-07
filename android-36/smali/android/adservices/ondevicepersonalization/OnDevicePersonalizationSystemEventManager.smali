.class public Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;
.super Ljava/lang/Object;
.source "OnDevicePersonalizationSystemEventManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist ALT_ODP_MANAGING_SERVICE_PACKAGE_SUFFIX:Ljava/lang/String; = "com.google.android.ondevicepersonalization.services"

.field private static final blacklist INTENT_FILTER_ACTION:Ljava/lang/String; = "android.OnDevicePersonalizationService"

.field private static final blacklist ODP_MANAGING_SERVICE_PACKAGE_SUFFIX:Ljava/lang/String; = "com.android.ondevicepersonalization.services"

.field public static final blacklist ON_DEVICE_PERSONALIZATION_SYSTEM_EVENT_SERVICE:Ljava/lang/String; = "on_device_personalization_system_event_service"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
            "Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->logApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    nop

    .line 57
    const-class v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->TAG:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;->getLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    nop

    .line 71
    const-string v0, "com.android.ondevicepersonalization.services"

    const-string v1, "com.google.android.ondevicepersonalization.services"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationManager$$ExternalSyntheticLambda0;-><init>()V

    .line 68
    const-string v2, "android.OnDevicePersonalizationService"

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getServiceBinderByIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/util/function/Function;)Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    move-result-object v0

    .line 66
    invoke-direct {p0, p1, v0}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;-><init>(Landroid/content/Context;Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<",
            "Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p2, "serviceBinder":Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;, "Lcom/android/federatedcompute/internal/util/AbstractServiceBinder<Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    .line 85
    return-void
.end method

.method private blacklist logApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V
    .registers 15
    .param p1, "service"    # Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .param p2, "sdkPackageName"    # Ljava/lang/String;
    .param p3, "apiName"    # I
    .param p4, "latencyMillis"    # J
    .param p6, "rpcCallLatencyMillis"    # J
    .param p8, "rpcReturnLatencyMillis"    # J
    .param p10, "responseCode"    # I

    .line 192
    if-eqz p1, :cond_22

    .line 193
    :try_start_2
    invoke-interface/range {p1 .. p10}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;->logApiCallStats(Ljava/lang/String;IJJJI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_22

    .line 196
    :catch_6
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->sLogger:Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Error logging API call stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_23

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_22
    :goto_22
    nop

    .line 199
    :goto_23
    return-void
.end method


# virtual methods
.method public whitelist notifyMeasurementEvent(Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 22
    .param p1, "measurementWebTriggerEvent"    # Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Exception;>;"
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 108
    .local v5, "startTimeMillis":J
    move-object/from16 v7, p0

    iget-object v0, v7, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->mServiceBinder:Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;

    .line 109
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/android/federatedcompute/internal/util/AbstractServiceBinder;->getService(Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;

    .line 112
    .local v8, "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :try_start_1a
    new-instance v0, Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1c} :catch_76
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1c} :catch_76
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1c} :catch_57

    :try_start_1c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 113
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v0, "android.adservices.ondevicepersonalization.measurement_web_trigger_params"

    new-instance v1, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_24} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_24} :catch_53
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_57

    move-object/from16 v10, p1

    :try_start_26
    invoke-direct {v1, v10}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;-><init>(Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;)V

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 116
    new-instance v0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;-><init>()V

    .line 119
    invoke-virtual {v0, v5, v6}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->setStartTimeMillis(J)Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->build()Landroid/adservices/ondevicepersonalization/CallerMetadata;

    move-result-object v11

    new-instance v0, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_3b} :catch_76
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_3b} :catch_76
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_51

    move-object/from16 v3, p3

    move-object v1, v7

    move-object v4, v8

    .end local v8    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .local v4, "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :try_start_3f
    invoke-direct/range {v0 .. v6}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager$1;-><init>(Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;J)V
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_42} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_3f .. :try_end_42} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_49

    .line 116
    .end local v4    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v8    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    const/4 v1, 0x1

    :try_start_43
    invoke-interface {v8, v1, v9, v11, v0}, Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;->registerMeasurementEvent(ILandroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CallerMetadata;Landroid/adservices/ondevicepersonalization/aidl/IRegisterMeasurementEventCallback;)V
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_46} :catch_76
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_46} :catch_76
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_51

    .line 180
    .end local v9    # "bundle":Landroid/os/Bundle;
    move-object/from16 v3, p3

    goto :goto_75

    .line 170
    .end local v8    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v4    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :catch_49
    move-exception v0

    move-object v8, v4

    .end local v4    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v8    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    goto :goto_5a

    .line 160
    .end local v8    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v4    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    :catch_4c
    move-exception v0

    move-object v8, v4

    move-object/from16 v3, p3

    .end local v4    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    .restart local v8    # "service":Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;
    goto :goto_79

    .line 170
    :catch_51
    move-exception v0

    goto :goto_5a

    .line 160
    :catch_53
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_77

    .line 170
    :catch_57
    move-exception v0

    move-object/from16 v10, p1

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    :goto_5a
    nop

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v11, v1, v5

    .line 171
    const-string v9, ""

    const/16 v10, 0x16

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x64

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v17}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->logApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 179
    move-object/from16 v3, p3

    invoke-interface {v3, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_75
    return-void

    .line 160
    :catch_76
    move-exception v0

    :goto_77
    move-object/from16 v3, p3

    .line 161
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_79
    nop

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v11, v1, v5

    .line 161
    const-string v9, ""

    const/16 v10, 0x16

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x64

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v17}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationSystemEventManager;->logApiCallStats(Landroid/adservices/ondevicepersonalization/aidl/IOnDevicePersonalizationManagingService;Ljava/lang/String;IJJJI)V

    .line 169
    throw v0
.end method
