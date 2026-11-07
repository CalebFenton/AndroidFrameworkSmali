.class final Landroid/app/Instrumentation$ActivityGoing;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityGoing"
.end annotation


# instance fields
.field private final greylist-max-o mWaiter:Landroid/app/Instrumentation$ActivityWaiter;

.field final synthetic blacklist this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor blacklist <init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V
    .registers 3
    .param p2, "waiter"    # Landroid/app/Instrumentation$ActivityWaiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2647
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2648
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityGoing;->mWaiter:Landroid/app/Instrumentation$ActivityWaiter;

    .line 2649
    return-void
.end method


# virtual methods
.method public final whitelist queueIdle()Z
    .registers 4

    .line 2652
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    invoke-static {v0}, Landroid/app/Instrumentation;->-$$Nest$fgetmSync(Landroid/app/Instrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2653
    :try_start_7
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    invoke-static {v1}, Landroid/app/Instrumentation;->-$$Nest$fgetmWaitingActivities(Landroid/app/Instrumentation;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Instrumentation$ActivityGoing;->mWaiter:Landroid/app/Instrumentation$ActivityWaiter;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2654
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    invoke-static {v1}, Landroid/app/Instrumentation;->-$$Nest$fgetmSync(Landroid/app/Instrumentation;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2655
    monitor-exit v0

    .line 2656
    const/4 v0, 0x0

    return v0

    .line 2655
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method
