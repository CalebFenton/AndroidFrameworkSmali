.class public Landroid/adservices/adselection/TestAdSelectionManager;
.super Ljava/lang/Object;
.source "TestAdSelectionManager.java"


# static fields
.field private static final blacklist sLogger:Lcom/android/adservices/LoggerFactory$Logger;


# instance fields
.field private final blacklist mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    invoke-static {}, Lcom/android/adservices/LoggerFactory;->getFledgeLogger()Lcom/android/adservices/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-void
.end method

.method constructor blacklist <init>(Landroid/adservices/adselection/AdSelectionManager;)V
    .registers 2
    .param p1, "adSelectionManager"    # Landroid/adservices/adselection/AdSelectionManager;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Landroid/adservices/adselection/TestAdSelectionManager;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist overrideAdSelectionConfigRemoteInfo(Landroid/adservices/adselection/AddAdSelectionOverrideRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "request"    # Landroid/adservices/adselection/AddAdSelectionOverrideRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/AddAdSelectionOverrideRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :try_start_9
    iget-object v0, p0, Landroid/adservices/adselection/TestAdSelectionManager;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    .line 87
    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    move-object v1, v0

    .line 88
    .local v1, "service":Landroid/adservices/adselection/AdSelectionService;
    nop

    .line 89
    invoke-virtual {p1}, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->getAdSelectionConfig()Landroid/adservices/adselection/AdSelectionConfig;

    move-result-object v2

    .line 90
    invoke-virtual {p1}, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->getDecisionLogicJs()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {p1}, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->getTrustedScoringSignals()Landroid/adservices/common/AdSelectionSignals;

    move-result-object v4

    .line 92
    invoke-virtual {p1}, Landroid/adservices/adselection/AddAdSelectionOverrideRequest;->getPerBuyerDecisionLogic()Landroid/adservices/adselection/PerBuyerDecisionLogic;

    move-result-object v5

    new-instance v6, Landroid/adservices/adselection/TestAdSelectionManager$1;

    invoke-direct {v6, p0, p2, p3}, Landroid/adservices/adselection/TestAdSelectionManager$1;-><init>(Landroid/adservices/adselection/TestAdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 88
    invoke-interface/range {v1 .. v6}, Landroid/adservices/adselection/AdSelectionService;->overrideAdSelectionConfigRemoteInfo(Landroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/adselection/PerBuyerDecisionLogic;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_2d} :catch_41
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2d} :catch_2e

    .end local v1    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_51

    .line 112
    :catch_2e
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 114
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_52

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_41
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 115
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_51
    nop

    .line 116
    :goto_52
    return-void
.end method

.method public whitelist overrideAdSelectionFromOutcomesConfigRemoteInfo(Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "request"    # Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :try_start_9
    iget-object v0, p0, Landroid/adservices/adselection/TestAdSelectionManager;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    .line 254
    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 255
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    nop

    .line 256
    invoke-virtual {p1}, Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;->getAdSelectionFromOutcomesConfig()Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    move-result-object v1

    .line 257
    invoke-virtual {p1}, Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;->getOutcomeSelectionLogicJs()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {p1}, Landroid/adservices/adselection/AddAdSelectionFromOutcomesOverrideRequest;->getOutcomeSelectionTrustedSignals()Landroid/adservices/common/AdSelectionSignals;

    move-result-object v3

    new-instance v4, Landroid/adservices/adselection/TestAdSelectionManager$4;

    invoke-direct {v4, p0, p2, p3}, Landroid/adservices/adselection/TestAdSelectionManager$4;-><init>(Landroid/adservices/adselection/TestAdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 255
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/adservices/adselection/AdSelectionService;->overrideAdSelectionFromOutcomesConfigRemoteInfo(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_28} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_28} :catch_29

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_4c

    .line 278
    :catch_29
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 280
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_4d

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3c
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 276
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 281
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_4c
    nop

    .line 282
    :goto_4d
    return-void
.end method

.method public blacklist removeAdCounterHistogramOverride(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "removeRequest"    # Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 480
    .local p3, "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    const-string v0, "Request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 481
    const-string v0, "Executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 482
    const-string v0, "Outcome receiver must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 485
    :try_start_f
    iget-object v0, p0, Landroid/adservices/adselection/TestAdSelectionManager;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    .line 486
    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/adselection/AdSelectionService;

    .line 487
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    new-instance v1, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;

    invoke-direct {v1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;-><init>()V

    .line 489
    invoke-virtual {p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->getAdEventType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;->setAdEventType(I)Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;

    move-result-object v1

    .line 490
    invoke-virtual {p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->getAdCounterKey()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;->setAdCounterKey(I)Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;

    move-result-object v1

    .line 491
    invoke-virtual {p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->getBuyer()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;->setBuyer(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;

    move-result-object v1

    .line 492
    invoke-virtual {v1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput$Builder;->build()Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/adselection/TestAdSelectionManager$8;

    invoke-direct {v2, p0, p2, p3}, Landroid/adservices/adselection/TestAdSelectionManager$8;-><init>(Landroid/adservices/adselection/TestAdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 487
    invoke-interface {v0, v1, v2}, Landroid/adservices/adselection/AdSelectionService;->removeAdCounterHistogramOverride(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideInput;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    :try_end_48
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_48} :catch_5c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_48} :catch_49

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_6c

    .line 512
    :catch_49
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Remote exception encountered while updating ad counter histogram"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 514
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_6d

    .line 508
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5c
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 510
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 515
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_6c
    nop

    .line 516
    :goto_6d
    return-void
.end method

.method public whitelist removeAdSelectionConfigRemoteInfoOverride(Landroid/adservices/adselection/RemoveAdSelectionOverrideRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "request"    # Landroid/adservices/adselection/RemoveAdSelectionOverrideRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/RemoveAdSelectionOverrideRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :try_start_9
    iget-object v0, p0, Landroid/adservices/adselection/TestAdSelectionManager;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    .line 146
    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 147
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    nop

    .line 148
    invoke-virtual {p1}, Landroid/adservices/adselection/RemoveAdSelectionOverrideRequest;->getAdSelectionConfig()Landroid/adservices/adselection/AdSelectionConfig;

    move-result-object v1

    new-instance v2, Landroid/adservices/adselection/TestAdSelectionManager$2;

    invoke-direct {v2, p0, p2, p3}, Landroid/adservices/adselection/TestAdSelectionManager$2;-><init>(Landroid/adservices/adselection/TestAdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 147
    invoke-interface {v0, v1, v2}, Landroid/adservices/adselection/AdSelectionService;->removeAdSelectionConfigRemoteInfoOverride(Landroid/adservices/adselection/AdSelectionConfig;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_20} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_20} :catch_21

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_44

    .line 168
    :catch_21
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_45

    .line 164
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_34
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 171
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_44
    nop

    .line 172
    :goto_45
    return-void
.end method

.method public whitelist removeAdSelectionFromOutcomesConfigRemoteInfoOverride(Landroid/adservices/adselection/RemoveAdSelectionFromOutcomesOverrideRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "request"    # Landroid/adservices/adselection/RemoveAdSelectionFromOutcomesOverrideRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/RemoveAdSelectionFromOutcomesOverrideRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :try_start_9
    iget-object v0, p0, Landroid/adservices/adselection/TestAdSelectionManager;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    .line 312
    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 313
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    nop

    .line 314
    invoke-virtual {p1}, Landroid/adservices/adselection/RemoveAdSelectionFromOutcomesOverrideRequest;->getAdSelectionFromOutcomesConfig()Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;

    move-result-object v1

    new-instance v2, Landroid/adservices/adselection/TestAdSelectionManager$5;

    invoke-direct {v2, p0, p2, p3}, Landroid/adservices/adselection/TestAdSelectionManager$5;-><init>(Landroid/adservices/adselection/TestAdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 313
    invoke-interface {v0, v1, v2}, Landroid/adservices/adselection/AdSelectionService;->removeAdSelectionFromOutcomesConfigRemoteInfoOverride(Landroid/adservices/adselection/AdSelectionFromOutcomesConfig;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_20} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_20} :catch_21

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_44

    .line 334
    :catch_21
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 336
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_45

    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_34
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 332
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 337
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_44
    nop

    .line 338
    :goto_45
    return-void
.end method

.method public blacklist resetAllAdCounterHistogramOverrides(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 541
    .local p2, "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    const-string v0, "Executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 542
    const-string v0, "Outcome receiver must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 545
    :try_start_a
    iget-object v0, p0, Landroid/adservices/adselection/TestAdSelectionManager;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    .line 546
    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/adselection/AdSelectionService;

    .line 547
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    new-instance v1, Landroid/adservices/adselection/TestAdSelectionManager$9;

    invoke-direct {v1, p0, p1, p2}, Landroid/adservices/adselection/TestAdSelectionManager$9;-><init>(Landroid/adservices/adselection/TestAdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/adservices/adselection/AdSelectionService;->resetAllAdCounterHistogramOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_22} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_22} :catch_23

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_46

    .line 567
    :catch_23
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Remote exception encountered while updating ad counter histogram"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 569
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_47

    .line 563
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_36
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 565
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 570
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_46
    nop

    .line 571
    :goto_47
    return-void
.end method

.method public whitelist resetAllAdSelectionConfigRemoteOverrides(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 193
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :try_start_6
    iget-object v0, p0, Landroid/adservices/adselection/TestAdSelectionManager;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    .line 198
    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 199
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    new-instance v1, Landroid/adservices/adselection/TestAdSelectionManager$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/adservices/adselection/TestAdSelectionManager$3;-><init>(Landroid/adservices/adselection/TestAdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/adservices/adselection/AdSelectionService;->resetAllAdSelectionConfigRemoteOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_18} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_19

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_3c

    .line 219
    :catch_19
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 221
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2c
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 217
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 222
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_3c
    nop

    .line 223
    :goto_3d
    return-void
.end method

.method public whitelist resetAllAdSelectionFromOutcomesConfigRemoteOverrides(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 359
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :try_start_6
    iget-object v0, p0, Landroid/adservices/adselection/TestAdSelectionManager;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    .line 364
    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    .line 365
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    new-instance v1, Landroid/adservices/adselection/TestAdSelectionManager$6;

    invoke-direct {v1, p0, p1, p2}, Landroid/adservices/adselection/TestAdSelectionManager$6;-><init>(Landroid/adservices/adselection/TestAdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/adservices/adselection/AdSelectionService;->resetAllAdSelectionFromOutcomesConfigRemoteOverrides(Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_18} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_19

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_3c

    .line 385
    :catch_19
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 387
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2c
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 383
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 388
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_3c
    nop

    .line 389
    :goto_3d
    return-void
.end method

.method public blacklist setAdCounterHistogramOverride(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .param p1, "setRequest"    # Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 415
    .local p3, "outcomeReceiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    const-string v0, "Request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 416
    const-string v0, "Executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 417
    const-string v0, "Outcome receiver must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 420
    :try_start_f
    iget-object v0, p0, Landroid/adservices/adselection/TestAdSelectionManager;->mAdSelectionManager:Landroid/adservices/adselection/AdSelectionManager;

    .line 421
    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionManager;->getServiceProvider()Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;->getService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/adselection/AdSelectionService;

    .line 422
    .local v0, "service":Landroid/adservices/adselection/AdSelectionService;
    new-instance v1, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;

    invoke-direct {v1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;-><init>()V

    .line 424
    invoke-virtual {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->getAdEventType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->setAdEventType(I)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;

    move-result-object v1

    .line 425
    invoke-virtual {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->getAdCounterKey()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->setAdCounterKey(I)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;

    move-result-object v1

    .line 426
    invoke-virtual {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->getHistogramTimestamps()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->setHistogramTimestamps(Ljava/util/List;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;

    move-result-object v1

    .line 427
    invoke-virtual {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->getBuyer()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->setBuyer(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;

    move-result-object v1

    .line 428
    invoke-virtual {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->getCustomAudienceOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->setCustomAudienceOwner(Ljava/lang/String;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;

    move-result-object v1

    .line 429
    invoke-virtual {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->getCustomAudienceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->setCustomAudienceName(Ljava/lang/String;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->build()Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/adselection/TestAdSelectionManager$7;

    invoke-direct {v2, p0, p2, p3}, Landroid/adservices/adselection/TestAdSelectionManager$7;-><init>(Landroid/adservices/adselection/TestAdSelectionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 422
    invoke-interface {v0, v1, v2}, Landroid/adservices/adselection/AdSelectionService;->setAdCounterHistogramOverride(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;Landroid/adservices/adselection/AdSelectionOverrideCallback;)V
    :try_end_60
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_60} :catch_74
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_60} :catch_61

    .end local v0    # "service":Landroid/adservices/adselection/AdSelectionService;
    goto :goto_84

    .line 450
    :catch_61
    move-exception v0

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Remote exception encountered while updating ad counter histogram"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 452
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure of AdSelection service"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    goto :goto_85

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_74
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Landroid/adservices/adselection/TestAdSelectionManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Unable to find the AdSelection service"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 448
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 453
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_84
    nop

    .line 454
    :goto_85
    return-void
.end method
