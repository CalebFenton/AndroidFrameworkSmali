.class Landroid/tracing/transition/TransitionDataSource$1;
.super Landroid/tracing/perfetto/DataSourceInstance;
.source "TransitionDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/tracing/transition/TransitionDataSource;->createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/tracing/transition/TransitionDataSource;


# direct methods
.method constructor blacklist <init>(Landroid/tracing/transition/TransitionDataSource;Landroid/tracing/perfetto/DataSource;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/tracing/transition/TransitionDataSource;
    .param p2, "dataSource"    # Landroid/tracing/perfetto/DataSource;
    .param p3, "instanceIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Landroid/tracing/transition/TransitionDataSource$1;->this$0:Landroid/tracing/transition/TransitionDataSource;

    invoke-direct {p0, p2, p3}, Landroid/tracing/perfetto/DataSourceInstance;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    return-void
.end method


# virtual methods
.method protected blacklist onFlush(Landroid/tracing/perfetto/FlushCallbackArguments;)V
    .registers 3
    .param p1, "args"    # Landroid/tracing/perfetto/FlushCallbackArguments;

    .line 54
    iget-object v0, p0, Landroid/tracing/transition/TransitionDataSource$1;->this$0:Landroid/tracing/transition/TransitionDataSource;

    invoke-static {v0}, Landroid/tracing/transition/TransitionDataSource;->-$$Nest$fgetmOnFlushStaticCallback(Landroid/tracing/transition/TransitionDataSource;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 55
    return-void
.end method

.method protected blacklist onStart(Landroid/tracing/perfetto/StartCallbackArguments;)V
    .registers 3
    .param p1, "args"    # Landroid/tracing/perfetto/StartCallbackArguments;

    .line 49
    iget-object v0, p0, Landroid/tracing/transition/TransitionDataSource$1;->this$0:Landroid/tracing/transition/TransitionDataSource;

    invoke-static {v0}, Landroid/tracing/transition/TransitionDataSource;->-$$Nest$fgetmOnStartStaticCallback(Landroid/tracing/transition/TransitionDataSource;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 50
    return-void
.end method

.method protected blacklist onStop(Landroid/tracing/perfetto/StopCallbackArguments;)V
    .registers 3
    .param p1, "args"    # Landroid/tracing/perfetto/StopCallbackArguments;

    .line 59
    iget-object v0, p0, Landroid/tracing/transition/TransitionDataSource$1;->this$0:Landroid/tracing/transition/TransitionDataSource;

    invoke-static {v0}, Landroid/tracing/transition/TransitionDataSource;->-$$Nest$fgetmOnStopStaticCallback(Landroid/tracing/transition/TransitionDataSource;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 60
    return-void
.end method
