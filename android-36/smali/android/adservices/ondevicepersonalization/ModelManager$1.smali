.class Landroid/adservices/ondevicepersonalization/ModelManager$1;
.super Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelServiceCallback$Stub;
.source "ModelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/ondevicepersonalization/ModelManager;->run(Landroid/adservices/ondevicepersonalization/InferenceInput;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/adservices/ondevicepersonalization/ModelManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$receiver:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$startTimeMillis:J


# direct methods
.method public static synthetic blacklist $r8$lambda$Gfod8AIZK2mI2SnYEkt9fMzdj4U(Landroid/adservices/ondevicepersonalization/ModelManager$1;Landroid/os/Bundle;Landroid/os/OutcomeReceiver;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/ondevicepersonalization/ModelManager$1;->lambda$onSuccess$0(Landroid/os/Bundle;Landroid/os/OutcomeReceiver;J)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pYwGch92udVMkVGJZIKCp-6R-bs(Landroid/adservices/ondevicepersonalization/ModelManager$1;ILandroid/os/OutcomeReceiver;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/ondevicepersonalization/ModelManager$1;->lambda$onError$1(ILandroid/os/OutcomeReceiver;J)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/ModelManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;J)V
    .registers 6
    .param p1, "this$0"    # Landroid/adservices/ondevicepersonalization/ModelManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->this$0:Landroid/adservices/ondevicepersonalization/ModelManager;

    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    iput-wide p4, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->val$startTimeMillis:J

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedModelServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onError$1(ILandroid/os/OutcomeReceiver;J)V
    .registers 11
    .param p1, "errorCode"    # I
    .param p2, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p3, "startTimeMillis"    # J

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    .local v0, "endTimeMillis":J
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;->isValidErrorCode(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 125
    new-instance v2, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;

    invoke-direct {v2, p1}, Landroid/adservices/ondevicepersonalization/OnDevicePersonalizationException;-><init>(I)V

    invoke-interface {p2, v2}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_2e

    .line 129
    :cond_13
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 133
    :goto_2e
    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->this$0:Landroid/adservices/ondevicepersonalization/ModelManager;

    const/16 v3, 0x14

    sub-long v4, v0, p3

    invoke-static {v2, v3, v4, v5, p1}, Landroid/adservices/ondevicepersonalization/ModelManager;->-$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/ModelManager;IJI)V

    .line 137
    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$0(Landroid/os/Bundle;Landroid/os/OutcomeReceiver;J)V
    .registers 14
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p3, "startTimeMillis"    # J

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "responseCode":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 84
    .local v1, "endTimeMillis":J
    const/16 v3, 0x14

    :try_start_7
    const-string v4, "android.ondevicepersonalization.extra.result"

    const-class v5, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    .line 86
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    .line 85
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;

    .line 91
    .local v4, "outputParcel":Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_3e
    .catchall {:try_start_7 .. :try_end_1c} :catchall_3c

    .line 93
    .local v5, "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 96
    :try_start_1d
    invoke-virtual {v4}, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;->getData()[B

    move-result-object v6

    .line 95
    invoke-static {v6}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayUtil;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_27} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_3e
    .catchall {:try_start_1d .. :try_end_27} :catchall_3c

    move-object v5, v6

    .line 99
    goto :goto_2a

    .line 97
    :catch_29
    move-exception v6

    .line 100
    :goto_2a
    :try_start_2a
    new-instance v6, Landroid/adservices/ondevicepersonalization/InferenceOutput;

    .line 102
    invoke-virtual {v4}, Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;->getData()[B

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/adservices/ondevicepersonalization/InferenceOutput;-><init>(Ljava/util/Map;[B)V

    .line 103
    .local v6, "output":Landroid/adservices/ondevicepersonalization/InferenceOutput;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide v1, v7

    .line 104
    invoke-interface {p2, v6}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3b} :catch_3e
    .catchall {:try_start_2a .. :try_end_3b} :catchall_3c

    .end local v4    # "outputParcel":Landroid/adservices/ondevicepersonalization/InferenceOutputParcel;
    .end local v5    # "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6    # "output":Landroid/adservices/ondevicepersonalization/InferenceOutput;
    goto :goto_49

    .line 110
    :catchall_3c
    move-exception v4

    goto :goto_52

    .line 105
    :catch_3e
    move-exception v4

    .line 106
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v1, v5

    .line 107
    const/16 v0, 0x64

    .line 108
    invoke-interface {p2, v4}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_3c

    .line 110
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_49
    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->this$0:Landroid/adservices/ondevicepersonalization/ModelManager;

    sub-long v5, v1, p3

    invoke-static {v4, v3, v5, v6, v0}, Landroid/adservices/ondevicepersonalization/ModelManager;->-$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/ModelManager;IJI)V

    .line 114
    nop

    .line 115
    return-void

    .line 110
    :goto_52
    iget-object v5, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->this$0:Landroid/adservices/ondevicepersonalization/ModelManager;

    sub-long v6, v1, p3

    invoke-static {v5, v3, v6, v7, v0}, Landroid/adservices/ondevicepersonalization/ModelManager;->-$$Nest$mlogApiCallStats(Landroid/adservices/ondevicepersonalization/ModelManager;IJI)V

    .line 114
    throw v4
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 9
    .param p1, "errorCode"    # I

    .line 120
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    iget-wide v5, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->val$startTimeMillis:J

    new-instance v1, Landroid/adservices/ondevicepersonalization/ModelManager$1$$ExternalSyntheticLambda1;

    move-object v2, p0

    move v3, p1

    .end local p1    # "errorCode":I
    .local v3, "errorCode":I
    invoke-direct/range {v1 .. v6}, Landroid/adservices/ondevicepersonalization/ModelManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/adservices/ondevicepersonalization/ModelManager$1;ILandroid/os/OutcomeReceiver;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "result"    # Landroid/os/Bundle;

    .line 79
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->val$receiver:Landroid/os/OutcomeReceiver;

    iget-wide v5, p0, Landroid/adservices/ondevicepersonalization/ModelManager$1;->val$startTimeMillis:J

    new-instance v1, Landroid/adservices/ondevicepersonalization/ModelManager$1$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "result":Landroid/os/Bundle;
    .local v3, "result":Landroid/os/Bundle;
    invoke-direct/range {v1 .. v6}, Landroid/adservices/ondevicepersonalization/ModelManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/adservices/ondevicepersonalization/ModelManager$1;Landroid/os/Bundle;Landroid/os/OutcomeReceiver;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method
