.class public Landroid/tracing/perfetto/TracingContext;
.super Ljava/lang/Object;
.source "TracingContext.java"


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
.field private final blacklist mDataSource:Landroid/tracing/perfetto/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/tracing/perfetto/DataSource<",
            "TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
        }
    .end annotation
.end field

.field private final blacklist mInstanceIndex:I

.field private final blacklist mTracePackets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/proto/ProtoOutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/tracing/perfetto/DataSource;I)V
    .registers 4
    .param p2, "instanceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/DataSource<",
            "TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;I)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    .local p1, "dataSource":Landroid/tracing/perfetto/DataSource;, "Landroid/tracing/perfetto/DataSource<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    .line 44
    iput-object p1, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    .line 45
    iput p2, p0, Landroid/tracing/perfetto/TracingContext;->mInstanceIndex:I

    .line 46
    return-void
.end method

.method private static native blacklist nativeGetCustomTls(J)Ljava/lang/Object;
.end method

.method private static native blacklist nativeGetIncrementalState(J)Ljava/lang/Object;
.end method

.method private static native blacklist nativeSetCustomTls(JLjava/lang/Object;)V
.end method

.method private static native blacklist nativeSetIncrementalState(JLjava/lang/Object;)V
.end method


# virtual methods
.method protected blacklist getAndClearAllPendingTracePackets()[[B
    .registers 5

    .line 100
    .local p0, "this":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    iget-object v0, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 101
    .local v0, "res":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 102
    iget-object v2, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/proto/ProtoOutputStream;

    .line 103
    .local v2, "tracePacket":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    aput-object v3, v0, v1

    .line 101
    .end local v2    # "tracePacket":Landroid/util/proto/ProtoOutputStream;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 106
    .end local v1    # "i":I
    :cond_22
    iget-object v1, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 107
    return-object v0
.end method

.method public blacklist getCustomTlsState()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTlsStateType;"
        }
    .end annotation

    .line 69
    .local p0, "this":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    iget-object v0, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget-wide v0, v0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v0, v1}, Landroid/tracing/perfetto/TracingContext;->nativeGetCustomTls(J)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "tlsState":Ljava/lang/Object;, "TTlsStateType;"
    if-nez v0, :cond_20

    .line 71
    new-instance v1, Landroid/tracing/perfetto/CreateTlsStateArgs;

    iget-object v2, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget v3, p0, Landroid/tracing/perfetto/TracingContext;->mInstanceIndex:I

    invoke-direct {v1, v2, v3}, Landroid/tracing/perfetto/CreateTlsStateArgs;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    .line 73
    .local v1, "args":Landroid/tracing/perfetto/CreateTlsStateArgs;, "Landroid/tracing/perfetto/CreateTlsStateArgs<TDataSourceInstanceType;>;"
    iget-object v2, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    invoke-virtual {v2, v1}, Landroid/tracing/perfetto/DataSource;->createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    iget-object v2, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget-wide v2, v2, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v2, v3, v0}, Landroid/tracing/perfetto/TracingContext;->nativeSetCustomTls(JLjava/lang/Object;)V

    .line 77
    .end local v1    # "args":Landroid/tracing/perfetto/CreateTlsStateArgs;, "Landroid/tracing/perfetto/CreateTlsStateArgs<TDataSourceInstanceType;>;"
    :cond_20
    return-object v0
.end method

.method public blacklist getIncrementalState()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIncrementalStateType;"
        }
    .end annotation

    .line 87
    .local p0, "this":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    iget-object v0, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget-wide v0, v0, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    .line 88
    invoke-static {v0, v1}, Landroid/tracing/perfetto/TracingContext;->nativeGetIncrementalState(J)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "incrementalState":Ljava/lang/Object;, "TIncrementalStateType;"
    if-nez v0, :cond_20

    .line 90
    new-instance v1, Landroid/tracing/perfetto/CreateIncrementalStateArgs;

    iget-object v2, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget v3, p0, Landroid/tracing/perfetto/TracingContext;->mInstanceIndex:I

    invoke-direct {v1, v2, v3}, Landroid/tracing/perfetto/CreateIncrementalStateArgs;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    .line 92
    .local v1, "args":Landroid/tracing/perfetto/CreateIncrementalStateArgs;, "Landroid/tracing/perfetto/CreateIncrementalStateArgs<TDataSourceInstanceType;>;"
    iget-object v2, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    invoke-virtual {v2, v1}, Landroid/tracing/perfetto/DataSource;->createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    iget-object v2, p0, Landroid/tracing/perfetto/TracingContext;->mDataSource:Landroid/tracing/perfetto/DataSource;

    iget-wide v2, v2, Landroid/tracing/perfetto/DataSource;->mNativeObj:J

    invoke-static {v2, v3, v0}, Landroid/tracing/perfetto/TracingContext;->nativeSetIncrementalState(JLjava/lang/Object;)V

    .line 96
    .end local v1    # "args":Landroid/tracing/perfetto/CreateIncrementalStateArgs;, "Landroid/tracing/perfetto/CreateIncrementalStateArgs<TDataSourceInstanceType;>;"
    :cond_20
    return-object v0
.end method

.method public blacklist newTracePacket()Landroid/util/proto/ProtoOutputStream;
    .registers 3

    .line 56
    .local p0, "this":Landroid/tracing/perfetto/TracingContext;, "Landroid/tracing/perfetto/TracingContext<TDataSourceInstanceType;TTlsStateType;TIncrementalStateType;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 57
    .local v0, "os":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Landroid/tracing/perfetto/TracingContext;->mTracePackets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-object v0
.end method
