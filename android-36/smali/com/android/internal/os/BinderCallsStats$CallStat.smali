.class public Lcom/android/internal/os/BinderCallsStats$CallStat;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStat"
.end annotation


# instance fields
.field public final blacklist binderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist callCount:J

.field public final blacklist callingUid:I

.field public blacklist cpuTimeMicros:J

.field public blacklist exceptionCount:J

.field public blacklist incrementalCallCount:J

.field public blacklist latencyMicros:J

.field public blacklist maxCpuTimeMicros:J

.field public blacklist maxLatencyMicros:J

.field public blacklist maxReplySizeBytes:J

.field public blacklist maxRequestSizeBytes:J

.field public blacklist recordedCallCount:J

.field public final blacklist screenInteractive:Z

.field public final blacklist transactionCode:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/Class;IZ)V
    .registers 5
    .param p1, "callingUid"    # I
    .param p3, "transactionCode"    # I
    .param p4, "screenInteractive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;IZ)V"
        }
    .end annotation

    .line 942
    .local p2, "binderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/Binder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    .line 944
    iput-object p2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    .line 945
    iput p3, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    .line 946
    iput-boolean p4, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    .line 947
    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/android/internal/os/BinderCallsStats$CallStat;
    .registers 6

    .line 951
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$CallStat;

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iget v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iget-boolean v4, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BinderCallsStats$CallStat;-><init>(ILjava/lang/Class;IZ)V

    .line 953
    .local v0, "clone":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    .line 954
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 955
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    .line 956
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    .line 957
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    .line 958
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 959
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    .line 960
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    .line 961
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    .line 962
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 963
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 910
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats$CallStat;->clone()Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 969
    new-instance v0, Lcom/android/internal/os/BinderTransactionNameResolver;

    invoke-direct {v0}, Lcom/android/internal/os/BinderTransactionNameResolver;-><init>()V

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "methodName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallStat{callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    .line 973
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", incrementalCallCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recordedCallCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cpuTimeMicros="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", latencyMicros="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 971
    return-object v1
.end method
