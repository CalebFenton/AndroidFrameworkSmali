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
.field private final mWaiter:Landroid/app/Instrumentation$ActivityWaiter;

.field final synthetic this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Instrumentation;
    .param p2, "waiter"    # Landroid/app/Instrumentation$ActivityWaiter;

    #@0
    .prologue
    .line 1928
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1929
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityGoing;->mWaiter:Landroid/app/Instrumentation$ActivityWaiter;

    #@7
    .line 1928
    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 3

    #@0
    .prologue
    .line 1933
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    #@2
    invoke-static {v0}, Landroid/app/Instrumentation;->-get1(Landroid/app/Instrumentation;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1934
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    #@9
    invoke-static {v0}, Landroid/app/Instrumentation;->-get2(Landroid/app/Instrumentation;)Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityGoing;->mWaiter:Landroid/app/Instrumentation$ActivityWaiter;

    #@f
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@12
    .line 1935
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    #@14
    invoke-static {v0}, Landroid/app/Instrumentation;->-get1(Landroid/app/Instrumentation;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 1937
    const/4 v0, 0x0

    #@1d
    return v0

    #@1e
    .line 1933
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method
