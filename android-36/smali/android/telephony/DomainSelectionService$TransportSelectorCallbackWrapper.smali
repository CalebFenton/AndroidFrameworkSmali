.class final Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;
.super Ljava/lang/Object;
.source "DomainSelectionService.java"

# interfaces
.implements Landroid/telephony/TransportSelectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransportSelectorCallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TransportSelectorCallbackWrapper"


# instance fields
.field private final blacklist mCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mResultCallback:Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;

.field private blacklist mSelectorWrapper:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;

.field final synthetic blacklist this$0:Landroid/telephony/DomainSelectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/DomainSelectionService;Lcom/android/internal/telephony/ITransportSelectorCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p2, "cb"    # Lcom/android/internal/telephony/ITransportSelectorCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 557
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p2, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

    .line 559
    iput-object p3, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 560
    return-void
.end method

.method static synthetic blacklist lambda$onWwanSelected$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "consumer"    # Ljava/util/function/Consumer;

    .line 589
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist onCreated(Landroid/telephony/DomainSelector;)V
    .registers 5
    .param p1, "selector"    # Landroid/telephony/DomainSelector;

    .line 565
    :try_start_0
    new-instance v0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1, v2}, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;-><init>(Landroid/telephony/DomainSelectionService;Landroid/telephony/DomainSelector;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mSelectorWrapper:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;

    .line 566
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mSelectorWrapper:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;

    invoke-virtual {v1}, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;->getCallbackBinder()Lcom/android/internal/telephony/IDomainSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITransportSelectorCallback;->onCreated(Lcom/android/internal/telephony/IDomainSelector;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 569
    goto :goto_31

    .line 567
    :catch_17
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreated e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportSelectorCallbackWrapper"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method public whitelist onSelectionTerminated(I)V
    .registers 5
    .param p1, "cause"    # I

    .line 596
    :try_start_0
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITransportSelectorCallback;->onSelectionTerminated(I)V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mSelectorWrapper:Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 600
    goto :goto_23

    .line 598
    :catch_9
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSelectionTerminated e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportSelectorCallbackWrapper"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public whitelist onWlanSelected(Z)V
    .registers 5
    .param p1, "useEmergencyPdn"    # Z

    .line 575
    :try_start_0
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITransportSelectorCallback;->onWlanSelected(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 578
    goto :goto_20

    .line 576
    :catch_6
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWlanSelected e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportSelectorCallbackWrapper"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public whitelist onWwanSelected(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/telephony/WwanSelectorCallback;",
            ">;)V"
        }
    .end annotation

    .line 584
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/telephony/WwanSelectorCallback;>;"
    :try_start_0
    new-instance v0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1, v1}, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;-><init>(Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mResultCallback:Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;

    .line 585
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mCallback:Lcom/android/internal/telephony/ITransportSelectorCallback;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mResultCallback:Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITransportSelectorCallback;->onWwanSelectedAsync(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 590
    goto :goto_3a

    .line 586
    :catch_11
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWwanSelected e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportSelectorCallbackWrapper"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v1, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    iget-object v3, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    const-string/jumbo v5, "onWwanSelectedAsync-Exception"

    invoke-static {v1, v3, v4, v2, v5}, Landroid/telephony/DomainSelectionService;->-$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method
