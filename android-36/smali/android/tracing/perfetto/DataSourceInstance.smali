.class public abstract Landroid/tracing/perfetto/DataSourceInstance;
.super Ljava/lang/Object;
.source "DataSourceInstance.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist mDataSource:Landroid/tracing/perfetto/DataSource;

.field private final blacklist mInstanceIndex:I


# direct methods
.method public constructor blacklist <init>(Landroid/tracing/perfetto/DataSource;I)V
    .registers 3
    .param p1, "dataSource"    # Landroid/tracing/perfetto/DataSource;
    .param p2, "instanceIndex"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/tracing/perfetto/DataSourceInstance;->mDataSource:Landroid/tracing/perfetto/DataSource;

    .line 30
    iput p2, p0, Landroid/tracing/perfetto/DataSourceInstance;->mInstanceIndex:I

    .line 31
    return-void
.end method


# virtual methods
.method public final whitelist test-api close()V
    .registers 1

    .line 63
    invoke-virtual {p0}, Landroid/tracing/perfetto/DataSourceInstance;->release()V

    .line 64
    return-void
.end method

.method public final blacklist getInstanceIndex()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/tracing/perfetto/DataSourceInstance;->mInstanceIndex:I

    return v0
.end method

.method protected blacklist onFlush(Landroid/tracing/perfetto/FlushCallbackArguments;)V
    .registers 2
    .param p1, "args"    # Landroid/tracing/perfetto/FlushCallbackArguments;

    .line 50
    return-void
.end method

.method protected blacklist onStart(Landroid/tracing/perfetto/StartCallbackArguments;)V
    .registers 2
    .param p1, "args"    # Landroid/tracing/perfetto/StartCallbackArguments;

    .line 41
    return-void
.end method

.method protected blacklist onStop(Landroid/tracing/perfetto/StopCallbackArguments;)V
    .registers 2
    .param p1, "args"    # Landroid/tracing/perfetto/StopCallbackArguments;

    .line 59
    return-void
.end method

.method public blacklist release()V
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/tracing/perfetto/DataSourceInstance;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget v1, p0, Landroid/tracing/perfetto/DataSourceInstance;->mInstanceIndex:I

    invoke-virtual {v0, v1}, Landroid/tracing/perfetto/DataSource;->releaseDataSourceInstance(I)V

    .line 74
    return-void
.end method
