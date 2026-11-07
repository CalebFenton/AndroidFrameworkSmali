.class Lcom/android/internal/os/BinderLatencyObserver$1;
.super Ljava/lang/Object;
.source "BinderLatencyObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderLatencyObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BinderLatencyObserver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BinderLatencyObserver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/os/BinderLatencyObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 10

    .line 83
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-static {v0}, Lcom/android/internal/os/BinderLatencyObserver;->-$$Nest$mnoteLatencyDelayed(Lcom/android/internal/os/BinderLatencyObserver;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-static {v0}, Lcom/android/internal/os/BinderLatencyObserver;->-$$Nest$fgetmLock(Lcom/android/internal/os/BinderLatencyObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 88
    :try_start_c
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-static {v2}, Lcom/android/internal/os/BinderLatencyObserver;->-$$Nest$fgetmLatencyHistograms(Lcom/android/internal/os/BinderLatencyObserver;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 89
    .local v1, "histogramMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;[I>;"
    iget-object v2, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-static {v2}, Lcom/android/internal/os/BinderLatencyObserver;->-$$Nest$fgetmLatencyHistograms(Lcom/android/internal/os/BinderLatencyObserver;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 90
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_80

    .line 92
    new-instance v0, Lcom/android/internal/os/BinderTransactionNameResolver;

    invoke-direct {v0}, Lcom/android/internal/os/BinderTransactionNameResolver;-><init>()V

    .line 93
    .local v0, "resolver":Lcom/android/internal/os/BinderTransactionNameResolver;
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 94
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const/4 v3, 0x0

    .line 96
    .local v3, "histogramsWritten":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    .line 98
    .local v5, "dims":Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v6

    add-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v7}, Lcom/android/internal/os/BinderLatencyObserver;->getMaxAtomSizeBytes()I

    move-result v7

    if-le v6, v7, :cond_5c

    .line 99
    if-lez v3, :cond_55

    .line 100
    iget-object v6, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v6, v2}, Lcom/android/internal/os/BinderLatencyObserver;->writeAtomToStatsd(Landroid/util/proto/ProtoOutputStream;)V

    .line 102
    :cond_55
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 103
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    .local v6, "proto":Landroid/util/proto/ProtoOutputStream;
    const/4 v3, 0x0

    move-object v2, v6

    .line 106
    .end local v6    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    :cond_5c
    nop

    .line 107
    invoke-virtual {v5}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getBinderClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getTransactionCode()I

    move-result v7

    .line 106
    invoke-virtual {v0, v6, v7}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "transactionName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    invoke-static {v7, v2, v5, v6, v8}, Lcom/android/internal/os/BinderLatencyObserver;->-$$Nest$mfillApiStatsProto(Lcom/android/internal/os/BinderLatencyObserver;Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;Ljava/lang/String;[I)V

    .line 109
    nop

    .end local v5    # "dims":Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
    .end local v6    # "transactionName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 110
    goto :goto_34

    .line 112
    :cond_78
    if-lez v3, :cond_7f

    .line 113
    iget-object v4, p0, Lcom/android/internal/os/BinderLatencyObserver$1;->this$0:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v4, v2}, Lcom/android/internal/os/BinderLatencyObserver;->writeAtomToStatsd(Landroid/util/proto/ProtoOutputStream;)V

    .line 115
    :cond_7f
    return-void

    .line 90
    .end local v0    # "resolver":Lcom/android/internal/os/BinderTransactionNameResolver;
    .end local v1    # "histogramMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;[I>;"
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v3    # "histogramsWritten":I
    :catchall_80
    move-exception v1

    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v1
.end method
