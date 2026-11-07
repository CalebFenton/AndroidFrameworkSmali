.class public Landroid/adservices/customaudience/CustomAudienceManager;
.super Ljava/lang/Object;
.source "CustomAudienceManager.java"


# static fields
.field public static final blacklist CUSTOM_AUDIENCE_SERVICE:Ljava/lang/String; = "custom_audience_service"

.field private static final blacklist sLogger:Lcom/android/adservices/LoggerFactory$Logger;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mServiceBinder:Lcom/android/adservices/ServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/adservices/ServiceBinder<",
            "Landroid/adservices/customaudience/ICustomAudienceService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    invoke-static {}, Lcom/android/adservices/LoggerFactory;->getFledgeLogger()Lcom/android/adservices/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/customaudience/CustomAudienceManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0, p1}, Landroid/adservices/customaudience/CustomAudienceManager;->initialize(Landroid/content/Context;)Landroid/adservices/customaudience/CustomAudienceManager;

    .line 88
    return-void
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/adservices/customaudience/CustomAudienceManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_f

    .line 73
    const-class v0, Landroid/adservices/customaudience/CustomAudienceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/customaudience/CustomAudienceManager;

    goto :goto_14

    .line 74
    :cond_f
    new-instance v0, Landroid/adservices/customaudience/CustomAudienceManager;

    invoke-direct {v0, p0}, Landroid/adservices/customaudience/CustomAudienceManager;-><init>(Landroid/content/Context;)V

    .line 72
    :goto_14
    return-object v0
.end method

.method private blacklist getCallerPackageName()Ljava/lang/String;
    .registers 3

    .line 535
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudienceManager;->mContext:Landroid/content/Context;

    .line 536
    invoke-static {v0}, Landroid/adservices/common/SandboxedSdkContextUtils;->getAsSandboxedSdkContext(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v0

    .line 537
    .local v0, "sandboxedSdkContext":Landroid/app/sdksandbox/SandboxedSdkContext;
    if-nez v0, :cond_f

    .line 538
    iget-object v1, p0, Landroid/adservices/customaudience/CustomAudienceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 539
    :cond_f
    invoke-virtual {v0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    .line 537
    :goto_13
    return-object v1
.end method


# virtual methods
.method public whitelist fetchAndJoinCustomAudience(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "fetchAndJoinCustomAudienceRequest"    # Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :try_start_9
    invoke-virtual {p0}, Landroid/adservices/customaudience/CustomAudienceManager;->getService()Landroid/adservices/customaudience/ICustomAudienceService;

    move-result-object v0

    .line 237
    .local v0, "service":Landroid/adservices/customaudience/ICustomAudienceService;
    new-instance v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;

    .line 239
    invoke-virtual {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->getFetchUri()Landroid/net/Uri;

    move-result-object v2

    .line 240
    invoke-direct {p0}, Landroid/adservices/customaudience/CustomAudienceManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->setName(Ljava/lang/String;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;

    move-result-object v1

    .line 243
    invoke-virtual {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->getActivationTime()Ljava/time/Instant;

    move-result-object v2

    .line 242
    invoke-virtual {v1, v2}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->setActivationTime(Ljava/time/Instant;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;

    move-result-object v1

    .line 245
    invoke-virtual {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->getExpirationTime()Ljava/time/Instant;

    move-result-object v2

    .line 244
    invoke-virtual {v1, v2}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->setExpirationTime(Ljava/time/Instant;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->getUserBiddingSignals()Landroid/adservices/common/AdSelectionSignals;

    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->setUserBiddingSignals(Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->build()Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/customaudience/CustomAudienceManager$2;

    invoke-direct {v2, p0, p2, p3}, Landroid/adservices/customaudience/CustomAudienceManager$2;-><init>(Landroid/adservices/customaudience/CustomAudienceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 237
    invoke-interface {v0, v1, v2}, Landroid/adservices/customaudience/ICustomAudienceService;->fetchAndJoinCustomAudience(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;Landroid/adservices/customaudience/FetchAndJoinCustomAudienceCallback;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_46} :catch_47

    .line 267
    .end local v0    # "service":Landroid/adservices/customaudience/ICustomAudienceService;
    goto :goto_59

    .line 264
    :catch_47
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/customaudience/CustomAudienceManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 266
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal Error!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_59
    return-void
.end method

.method blacklist getService()Landroid/adservices/customaudience/ICustomAudienceService;
    .registers 4

    .line 120
    iget-object v0, p0, Landroid/adservices/customaudience/CustomAudienceManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/ServiceBinder;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/customaudience/ICustomAudienceService;

    .line 121
    .local v0, "service":Landroid/adservices/customaudience/ICustomAudienceService;
    if-eqz v0, :cond_b

    .line 124
    return-object v0

    .line 122
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "custom audience service is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTestCustomAudienceManager()Landroid/adservices/customaudience/TestCustomAudienceManager;
    .registers 3

    .line 115
    new-instance v0, Landroid/adservices/customaudience/TestCustomAudienceManager;

    invoke-direct {p0}, Landroid/adservices/customaudience/CustomAudienceManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/adservices/customaudience/TestCustomAudienceManager;-><init>(Landroid/adservices/customaudience/CustomAudienceManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist initialize(Landroid/content/Context;)Landroid/adservices/customaudience/CustomAudienceManager;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iput-object p1, p0, Landroid/adservices/customaudience/CustomAudienceManager;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Landroid/adservices/customaudience/CustomAudienceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/adservices/customaudience/CustomAudienceManager$$ExternalSyntheticLambda0;-><init>()V

    .line 105
    const-string v1, "android.adservices.customaudience.CUSTOM_AUDIENCE_SERVICE"

    invoke-static {p1, v1, v0}, Lcom/android/adservices/ServiceBinder;->getServiceBinder(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Function;)Lcom/android/adservices/ServiceBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/CustomAudienceManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    .line 109
    return-object p0
.end method

.method public whitelist joinCustomAudience(Landroid/adservices/customaudience/JoinCustomAudienceRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "joinCustomAudienceRequest"    # Landroid/adservices/customaudience/JoinCustomAudienceRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/customaudience/JoinCustomAudienceRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p1}, Landroid/adservices/customaudience/JoinCustomAudienceRequest;->getCustomAudience()Landroid/adservices/customaudience/CustomAudience;

    move-result-object v0

    .line 169
    .local v0, "customAudience":Landroid/adservices/customaudience/CustomAudience;
    :try_start_d
    invoke-virtual {p0}, Landroid/adservices/customaudience/CustomAudienceManager;->getService()Landroid/adservices/customaudience/ICustomAudienceService;

    move-result-object v1

    .line 171
    .local v1, "service":Landroid/adservices/customaudience/ICustomAudienceService;
    nop

    .line 173
    invoke-direct {p0}, Landroid/adservices/customaudience/CustomAudienceManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/adservices/customaudience/CustomAudienceManager$1;

    invoke-direct {v3, p0, p2, p3}, Landroid/adservices/customaudience/CustomAudienceManager$1;-><init>(Landroid/adservices/customaudience/CustomAudienceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 171
    invoke-interface {v1, v0, v2, v3}, Landroid/adservices/customaudience/ICustomAudienceService;->joinCustomAudience(Landroid/adservices/customaudience/CustomAudience;Ljava/lang/String;Landroid/adservices/customaudience/ICustomAudienceCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_1f

    .line 192
    .end local v1    # "service":Landroid/adservices/customaudience/ICustomAudienceService;
    goto :goto_31

    .line 189
    :catch_1f
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/adservices/customaudience/CustomAudienceManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v3, "Exception"

    invoke-virtual {v2, v1, v3}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 191
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Internal Error!"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v2}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 193
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method public whitelist leaveCustomAudience(Landroid/adservices/customaudience/LeaveCustomAudienceRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "leaveCustomAudienceRequest"    # Landroid/adservices/customaudience/LeaveCustomAudienceRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/customaudience/LeaveCustomAudienceRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {p1}, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->getBuyer()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    .line 299
    .local v0, "buyer":Landroid/adservices/common/AdTechIdentifier;
    invoke-virtual {p1}, Landroid/adservices/customaudience/LeaveCustomAudienceRequest;->getName()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "name":Ljava/lang/String;
    :try_start_11
    invoke-virtual {p0}, Landroid/adservices/customaudience/CustomAudienceManager;->getService()Landroid/adservices/customaudience/ICustomAudienceService;

    move-result-object v2

    .line 304
    .local v2, "service":Landroid/adservices/customaudience/ICustomAudienceService;
    nop

    .line 305
    invoke-direct {p0}, Landroid/adservices/customaudience/CustomAudienceManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/adservices/customaudience/CustomAudienceManager$3;

    invoke-direct {v4, p0, p2, p3}, Landroid/adservices/customaudience/CustomAudienceManager$3;-><init>(Landroid/adservices/customaudience/CustomAudienceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 304
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/adservices/customaudience/ICustomAudienceService;->leaveCustomAudience(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/adservices/customaudience/ICustomAudienceCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_23

    .line 326
    .end local v2    # "service":Landroid/adservices/customaudience/ICustomAudienceService;
    goto :goto_35

    .line 323
    :catch_23
    move-exception v2

    .line 324
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/adservices/customaudience/CustomAudienceManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v4, "Exception"

    invoke-virtual {v3, v2, v4}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 325
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Internal Error!"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v3}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 327
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_35
    return-void
.end method

.method public whitelist scheduleCustomAudienceUpdate(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 10
    .param p1, "request"    # Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 497
    .local p3, "receiver":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :try_start_9
    invoke-virtual {p0}, Landroid/adservices/customaudience/CustomAudienceManager;->getService()Landroid/adservices/customaudience/ICustomAudienceService;

    move-result-object v0

    .line 503
    .local v0, "service":Landroid/adservices/customaudience/ICustomAudienceService;
    new-instance v1, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;

    .line 505
    invoke-virtual {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->getUpdateUri()Landroid/net/Uri;

    move-result-object v2

    .line 506
    invoke-direct {p0}, Landroid/adservices/customaudience/CustomAudienceManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-virtual {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->getMinDelay()Ljava/time/Duration;

    move-result-object v4

    .line 508
    invoke-virtual {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->getPartialCustomAudienceList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/time/Duration;Ljava/util/List;)V

    .line 509
    invoke-virtual {p1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateRequest;->shouldReplacePendingUpdates()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->setShouldReplacePendingUpdates(Z)Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput$Builder;->build()Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/customaudience/CustomAudienceManager$4;

    invoke-direct {v2, p0, p2, p3}, Landroid/adservices/customaudience/CustomAudienceManager$4;-><init>(Landroid/adservices/customaudience/CustomAudienceManager;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    .line 503
    invoke-interface {v0, v1, v2}, Landroid/adservices/customaudience/ICustomAudienceService;->scheduleCustomAudienceUpdate(Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateInput;Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_36} :catch_37

    .line 530
    .end local v0    # "service":Landroid/adservices/customaudience/ICustomAudienceService;
    goto :goto_49

    .line 527
    :catch_37
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/customaudience/CustomAudienceManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 529
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal Error!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 531
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_49
    return-void
.end method
