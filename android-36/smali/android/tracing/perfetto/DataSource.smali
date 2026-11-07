.class public abstract Landroid/tracing/perfetto/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataSourceInstanceType:",
        "Landroid/tracing/perfetto/DataSourceInstance;",
        "TlsStateType:",
        "Ljava/lang/Object;",
        "IncrementalStateType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final blacklist mNativeObj:J

.field public final blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 55
    .local p0, "this":Landroid/tracing/perfetto/DataSource;, "Landroid/tracing/perfetto/DataSource<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/tracing/perfetto/DataSource;->name:Ljava/lang/String;

    .line 57
    invoke-static {p0, p1}, Landroid/tracing/perfetto/DataSource;->nativeCreate(Landroid/tracing/perfetto/DataSource;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    .line 58
    return-void
.end method

.method private blacklist createInstance([BI)Landroid/tracing/perfetto/DataSourceInstance;
    .registers 5
    .param p1, "rawConfig"    # [B
    .param p2, "instanceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)TDataSourceInstanceType;"
        }
    .end annotation

    .line 169
    .local p0, "this":Landroid/tracing/perfetto/DataSource;, "Landroid/tracing/perfetto/DataSource<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>([B)V

    .line 170
    .local v0, "inputStream":Landroid/util/proto/ProtoInputStream;
    invoke-virtual {p0, v0, p2}, Landroid/tracing/perfetto/DataSource;->createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object v1

    return-object v1
.end method

.method private static native blacklist nativeCreate(Landroid/tracing/perfetto/DataSource;Ljava/lang/String;)J
.end method

.method private static native blacklist nativeFlushAll(J)V
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method

.method private static native blacklist nativeGetPerfettoDsInstanceIndex(J)I
.end method

.method private static native blacklist nativeGetPerfettoInstanceLocked(JI)Landroid/tracing/perfetto/DataSourceInstance;
.end method

.method private static native blacklist nativePerfettoDsTraceIterateBegin(J)Z
.end method

.method private static native blacklist nativePerfettoDsTraceIterateBreak(J)V
.end method

.method private static native blacklist nativePerfettoDsTraceIterateNext(J)Z
.end method

.method private static native blacklist nativeRegisterDataSource(JIZZ)V
.end method

.method private static native blacklist nativeReleasePerfettoInstanceLocked(JI)V
.end method

.method private static native blacklist nativeWritePackets(J[[B)V
.end method


# virtual methods
.method public blacklist createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateIncrementalStateArgs<",
            "TDataSourceInstanceType;>;)TIncrementalStateType;"
        }
    .end annotation

    .line 121
    .local p0, "this":Landroid/tracing/perfetto/DataSource;, "Landroid/tracing/perfetto/DataSource<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    .local p1, "args":Landroid/tracing/perfetto/CreateIncrementalStateArgs;, "Landroid/tracing/perfetto/CreateIncrementalStateArgs<TDataSourceInstanceType;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "I)TDataSourceInstanceType;"
        }
    .end annotation
.end method

.method public blacklist createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateTlsStateArgs<",
            "TDataSourceInstanceType;>;)TTlsStateType;"
        }
    .end annotation

    .line 111
    .local p0, "this":Landroid/tracing/perfetto/DataSource;, "Landroid/tracing/perfetto/DataSource<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    .local p1, "args":Landroid/tracing/perfetto/CreateTlsStateArgs;, "Landroid/tracing/perfetto/CreateTlsStateArgs<TDataSourceInstanceType;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final blacklist flush()V
    .registers 3

    .line 102
    .local p0, "this":Landroid/tracing/perfetto/DataSource;, "Landroid/tracing/perfetto/DataSource<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativeFlushAll(J)V

    .line 103
    return-void
.end method

.method public blacklist getDataSourceInstanceLocked(I)Landroid/tracing/perfetto/DataSourceInstance;
    .registers 4
    .param p1, "instanceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TDataSourceInstanceType;"
        }
    .end annotation

    .line 150
    .local p0, "this":Landroid/tracing/perfetto/DataSource;, "Landroid/tracing/perfetto/DataSource<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1, p1}, Landroid/tracing/perfetto/DataSource;->nativeGetPerfettoInstanceLocked(JI)Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object v0

    return-object v0
.end method

.method public blacklist register(Landroid/tracing/perfetto/DataSourceParams;)V
    .registers 7
    .param p1, "params"    # Landroid/tracing/perfetto/DataSourceParams;

    .line 137
    .local p0, "this":Landroid/tracing/perfetto/DataSource;, "Landroid/tracing/perfetto/DataSource<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    iget v2, p1, Landroid/tracing/perfetto/DataSourceParams;->bufferExhaustedPolicy:I

    iget-boolean v3, p1, Landroid/tracing/perfetto/DataSourceParams;->willNotifyOnStop:Z

    iget-boolean v4, p1, Landroid/tracing/perfetto/DataSourceParams;->noFlush:Z

    invoke-static {v0, v1, v2, v3, v4}, Landroid/tracing/perfetto/DataSource;->nativeRegisterDataSource(JIZZ)V

    .line 139
    return-void
.end method

.method protected blacklist releaseDataSourceInstance(I)V
    .registers 4
    .param p1, "instanceIndex"    # I

    .line 158
    .local p0, "this":Landroid/tracing/perfetto/DataSource;, "Landroid/tracing/perfetto/DataSource<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1, p1}, Landroid/tracing/perfetto/DataSource;->nativeReleasePerfettoInstanceLocked(JI)V

    .line 159
    return-void
.end method

.method public final blacklist trace(Landroid/tracing/perfetto/TraceFunction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TraceFunction<",
            "TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Landroid/tracing/perfetto/DataSource;, "Landroid/tracing/perfetto/DataSource<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    .local p1, "fun":Landroid/tracing/perfetto/TraceFunction;, "Landroid/tracing/perfetto/TraceFunction<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    iget-wide v0, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateBegin(J)Z

    move-result v0

    .line 79
    .local v0, "startedIterator":Z
    if-nez v0, :cond_9

    .line 80
    return-void

    .line 85
    :cond_9
    :try_start_9
    iget-wide v1, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v1, v2}, Landroid/tracing/perfetto/DataSource;->nativeGetPerfettoDsInstanceIndex(J)I

    move-result v1

    .line 87
    .local v1, "instanceIndex":I
    new-instance v2, Landroid/tracing/perfetto/TracingContext;

    invoke-direct {v2, p0, v1}, Landroid/tracing/perfetto/TracingContext;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    .line 89
    .local v2, "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    invoke-interface {p1, v2}, Landroid/tracing/perfetto/TraceFunction;->trace(Landroid/tracing/perfetto/TracingContext;)V

    .line 91
    iget-wide v3, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-virtual {v2}, Landroid/tracing/perfetto/TracingContext;->getAndClearAllPendingTracePackets()[[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/tracing/perfetto/DataSource;->nativeWritePackets(J[[B)V

    .line 92
    .end local v1    # "instanceIndex":I
    .end local v2    # "ctx":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    iget-wide v1, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v1, v2}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateNext(J)Z

    move-result v1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_2f

    if-nez v1, :cond_9

    .line 94
    iget-wide v1, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v1, v2}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateBreak(J)V

    .line 95
    nop

    .line 96
    return-void

    .line 94
    :catchall_2f
    move-exception v1

    iget-wide v2, p0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v2, v3}, Landroid/tracing/perfetto/DataSource;->nativePerfettoDsTraceIterateBreak(J)V

    .line 95
    throw v1
.end method
