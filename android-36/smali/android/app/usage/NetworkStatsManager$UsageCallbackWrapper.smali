.class Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;
.super Landroid/net/connectivity/android/net/netstats/IUsageCallback$Stub;
.source "NetworkStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsageCallbackWrapper"
.end annotation


# instance fields
.field private volatile blacklist mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 1117
    invoke-direct {p0}, Landroid/net/connectivity/android/net/netstats/IUsageCallback$Stub;-><init>()V

    .line 1118
    iput-object p2, p0, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 1119
    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1120
    return-void
.end method

.method static synthetic blacklist lambda$onThresholdReached$0(Landroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/net/DataUsageRequest;)V
    .registers 3
    .param p0, "callback"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;
    .param p1, "request"    # Landroid/net/DataUsageRequest;

    .line 1127
    iget-object v0, p1, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p0, v0}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->onThresholdReached(Landroid/net/NetworkTemplate;)V

    return-void
.end method


# virtual methods
.method public blacklist onCallbackReleased(Landroid/net/DataUsageRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/net/DataUsageRequest;

    .line 1136
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 1137
    return-void
.end method

.method public blacklist onThresholdReached(Landroid/net/DataUsageRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/net/DataUsageRequest;

    .line 1125
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 1126
    .local v0, "callback":Landroid/app/usage/NetworkStatsManager$UsageCallback;
    if-eqz v0, :cond_f

    .line 1127
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/net/DataUsageRequest;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_27

    .line 1129
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThresholdReached with released callback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkStatsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :goto_27
    return-void
.end method
