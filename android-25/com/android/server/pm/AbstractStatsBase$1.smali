.class Lcom/android/server/pm/AbstractStatsBase$1;
.super Ljava/lang/Thread;
.source "AbstractStatsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AbstractStatsBase;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AbstractStatsBase;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    .local p1, "this$0":Lcom/android/server/pm/AbstractStatsBase;, "Lcom/android/server/pm/AbstractStatsBase<TT;>;"
    .local p3, "val$data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    #@2
    iput-object p3, p0, Lcom/android/server/pm/AbstractStatsBase$1;->val$data:Ljava/lang/Object;

    #@4
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    #@3
    iget-object v1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->val$data:Ljava/lang/Object;

    #@5
    invoke-static {v0, v1}, Lcom/android/server/pm/AbstractStatsBase;->-wrap0(Lcom/android/server/pm/AbstractStatsBase;Ljava/lang/Object;)V

    #@8
    .line 80
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    #@a
    invoke-static {v0}, Lcom/android/server/pm/AbstractStatsBase;->-get1(Lcom/android/server/pm/AbstractStatsBase;)Ljava/util/concurrent/atomic/AtomicLong;

    #@d
    move-result-object v0

    #@e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@11
    move-result-wide v2

    #@12
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 82
    iget-object v0, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    #@17
    invoke-static {v0}, Lcom/android/server/pm/AbstractStatsBase;->-get0(Lcom/android/server/pm/AbstractStatsBase;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1e
    .line 77
    return-void

    #@1f
    .line 81
    :catchall_0
    move-exception v0

    #@20
    .line 82
    iget-object v1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    #@22
    invoke-static {v1}, Lcom/android/server/pm/AbstractStatsBase;->-get0(Lcom/android/server/pm/AbstractStatsBase;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@29
    .line 81
    throw v0
.end method
