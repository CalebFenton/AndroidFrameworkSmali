.class Landroid/app/StatsManager$StatsQueryCallbackInternal;
.super Landroid/os/IStatsQueryCallback$Stub;
.source "StatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsQueryCallbackInternal"
.end annotation


# instance fields
.field blacklist mExecutor:Ljava/util/concurrent/Executor;

.field blacklist queryCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/StatsCursor;",
            "Landroid/app/StatsManager$StatsQueryException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$M7-FBjwif4DZgb2tDOgmHJvOLjY(Landroid/app/StatsManager$StatsQueryCallbackInternal;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/StatsManager$StatsQueryCallbackInternal;->lambda$sendFailure$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WrLGT3WpV9ZoCuLlxa-bsRXZKjI(Landroid/app/StatsManager$StatsQueryCallbackInternal;[Ljava/lang/String;[Ljava/lang/String;[II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/StatsManager$StatsQueryCallbackInternal;->lambda$sendResults$0([Ljava/lang/String;[Ljava/lang/String;[II)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/OutcomeReceiver;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/StatsCursor;",
            "Landroid/app/StatsManager$StatsQueryException;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 863
    .local p1, "queryCallback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/StatsCursor;Landroid/app/StatsManager$StatsQueryException;>;"
    invoke-direct {p0}, Landroid/os/IStatsQueryCallback$Stub;-><init>()V

    .line 864
    iput-object p1, p0, Landroid/app/StatsManager$StatsQueryCallbackInternal;->queryCallback:Landroid/os/OutcomeReceiver;

    .line 865
    iput-object p2, p0, Landroid/app/StatsManager$StatsQueryCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    .line 866
    return-void
.end method

.method private synthetic blacklist lambda$sendFailure$1(Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/String;

    .line 896
    iget-object v0, p0, Landroid/app/StatsManager$StatsQueryCallbackInternal;->queryCallback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/app/StatsManager$StatsQueryException;

    invoke-direct {v1, p1}, Landroid/app/StatsManager$StatsQueryException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 897
    return-void
.end method

.method private synthetic blacklist lambda$sendResults$0([Ljava/lang/String;[Ljava/lang/String;[II)V
    .registers 7
    .param p1, "queryData"    # [Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;
    .param p3, "columnTypes"    # [I
    .param p4, "rowCount"    # I

    .line 878
    new-instance v0, Landroid/app/StatsCursor;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/StatsCursor;-><init>([Ljava/lang/String;[Ljava/lang/String;[II)V

    .line 880
    .local v0, "cursor":Landroid/app/StatsCursor;
    iget-object v1, p0, Landroid/app/StatsManager$StatsQueryCallbackInternal;->queryCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 881
    return-void
.end method


# virtual methods
.method public blacklist sendFailure(Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/String;

    .line 889
    invoke-static {}, Lcom/android/internal/statsd/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 893
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 895
    .local v0, "token":J
    :try_start_a
    iget-object v2, p0, Landroid/app/StatsManager$StatsQueryCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/StatsManager$StatsQueryCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/app/StatsManager$StatsQueryCallbackInternal$$ExternalSyntheticLambda0;-><init>(Landroid/app/StatsManager$StatsQueryCallbackInternal;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_19

    .line 899
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    nop

    .line 901
    return-void

    .line 899
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    throw v2

    .line 890
    .end local v0    # "token":J
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StatsManager#query is not available before Android U"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendResults([Ljava/lang/String;[Ljava/lang/String;[II)V
    .registers 14
    .param p1, "queryData"    # [Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;
    .param p3, "columnTypes"    # [I
    .param p4, "rowCount"    # I

    .line 871
    invoke-static {}, Lcom/android/internal/statsd/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 877
    .local v1, "token":J
    :try_start_a
    iget-object v0, p0, Landroid/app/StatsManager$StatsQueryCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/StatsManager$StatsQueryCallbackInternal$$ExternalSyntheticLambda1;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_21

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    .end local p1    # "queryData":[Ljava/lang/String;
    .end local p2    # "columnNames":[Ljava/lang/String;
    .end local p3    # "columnTypes":[I
    .end local p4    # "rowCount":I
    .local v5, "queryData":[Ljava/lang/String;
    .local v6, "columnNames":[Ljava/lang/String;
    .local v7, "columnTypes":[I
    .local v8, "rowCount":I
    :try_start_13
    invoke-direct/range {v3 .. v8}, Landroid/app/StatsManager$StatsQueryCallbackInternal$$ExternalSyntheticLambda1;-><init>(Landroid/app/StatsManager$StatsQueryCallbackInternal;[Ljava/lang/String;[Ljava/lang/String;[II)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1e

    .line 883
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 884
    nop

    .line 885
    return-void

    .line 883
    :catchall_1e
    move-exception v0

    move-object p1, v0

    goto :goto_27

    .end local v5    # "queryData":[Ljava/lang/String;
    .end local v6    # "columnNames":[Ljava/lang/String;
    .end local v7    # "columnTypes":[I
    .end local v8    # "rowCount":I
    .restart local p1    # "queryData":[Ljava/lang/String;
    .restart local p2    # "columnNames":[Ljava/lang/String;
    .restart local p3    # "columnTypes":[I
    .restart local p4    # "rowCount":I
    :catchall_21
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object p1, v0

    .end local p1    # "queryData":[Ljava/lang/String;
    .end local p2    # "columnNames":[Ljava/lang/String;
    .end local p3    # "columnTypes":[I
    .end local p4    # "rowCount":I
    .restart local v5    # "queryData":[Ljava/lang/String;
    .restart local v6    # "columnNames":[Ljava/lang/String;
    .restart local v7    # "columnTypes":[I
    .restart local v8    # "rowCount":I
    :goto_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 884
    throw p1

    .line 872
    .end local v1    # "token":J
    .end local v5    # "queryData":[Ljava/lang/String;
    .end local v6    # "columnNames":[Ljava/lang/String;
    .end local v7    # "columnTypes":[I
    .end local v8    # "rowCount":I
    .restart local p1    # "queryData":[Ljava/lang/String;
    .restart local p2    # "columnNames":[Ljava/lang/String;
    .restart local p3    # "columnTypes":[I
    .restart local p4    # "rowCount":I
    :cond_2b
    move-object v5, p1

    move-object v6, p2

    .end local p1    # "queryData":[Ljava/lang/String;
    .end local p2    # "columnNames":[Ljava/lang/String;
    .restart local v5    # "queryData":[Ljava/lang/String;
    .restart local v6    # "columnNames":[Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "StatsManager#query is not available before Android U"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
