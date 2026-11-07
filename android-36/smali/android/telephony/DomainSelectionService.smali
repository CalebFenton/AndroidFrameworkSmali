.class public abstract Landroid/telephony/DomainSelectionService;
.super Landroid/app/Service;
.source "DomainSelectionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;,
        Landroid/telephony/DomainSelectionService$DomainSelectorWrapper;,
        Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper;,
        Landroid/telephony/DomainSelectionService$SelectionAttributes;,
        Landroid/telephony/DomainSelectionService$EmergencyScanType;,
        Landroid/telephony/DomainSelectionService$SelectorType;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "DomainSelectionService"

.field public static final whitelist SCAN_TYPE_FULL_SERVICE:I = 0x2

.field public static final whitelist SCAN_TYPE_LIMITED_SERVICE:I = 0x1

.field public static final whitelist SCAN_TYPE_NO_PREFERENCE:I = 0x0

.field public static final whitelist SELECTOR_TYPE_CALLING:I = 0x1

.field public static final whitelist SELECTOR_TYPE_SMS:I = 0x2

.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.DomainSelectionService"


# instance fields
.field private final blacklist mDomainSelectionServiceController:Landroid/os/IBinder;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mExecutorLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mexecuteMethodAsyncNoException(Landroid/telephony/DomainSelectionService;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/DomainSelectionService;->executeMethodAsyncNoException(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smexecuteMethodAsync(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/telephony/DomainSelectionService;->executeMethodAsync(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 748
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/DomainSelectionService;->mExecutorLock:Ljava/lang/Object;

    .line 791
    new-instance v0, Landroid/telephony/DomainSelectionService$1;

    invoke-direct {v0, p0}, Landroid/telephony/DomainSelectionService$1;-><init>(Landroid/telephony/DomainSelectionService;)V

    iput-object v0, p0, Landroid/telephony/DomainSelectionService;->mDomainSelectionServiceController:Landroid/os/IBinder;

    return-void
.end method

.method private static blacklist executeMethodAsync(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "errorLogName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    :try_start_0
    new-instance v0, Landroid/telephony/DomainSelectionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/DomainSelectionService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 824
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_c} :catch_e
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_c} :catch_e

    .line 828
    nop

    .line 829
    return-void

    .line 825
    :catch_e
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist executeMethodAsyncNoException(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "errorLogName"    # Ljava/lang/String;

    .line 834
    :try_start_0
    new-instance v0, Landroid/telephony/DomainSelectionService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Landroid/telephony/DomainSelectionService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_8} :catch_9

    .line 838
    goto :goto_2e

    .line 836
    :catch_9
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2e
    return-void
.end method

.method public static blacklist getDomainName(I)Ljava/lang/String;
    .registers 2
    .param p0, "domain"    # I

    .line 888
    invoke-static {p0}, Landroid/telephony/NetworkRegistrationInfo;->domainToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$executeMethodAsync$0(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 824
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncNoException$1(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 835
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final blacklist getCachedExecutor()Ljava/util/concurrent/Executor;
    .registers 4

    .line 872
    iget-object v0, p0, Landroid/telephony/DomainSelectionService;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_3
    iget-object v1, p0, Landroid/telephony/DomainSelectionService;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_16

    .line 874
    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService;->getCreateExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 875
    .local v1, "e":Ljava/util/concurrent/Executor;
    if-eqz v1, :cond_f

    move-object v2, v1

    goto :goto_14

    :cond_f
    new-instance v2, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    :goto_14
    iput-object v2, p0, Landroid/telephony/DomainSelectionService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 877
    .end local v1    # "e":Ljava/util/concurrent/Executor;
    :cond_16
    iget-object v1, p0, Landroid/telephony/DomainSelectionService;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-object v1

    .line 878
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist getCreateExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 861
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public whitelist onBarringInfoUpdated(IILandroid/telephony/BarringInfo;)V
    .registers 4
    .param p1, "slotIndex"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "info"    # Landroid/telephony/BarringInfo;

    .line 789
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 844
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 845
    :cond_4
    const-string v1, "android.telephony.DomainSelectionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 846
    const-string v0, "DomainSelectionService"

    const-string v1, "DomainSelectionService Bound."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Landroid/telephony/DomainSelectionService;->mDomainSelectionServiceController:Landroid/os/IBinder;

    return-object v0

    .line 849
    :cond_1a
    return-object v0
.end method

.method public abstract whitelist onDomainSelection(Landroid/telephony/DomainSelectionService$SelectionAttributes;Landroid/telephony/TransportSelectorCallback;)V
.end method

.method public whitelist onServiceStateUpdated(IILandroid/telephony/ServiceState;)V
    .registers 4
    .param p1, "slotIndex"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "serviceState"    # Landroid/telephony/ServiceState;

    .line 779
    return-void
.end method
