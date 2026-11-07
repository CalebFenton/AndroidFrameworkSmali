.class public Landroid/adservices/customaudience/TestCustomAudienceManager;
.super Ljava/lang/Object;
.source "TestCustomAudienceManager.java"


# static fields
.field private static final blacklist sLogger:Lcom/android/adservices/LoggerFactory$Logger;


# instance fields
.field private final blacklist mCallerPackageName:Ljava/lang/String;

.field private final blacklist mCustomAudienceManager:Landroid/adservices/customaudience/CustomAudienceManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    invoke-static {}, Lcom/android/adservices/LoggerFactory;->getFledgeLogger()Lcom/android/adservices/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/customaudience/TestCustomAudienceManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-void
.end method

.method constructor blacklist <init>(Landroid/adservices/customaudience/CustomAudienceManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "customAudienceManager"    # Landroid/adservices/customaudience/CustomAudienceManager;
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Landroid/adservices/customaudience/TestCustomAudienceManager;->mCustomAudienceManager:Landroid/adservices/customaudience/CustomAudienceManager;

    .line 52
    iput-object p2, p0, Landroid/adservices/customaudience/TestCustomAudienceManager;->mCallerPackageName:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist overrideCustomAudienceRemoteInfo(Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 14
    .param p1, "request"    # Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :try_start_9
    iget-object v0, p0, Landroid/adservices/customaudience/TestCustomAudienceManager;->mCustomAudienceManager:Landroid/adservices/customaudience/CustomAudienceManager;

    invoke-virtual {v0}, Landroid/adservices/customaudience/CustomAudienceManager;->getService()Landroid/adservices/customaudience/ICustomAudienceService;

    move-result-object v0

    move-object v1, v0

    .line 80
    .local v1, "service":Landroid/adservices/customaudience/ICustomAudienceService;
    iget-object v2, p0, Landroid/adservices/customaudience/TestCustomAudienceManager;->mCallerPackageName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->getBuyer()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v3

    .line 83
    invoke-virtual {p1}, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->getName()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {p1}, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->getBiddingLogicJs()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {p1}, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->getBiddingLogicJsVersion()J

    move-result-wide v6

    .line 86
    invoke-virtual {p1}, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->getTrustedBiddingSignals()Landroid/adservices/common/AdSelectionSignals;

    move-result-object v8

    new-instance v9, Landroid/adservices/customaudience/TestCustomAudienceManager$1;

    invoke-direct {v9, p0, p2, p3}, Landroid/adservices/customaudience/TestCustomAudienceManager$1;-><init>(Landroid/adservices/customaudience/TestCustomAudienceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 80
    invoke-interface/range {v1 .. v9}, Landroid/adservices/customaudience/ICustomAudienceService;->overrideCustomAudienceRemoteInfo(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Ljava/lang/String;JLandroid/adservices/common/AdSelectionSignals;Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2e} :catch_2f

    .line 105
    .end local v1    # "service":Landroid/adservices/customaudience/ICustomAudienceService;
    goto :goto_41

    .line 102
    :catch_2f
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/customaudience/TestCustomAudienceManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal Error!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_41
    return-void
.end method

.method public whitelist removeCustomAudienceRemoteInfoOverride(Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "request"    # Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :try_start_9
    iget-object v0, p0, Landroid/adservices/customaudience/TestCustomAudienceManager;->mCustomAudienceManager:Landroid/adservices/customaudience/CustomAudienceManager;

    invoke-virtual {v0}, Landroid/adservices/customaudience/CustomAudienceManager;->getService()Landroid/adservices/customaudience/ICustomAudienceService;

    move-result-object v0

    .line 129
    .local v0, "service":Landroid/adservices/customaudience/ICustomAudienceService;
    iget-object v1, p0, Landroid/adservices/customaudience/TestCustomAudienceManager;->mCallerPackageName:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;->getBuyer()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v2

    .line 132
    invoke-virtual {p1}, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/adservices/customaudience/TestCustomAudienceManager$2;

    invoke-direct {v4, p0, p2, p3}, Landroid/adservices/customaudience/TestCustomAudienceManager$2;-><init>(Landroid/adservices/customaudience/TestCustomAudienceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 129
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/adservices/customaudience/ICustomAudienceService;->removeCustomAudienceRemoteInfoOverride(Ljava/lang/String;Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_21} :catch_22

    .line 151
    .end local v0    # "service":Landroid/adservices/customaudience/ICustomAudienceService;
    goto :goto_34

    .line 148
    :catch_22
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/customaudience/TestCustomAudienceManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 150
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal Error!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method public whitelist resetAllCustomAudienceOverrides(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :try_start_6
    iget-object v0, p0, Landroid/adservices/customaudience/TestCustomAudienceManager;->mCustomAudienceManager:Landroid/adservices/customaudience/CustomAudienceManager;

    invoke-virtual {v0}, Landroid/adservices/customaudience/CustomAudienceManager;->getService()Landroid/adservices/customaudience/ICustomAudienceService;

    move-result-object v0

    .line 171
    .local v0, "service":Landroid/adservices/customaudience/ICustomAudienceService;
    new-instance v1, Landroid/adservices/customaudience/TestCustomAudienceManager$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/adservices/customaudience/TestCustomAudienceManager$3;-><init>(Landroid/adservices/customaudience/TestCustomAudienceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/adservices/customaudience/ICustomAudienceService;->resetAllCustomAudienceOverrides(Landroid/adservices/customaudience/CustomAudienceOverrideCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    .line 190
    .end local v0    # "service":Landroid/adservices/customaudience/ICustomAudienceService;
    goto :goto_27

    .line 187
    :catch_15
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/customaudience/TestCustomAudienceManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 189
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal Error!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method
