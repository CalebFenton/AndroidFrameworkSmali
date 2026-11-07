.class Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$1;
.super Ljava/lang/Object;
.source "ChainedTasks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$1;->this$0:Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 41
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$1;->this$0:Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->-$$Nest$fgetmIterationIdForTesting(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)I

    move-result v0

    sget v1, Landroid/net/connectivity/org/chromium/base/task/PostTask;->sTestIterationForTesting:I

    if-eq v0, v1, :cond_f

    .line 42
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$1;->this$0:Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->cancel()V

    .line 44
    :cond_f
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$1;->this$0:Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->-$$Nest$fgetmCanceled(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 46
    :cond_18
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$1;->this$0:Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->-$$Nest$fgetmTasks(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 47
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChainedTask.run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v1

    .line 50
    .local v1, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_47
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_77

    .line 51
    if-eqz v1, :cond_53

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 52
    .end local v1    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_53
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$1;->this$0:Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->-$$Nest$fgetmTasks(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks$1;->this$0:Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;->-$$Nest$fgetmTasks(Landroid/net/connectivity/org/chromium/base/task/ChainedTasks;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, p0}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    .line 53
    :cond_76
    return-void

    .line 47
    .restart local v1    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_77
    move-exception v2

    if-eqz v1, :cond_82

    :try_start_7a
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_82

    :catchall_7e
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_82
    :goto_82
    throw v2
.end method
