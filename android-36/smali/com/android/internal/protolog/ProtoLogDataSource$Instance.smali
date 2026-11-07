.class public Lcom/android/internal/protolog/ProtoLogDataSource$Instance;
.super Landroid/tracing/perfetto/DataSourceInstance;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;,
        Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;
    }
.end annotation


# instance fields
.field private final blacklist mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

.field private final blacklist mInstanceIndex:I

.field private final blacklist mOnFlush:Ljava/lang/Runnable;

.field private final blacklist mOnStart:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

.field private final blacklist mOnStop:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfig(Lcom/android/internal/protolog/ProtoLogDataSource$Instance;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/tracing/perfetto/DataSource;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;Ljava/lang/Runnable;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V
    .registers 7
    .param p2, "instanceIdx"    # I
    .param p3, "config"    # Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .param p4, "onStart"    # Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;
    .param p5, "onFlush"    # Ljava/lang/Runnable;
    .param p6, "onStop"    # Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/DataSource<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;I",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;",
            "Ljava/lang/Runnable;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;",
            ")V"
        }
    .end annotation

    .line 398
    .local p1, "dataSource":Landroid/tracing/perfetto/DataSource;, "Landroid/tracing/perfetto/DataSource<Lcom/android/internal/protolog/ProtoLogDataSource$Instance;Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;>;"
    invoke-direct {p0, p1, p2}, Landroid/tracing/perfetto/DataSourceInstance;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    .line 399
    iput p2, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mInstanceIndex:I

    .line 400
    iput-object p4, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStart:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    .line 401
    iput-object p5, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnFlush:Ljava/lang/Runnable;

    .line 402
    iput-object p6, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStop:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;

    .line 403
    iput-object p3, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    .line 404
    return-void
.end method


# virtual methods
.method public blacklist onFlush(Landroid/tracing/perfetto/FlushCallbackArguments;)V
    .registers 3
    .param p1, "args"    # Landroid/tracing/perfetto/FlushCallbackArguments;

    .line 413
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnFlush:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 414
    return-void
.end method

.method public blacklist onStart(Landroid/tracing/perfetto/StartCallbackArguments;)V
    .registers 5
    .param p1, "args"    # Landroid/tracing/perfetto/StartCallbackArguments;

    .line 408
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStart:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    iget v1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mInstanceIndex:I

    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;->run(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    .line 409
    return-void
.end method

.method public blacklist onStop(Landroid/tracing/perfetto/StopCallbackArguments;)V
    .registers 5
    .param p1, "args"    # Landroid/tracing/perfetto/StopCallbackArguments;

    .line 418
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStop:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;

    iget v1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mInstanceIndex:I

    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;->run(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    .line 419
    return-void
.end method
